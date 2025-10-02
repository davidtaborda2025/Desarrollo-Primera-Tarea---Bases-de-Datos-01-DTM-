-- Listar todos los libros junto con su editorial (publisher)
SELECT b.bookId, b.title, p.publiName, p.address
FROM book b
         JOIN publisher p ON b.publiName = p.publiName;

-- Mostrar los autores y los títulos de los libros que escribieron
SELECT a.authorName, b.title
FROM authorName a
         JOIN book b ON a.bookId = b.bookId;

-- Obtener la cantidad de copias disponibles por cada libro en cada sucursal
SELECT b.title, lb.branchName, bc.noOfCopies
FROM bookCopies bc
         JOIN book b ON bc.bookId = b.bookId
         JOIN libraryBranch lb ON bc.branchId = lb.branchId
ORDER BY lb.branchName, b.title;

-- Mostrar qué usuarios (borrower) tienen libros prestados actualmente y sus fechas de devolución
SELECT br.borrowerName, b.title, bl.dateOut, bl.dueDate
FROM bookLoans bl
         JOIN borrower br ON bl.cardNo = br.cardNo
         JOIN book b ON bl.bookId = b.bookId;

-- Contar cuántos libros presta cada sucursal
SELECT lb.branchName, COUNT(bl.bookId) AS totalLoans
FROM bookLoans bl
         JOIN libraryBranch lb ON bl.branchId = lb.branchId
GROUP BY lb.branchName
ORDER BY totalLoans DESC;

-- Listar los títulos de los libros junto con sus autores y la editorial
SELECT b.title, a.authorName, p.publiName
FROM book b
         JOIN authorName a ON b.bookId = a.bookId
         JOIN publisher p ON b.publiName = p.publiName;

-- Obtener todos los libros cuya fecha de devolución vence después del '2025-09-20'
SELECT b.title, br.borrowerName, bl.dueDate
FROM bookLoans bl
         JOIN book b ON bl.bookId = b.bookId
         JOIN borrower br ON bl.cardNo = br.cardNo
WHERE bl.dueDate > '2025-09-20'
ORDER BY bl.dueDate;
