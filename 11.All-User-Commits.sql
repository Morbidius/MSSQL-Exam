CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(MAX))
RETURNS INT
BEGIN
	DECLARE @Result INT  = (SELECT COUNT(*)
                        FROM Users AS u
						JOIN Commits c ON u.Id = c.ContributorId
						WHERE @username = u.Username)
	RETURN @Result 
END
