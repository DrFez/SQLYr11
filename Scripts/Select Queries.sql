-- 1. Query to get a list of dogs and their handlers, sorted by dog name
SELECT Dog.Name AS DogName, Handler.First_Name AS HandlerFirstName, Handler.Last_Name AS HandlerLastName
FROM Dog
INNER JOIN Dog_Handler ON Dog.Dog_ID = Dog_Handler.Dog_ID
INNER JOIN Handler ON Handler.Handler_ID = Dog_Handler.Handler_ID
ORDER BY Dog.Name;

-- 2. Query to count how many dogs are of each breed, ordered by count descending
SELECT Breed, COUNT(*) AS DogCount
FROM Dog
GROUP BY Breed
ORDER BY DogCount DESC;

-- 3. Query to list incidents and the dogs involved, ordered by incident date descending
SELECT Dog.Name AS DogName, Incident.Incident_Description, Incident.Incident_Date
FROM Dog
INNER JOIN Dog_Incident ON Dog.Dog_ID = Dog_Incident.Dog_ID
INNER JOIN Incident ON Dog_Incident.Incident_ID = Incident.Incident_ID
ORDER BY Incident.Incident_Date DESC;

-- 4. Query to find the maximum age of dogs by breed
SELECT Breed, MAX(Age) AS MaxAge
FROM Dog
GROUP BY Breed;

-- 5. Query to find the average age of all dogs
SELECT AVG(Age) AS AverageDogAge
FROM Dog;

-- 6. Query to list handlers living in a specific suburb (e.g., 'Albany'), ordered by last name
SELECT First_Name, Last_Name, Suburb
FROM Handler
WHERE Suburb = 'Albany'
ORDER BY Last_Name;

-- 7. Query to list all dogs and their vet details
-- Assumes there is a Dog_Vet table that links dogs and vets
SELECT Dog.Name AS DogName, Veterinary_Detail.Vet_Name, Veterinary_Detail.Vet_Phone
FROM Dog
INNER JOIN Dog_Vet ON Dog.Dog_ID = Dog_Vet.Dog_ID
INNER JOIN Veterinary_Detail ON Dog_Vet.Vet_ID = Veterinary_Detail.Vet_ID;

-- 8. Query to list handlers and the number of incidents their dogs were involved in, ordered by incident count descending
SELECT Handler.First_Name, Handler.Last_Name, COUNT(Dog_Incident.Incident_ID) AS IncidentCount
FROM Handler
INNER JOIN Dog_Handler ON Handler.Handler_ID = Dog_Handler.Handler_ID
INNER JOIN Dog_Incident ON Dog_Handler.Dog_ID = Dog_Incident.Dog_ID
GROUP BY Handler.Handler_ID
ORDER BY IncidentCount DESC;

-- 9. Query to list all dogs along with their handlers and their most recent assessment results

SELECT Dog.Name AS DogName, Handler.First_Name, Handler.Last_Name, Assessment.Date AS AssessmentDate, Assessment.Result_ID
FROM Dog
INNER JOIN Dog_Handler ON Dog.Dog_ID = Dog_Handler.Dog_ID
INNER JOIN Handler ON Handler.Handler_ID = Dog_Handler.Handler_ID
INNER JOIN Assessment ON Dog.Dog_ID = Assessment.Dog_ID
ORDER BY Assessment.Date DESC;

-- 10. Query to list the total number of dogs and the total number of incidents
SELECT 
    (SELECT COUNT(*) FROM Dog) AS TotalDogs,
    (SELECT COUNT(*) FROM Incident) AS TotalIncidents;

-- 11. Query to find dogs in a specific suburb and older than a certain age (e.g., older than 5), ordered by dog name
SELECT Dog.Name, Dog.Age, Handler.Suburb
FROM Dog
INNER JOIN Dog_Handler ON Dog.Dog_ID = Dog_Handler.Dog_ID
INNER JOIN Handler ON Dog_Handler.Handler_ID = Handler.Handler_ID
WHERE Handler.Suburb = 'Albany' AND Dog.Age > 5
ORDER BY Dog.Name;

-- 12. Query to find dogs that are either of breed 'Labrador' or 'Golden Retriever', ordered by breed
SELECT Dog.Name, Dog.Breed
FROM Dog
WHERE Dog.Breed = 'Labrador' OR Dog.Breed = 'Golden Retriever'
ORDER BY Dog.Breed;

-- 13. Query to find dogs that do not belong to the 'Poodle' breed, ordered by breed
SELECT Dog.Name, Dog.Breed
FROM Dog
WHERE NOT Dog.Breed = 'Poodle'
ORDER BY Dog.Breed;

-- 14. Query to find handlers living in 'Albany' or with more than 2 dogs, ordered by last name
SELECT Handler.First_Name, Handler.Last_Name, Handler.Suburb, COUNT(Dog_Handler.Dog_ID) AS DogCount
FROM Handler
INNER JOIN Dog_Handler ON Handler.Handler_ID = Dog_Handler.Handler_ID
GROUP BY Handler.Handler_ID
HAVING Handler.Suburb = 'Albany' OR COUNT(Dog_Handler.Dog_ID) > 2
ORDER BY Handler.Last_Name;

-- 15. Query to find incidents in the last year involving dogs aged less than 5 years, ordered by incident date descending
SELECT Dog.Name, Incident.Incident_Description, Incident.Incident_Date
FROM Dog
INNER JOIN Dog_Incident ON Dog.Dog_ID = Dog_Incident.Dog_ID
INNER JOIN Incident ON Dog_Incident.Incident_ID = Incident.Incident_ID
WHERE Incident.Incident_Date >= DATE('now', '-1 year') AND Dog.Age < 5
ORDER BY Incident.Incident_Date DESC;

-- 16. Query to find handlers not in 'Albany' but with more than 2 incidents, ordered by incident count descending
SELECT Handler.First_Name, Handler.Last_Name, COUNT(Dog_Incident.Incident_ID) AS IncidentCount
FROM Handler
INNER JOIN Dog_Handler ON Handler.Handler_ID = Dog_Handler.Handler_ID
INNER JOIN Dog_Incident ON Dog_Handler.Dog_ID = Dog_Incident.Dog_ID
GROUP BY Handler.Handler_ID
HAVING NOT Handler.Suburb = 'Albany' AND COUNT(Dog_Incident.Incident_ID) > 2
ORDER BY IncidentCount DESC;
