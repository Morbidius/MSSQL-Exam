CREATE PROC usp_SearchForFiles(@fileExtension VARCHAR(MAX))
AS

	SELECT Id, Name, CONCAT(Size, 'KB') AS  Size
	            FROM Files AS f
				WHERE f.Name LIKE '%' + @fileExtension + '%' 
				ORDER BY f.Id, f.Name, f.Size DESC
