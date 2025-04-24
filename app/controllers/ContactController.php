<?php

namespace app\controllers;

use app\models\Contact;
use app\core\Controller;

class ContactController{

    public function validateContact($inputData) {
        $errors = [];
        $firstName = $inputData['firstName'];
        $lastName = $inputData['lastName'];
        $email = $inputData['email'];
        $description = $inputData['description'];

        if ($firstName) {
            $firstName = htmlspecialchars($firstName, ENT_QUOTES|ENT_HTML5, 'UTF-8', true);
            if (strlen($firstName) < 2) {
                $errors['tooShort'] = 'Please enter a valid first name.';
            }
        } else {
            $errors['needFirst'] = 'Please enter your first name.';
        }

        if ($lastName) {
            $lastName = htmlspecialchars($lastName, ENT_QUOTES|ENT_HTML5, 'UTF-8', true);
            if (strlen($lastName) < 2) {
                $errors['ltooShort'] = 'Please enter a valid last name.';
            }
        } else {
            $errors['needLast'] = 'Please enter your last name.';
        }

        if ($email) {
            $regex = '/^[^@\s]+@[^@\s]+\.[^@\s]+$/';
            if (!preg_match($regex, $email)) {
                $errors['invalidEmail'] = 'Please enter a valid email.';
            }
        } else {
            $errors['requiredEmail'] = 'Please enter a valid email';
        }

        if (count($errors)) {
            http_response_code(400);
            echo json_encode($errors);
            exit();
        }
        return [
            'firstName' => $firstName,
            'lastName' => $lastName,
            'email' => $email,
            'description' => $description,
        ];
    }

    public function saveContact()
    {
        $inputData = json_decode(file_get_contents('php://input'), true);
        if ($inputData === null) {
            http_response_code(400);
            echo json_encode(['error' => 'Invalid JSON input']);
            exit();
        }

        $validatedData = $this->validateContact($inputData);

        $contact = new Contact();
        $contact->saveContact($validatedData);

        http_response_code(200);
        echo json_encode([
            'success' => true
        ]);
        exit();
    }


    public function contactView()
    {
        include '../public/assets/views/main/contactsView.html';
        exit();
    }
}