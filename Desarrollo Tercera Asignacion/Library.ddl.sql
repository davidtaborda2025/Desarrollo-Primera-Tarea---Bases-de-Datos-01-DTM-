-- Tabla para Book
CREATE TABLE book (
    bookId INTEGER PRIMARY KEY,
    title VARCHAR(100),
    publiName INTEGER,
    FOREIGN KEY (publiName) REFERENCES publisher(publiName)
);

-- Tabla para AuthorName (atributo multivaluado de Book)
CREATE TABLE authorName (
    authorName VARCHAR (100) PRIMARY KEY,
    bookId INT,
    FOREIGN KEY (bookId) REFERENCES book(bookId)
);

-- Tabla para Publisher
CREATE TABLE publisher (
    publiName VARCHAR(100) PRIMARY KEY,
    address VARCHAR(100),
    phone VARCHAR(100)
);

-- Tabla para Borrower
CREATE TABLE borrower (
    cardNo INTEGER PRIMARY KEY,
    borrowerName VARCHAR(100),
    borrowAddress VARCHAR(100),
    borrowPhone VARCHAR(100)
);

-- Tabla para LibraryBranch
CREATE TABLE libraryBranch (
    branchId INTEGER PRIMARY KEY,
    branchName VARCHAR(100),
    branchAddress VARCHAR(100)
);

-- Tabla para la relación binaria "Book_Copies"
CREATE TABLE bookCopies (
    bookId INT,
    branchId INT,
    noOfCopies INT,
    PRIMARY KEY (bookId, branchId),
    FOREIGN KEY (bookId) REFERENCES book(bookId),
    FOREIGN KEY (branchId) REFERENCES libraryBranch(branchId)
);

-- Tabla para la relación ternaria "Book_Loans"
CREATE TABLE bookLoans (
    bookId INTEGER,
    branchId INTEGER,
    cardNo INTEGER,
    dateOut TIMESTAMP,
    dueDate TIMESTAMP,
    PRIMARY KEY (bookId, branchId, cardNo),
    FOREIGN KEY (bookId) REFERENCES book(bookId),
    FOREIGN KEY (branchId) REFERENCES libraryBranch(branchId),
    FOREIGN KEY (cardNo) REFERENCES borrower(cardNo)
);