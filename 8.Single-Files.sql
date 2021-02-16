SELECT f1.Id, f1.Name, CONCAT(f1.Size, 'KB')
FROM Files AS f1
LEFT JOIN Files f2 ON f1.Id = f2.ParentId
WHERE f2.Id IS NULL
ORDER BY f1.Id, f1.Name, f1.Size 
