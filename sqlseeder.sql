CREATE TABLE `projects` (
                            `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
                            `projectName` VARCHAR(255) NOT NULL,
                            `course` VARCHAR(255) NOT NULL,
                            `schoolYear` VARCHAR(255) NOT NULL,
                            `description` TEXT,
                            `presentationLink` VARCHAR(255)
);

INSERT INTO `projects` (
    `projectName`,
    `course`,
    `schoolYear`,
    `description`,
    `presentationLink`
) VALUES
      ('MLB Fan Experience Analysis', 'Advanced Programming with Python', 'Senior Spring',
       'Created visualizations based on data frames of MLB data including ticket price, food price, team performance, team attendance, and cost of living, to understand which baseball stadiums created the best deal for fans.',
       'https://docs.google.com/presentation/d/1gFo6kCNNZuNHwOJ0hgiKCxuuVJoKGnGd/edit?usp=sharing&ouid=117148083261331569677&rtpof=true&sd=true'
      ),
      ('Nordstrom Customer Segmentation', 'Data-Driven Marketing Decisions', 'Senior Spring',
       'Used SPSS to analyze thousands of customer purchases to create different segments based on Income, Number of Purchases, and Profitability. This data was used to demonstrate which segments were most profitable and how to target them best. Used Regression Analysis to determine if there were correlations between their Revenue, Number of Orders, and Age in order to target segments better.',
       'https://docs.google.com/presentation/d/104y3jaSXpsGnDStKjh27Mx66wbXfT9tc/edit?usp=sharing&ouid=117148083261331569677&rtpof=true&sd=true'
      ),
      ('SeekerPitch Marketing Campaign', 'Marketing Strategy', 'Senior Spring',
       'Created an extensive business plan for a new startup job board called SeekerPitch using primary and secondary research to create a successful marketing campaign.',
       'https://docs.google.com/presentation/d/1koqUE-4DiE8Cr0AlMpSObtunRq2P7H5e/edit?usp=sharing&ouid=117148083261331569677&rtpof=true&sd=true'
      ),
      ('Fordham Pizza Research', 'Marketing Analytics', 'Senior Fall',
       'Created a survey and used various analysis techniques such as Excel descriptive statistics and Python K-Means Clustering to understand purchasing behaviors for the two biggest pizza shops for Fordham students.',
       'https://docs.google.com/presentation/d/1iqjUYPcDD9kLO4d0Z6VEgy8DyPks4yJ3QD7c2qZudpg/edit?usp=sharing'
      ),
      ('Research on Donation Behaviors', 'Marketing Research', 'Senior Fall',
       'Created a survey and used SPSS analysis to understand different donation behaviors.',
       'https://www.canva.com/design/DAFRN_18Cgc/v-SOc92OzLuWH3fb_03Tog/view?utm_content=DAFRN_18Cgc&utm_campaign=share_your_design&utm_medium=link2&utm_source=shareyourdesignpanel'
      ),
      ('IKEA in Nigeria: Marketing Plan', 'Global Marketing', 'Junior Spring',
       'Created a marketing plan for the introduction of IKEA to a new market: Nigeria. Analyzed the background, market conditions, and competition of Nigeria. Created a target consumer, PITA calculation, radio/TV advertising gantt chart and budget to support our idea of pop-up stores in the capital of Lagos.',
       'https://docs.google.com/presentation/d/1Yx5u_08af6HobNA3sHd04qvJojZ7ueme/edit?usp=sharing&ouid=117148083261331569677&rtpof=true&sd=true'
      ),
      ('Case Study on LIDL', 'Global Consumer Behavior', 'Junior Spring',
       'Created a marketing plan for the introduction of LIDL to college campuses. Analyzed the background, market conditions, competition, and current problems of LIDL. Created “LIDL Local”, small-format stores that have all the essentials for college students. Used the principles learned in consumer behavior, such as consumer socialization and brand community to support our idea.',
       'https://docs.google.com/presentation/d/1_0s0wzAvKexMMeBhn_LmUCZwn9R33EEU/edit?usp=sharing&ouid=117148083261331569677&rtpof=true&sd=true'
      ),
      ('Consulting Cup Integrated Project', 'Business Communications', 'Sophomore Fall',
       'Analyzed Target Corporation’s operations and strategies, focusing on issues pertaining to ESG. Explored an operational issue and planned a solution that could add shareholder value to the company. Offered the solution in the form of a comprehensive 15-page written report and presentation. Presented our idea to a panel of industry professionals and was awarded fifth out of over one hundred teams.',
       'https://www.canva.com/design/DAFRN_18Cgc/v-SOc92OzLuWH3fb_03Tog/view?utm_content=DAFRN_18Cgc&utm_campaign=share_your_design&utm_medium=link2&utm_source=shareyourdesignpanel'
      );

CREATE TABLE `contacts` (
                            `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
                            `firstName` VARCHAR(255) NOT NULL,
                            `lastName` VARCHAR(255) NOT NULL,
                            `email` VARCHAR(255) NOT NULL,
                            `description` TEXT
);





