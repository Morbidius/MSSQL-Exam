SELECT u.Username, AVG(f.Size) AS Size
FROM Commits AS c
JOIN Users u ON c.ContributorId = u.Id
JOIN Files f ON c.Id = f.CommitId
GROUP BY u.Username
ORDER BY Size DESC, u.Username
