-- Insert into Dog table
INSERT INTO Dog (Name, Breed, Age, Special_Consideration, Age_Recommendation) 
VALUES 
    ('Buddy', 'Labrador', 5, 'Needs extra exercise', 'Best for active families'),
    ('Bella', 'Golden Retriever', 3, 'Sensitive to cold weather', 'Ideal for warm climates'),
    ('Max', 'Beagle', 4, 'Requires special diet', 'No restrictions'),
    ('Charlie', 'Bulldog', 2, 'Prone to breathing issues', 'Best for calm environments'),
    ('Lucy', 'Poodle', 6, 'Needs regular grooming', 'Best for experienced owners'),
    ('Rocky', 'German Shepherd', 3, 'Highly energetic', 'Best for active individuals'),
    ('Daisy', 'Shih Tzu', 4, 'Sensitive skin', 'Suitable for indoors'),
    ('Molly', 'Border Collie', 5, 'High intelligence, needs stimulation', 'Best for farms'),
    ('Coco', 'Cocker Spaniel', 7, 'Prone to ear infections', 'Good for families'),
    ('Rex', 'Doberman', 2, 'Needs careful handling', 'Best for experienced handlers');

-- Insert into Handler table
INSERT INTO Handler (First_Name, Last_Name, Phone, Email, Emergency_First_Name, Emergency_Last_Name, Emergency_Phone, Emergency_Email, Street_Number, Street_Name, Suburb, State_ID, Postcode)
VALUES 
    ('John', 'Doe', '61412345678', 'john.doe@example.com', 'Jane', 'Doe', '61487654321', 'jane.doe@example.com', 101, 'Main St', 'Albany', 1, 6330),
    ('Emily', 'Smith', '6145551234', 'emily.smith@example.com', 'Adam', 'Smith', '6141239876', 'adam.smith@example.com', 202, 'High St', 'Albany', 1, 6000),
    ('Michael', 'Brown', '61498765432', 'michael.brown@example.com', 'Sarah', 'Brown', '6143332211', 'sarah.brown@example.com', 305, 'King St', 'Albany', 2, 3000),
    ('Laura', 'Taylor', '61411223344', 'laura.taylor@example.com', 'Daniel', 'Taylor', '61455667788', 'daniel.taylor@example.com', 220, 'Pine St', 'Albany', 1, 6330),
    ('David', 'Wilson', '61499887766', 'david.wilson@example.com', 'Sophie', 'Wilson', '61422446688', 'sophie.wilson@example.com', 315, 'Oak St', 'Albany', 1, 6000),
    ('Sophia', 'Martinez', '6143339988', 'sophia.martinez@example.com', 'Carlos', 'Martinez', '6141234567', 'carlos.martinez@example.com', 155, 'Birch St', 'Albany', 1, 6330),
    ('Lucas', 'Lee', '6144441234', 'lucas.lee@example.com', 'Grace', 'Lee', '6149871234', 'grace.lee@example.com', 200, 'Cedar St', 'Albany', 2, 3000),
    ('Emma', 'Clark', '6143217890', 'emma.clark@example.com', 'Henry', 'Clark', '6146543210', 'henry.clark@example.com', 99, 'Ash St', 'Albany', 1, 6000),
    ('James', 'Turner', '6149877411', 'james.turner@example.com', 'Lily', 'Turner', '6148766554', 'lily.turner@example.com', 78, 'Willow St', 'Albany', 1, 6330),
    ('Olivia', 'Harris', '6145678901', 'olivia.harris@example.com', 'Noah', 'Harris', '6146789012', 'noah.harris@example.com', 55, 'Elm St', 'Albany', 1, 6330);
   
-- Insert into Veterinary_Detail table
INSERT INTO Veterinary_Detail (Vet_Name, Vet_Street_Number, Vet_Street_Name, Vet_Suburb, State_ID, Postcode, Vet_Phone)
VALUES 
    ('Albany Vet Clinic', 150, 'Vet St', 'Albany', 1, 6330, 61498765433),
    ('Albany Animal Hospital', 450, 'River St', 'Albany', 1, 6000, 61487654321),
    ('Albany Vet Services', 200, 'Elm St', 'Albany', 2, 3000, 61476543212),
    ('Albany Pet Care', 500, 'Forest St', 'Albany', 1, 6330, 61456789012),
    ('Albany Paws Clinic', 750, 'Coast St', 'Albany', 1, 6000, 61422334455),
    ('Albany Animal Wellness', 280, 'Mountain St', 'Albany', 1, 6330, 61455667788),
    ('Albany Vets Plus', 350, 'Bay St', 'Albany', 2, 3000, 61499887766),
    ('Albany Animal Hospital', 420, 'Seaside St', 'Albany', 1, 6000, 61411334455),
    ('Albany Veterinary Center', 290, 'Hill St', 'Albany', 1, 6330, 61444455666),
    ('Albany Vet Services', 320, 'Sunset St', 'Albany', 2, 3000, 61455566778);

-- Insert into Dog_Handler table
INSERT INTO Dog_Handler (Dog_ID, Handler_ID) 
VALUES 
    (1, 1),  -- Buddy with John Doe
    (2, 2),  -- Bella with Emily Smith
    (3, 3),  -- Max with Michael Brown
    (4, 4),  -- Charlie with Laura Taylor
    (5, 5),  -- Lucy with David Wilson
    (6, 6),  -- Rocky with Sophia Martinez
    (7, 7),  -- Daisy with Lucas Lee
    (8, 8),  -- Molly with Emma Clark
    (9, 9),  -- Coco with James Turner
    (10, 10); -- Rex with Olivia Harris

-- Insert into Dog_Vet table
INSERT INTO Dog_Vet (Dog_ID, Vet_ID) 
VALUES 
    (1, 1),  -- Buddy with Albany Vet Clinic
    (2, 2),  -- Bella with Albany Animal Hospital
    (3, 3),  -- Max with Albany Vet Services
    (4, 4),  -- Charlie with Albany Pet Care
    (5, 5),  -- Lucy with Albany Paws Clinic
    (6, 6),  -- Rocky with Albany Animal Wellness
    (7, 7),  -- Daisy with Albany Vets Plus
    (8, 8),  -- Molly with Albany Animal Hospital
    (9, 9),  -- Coco with Albany Veterinary Center
    (10, 10); -- Rex with Albany Vet Services

-- Insert into Incident table
INSERT INTO Incident (Incident_Date, Incident_Description) 
VALUES 
    ('2024-08-15', 'Minor injury while playing'),
    ('2024-09-10', 'Allergic reaction to food'),
    ('2024-09-05', 'Escaped from the yard, found 2 hours later'),
    ('2024-08-22', 'Sprained leg while running'),
    ('2024-07-30', 'Got overheated during a walk'),
    ('2024-06-15', 'Ear infection'),
    ('2024-05-10', 'Minor cut on paw'),
    ('2024-09-03', 'Vomiting after eating something bad'),
    ('2024-09-08', 'Slight limping, possible muscle strain'),
    ('2024-09-14', 'Lost and found by a neighbor');

-- Insert into Handler_Incident table
INSERT INTO Handler_Incident (Handler_ID, Incident_ID) 
VALUES 
    (1, 1),  -- John Doe with Incident 1
    (2, 2),  -- Emily Smith with Incident 2
    (3, 3),  -- Michael Brown with Incident 3
    (4, 4),  -- Laura Taylor with Incident 4
    (5, 5),  -- David Wilson with Incident 5
    (6, 6),  -- Sophia Martinez with Incident 6
    (7, 7),  -- Lucas Lee with Incident 7
    (8, 8),  -- Emma Clark with Incident 8
    (9, 9),  -- James Turner with Incident 9
    (10, 10); -- Olivia Harris with Incident 10

-- Insert into Dog_Incident table
INSERT INTO Dog_Incident (Dog_ID, Incident_ID) 
VALUES 
    (1, 1),  -- Buddy involved in Incident 1
	(2, 2),  -- Bella involved in Incident 2
	(3, 3),  -- Max involved in Incident 3
	(4, 4),  -- Charlie involved in Incident 4
	(5, 5),  -- Lucy involved in Incident 5
	(6, 6),  -- Rocky involved in Incident 6
	(7, 7),  -- Daisy involved in Incident 7
	(8, 8),  -- Molly involved in Incident 8
	(9, 9),  -- Coco involved in Incident 9
	(10, 10); -- Rex involved in Incident 10

-- Insert into Assessment table
INSERT INTO Assessment (Dog_ID, Date, Result_ID)
VALUES
    (1, '2023-08-01', 1),  -- Assessment for Buddy
    (2, '2022-09-02', 2),  -- Assessment for Bella
    (3, '2024-04-03', 1),  -- Assessment for Max
    (4, '2024-05-04', 1),  -- Assessment for Charlie
    (5, '2023-09-05', 2),  -- Assessment for Lucy
    (6, '2022-06-30', 1),  -- Corrected: Assessment for Rocky
    (7, '2023-07-14', 2),  -- Corrected: Assessment for Daisy
    (8, '2022-08-12', 1),  -- Assessment for Molly
    (9, '2021-09-16', 1),  -- Corrected: Assessment for Coco
    (10, '2023-10-29', 2); -- Assessment for Rex