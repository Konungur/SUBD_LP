SELECT Planes.PlaneID AS Plane, PlaneModel, MAX(Planes.Capacity) AS Capacity
FROM PLanes
GROUP BY PlaneID, PLaneModel WITH ROLLUP;