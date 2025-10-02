-- Registros para la tabla Book
INSERT INTO book VALUES
    (11, 'A Brief History of Time', 'Bloomsbury'),
    (12, 'The Wheel of Time', 'Tor Books'),
    (13, 'Beloved', 'Vintage'),
    (14, 'Invisible Man', 'Anchor Books'),
    (15, 'Social Sciences Handbook', 'Sage Publications'),
    (16, 'Artificial Intelligence', 'MIT Press'),
    (17, 'Statistics for Engineers', 'Wiley'),
    (18, 'Philosophy of Science', 'Cambridge University Press'),
    (19, 'Economic Growth', 'Princeton University Press'),
    (20, 'Modern Sociology', 'Routledge');

-- Registros para la tabla AuthorName (atributo multivaluado de Book).
INSERT INTO authorName VALUES
    ('Stephen Hawking', 11),
    ('Robert Jordan', 12),
    ('Toni Morrison', 13),
    ('Ralph Ellison', 14),
    ('Anil Kumar', 15),
    ('Stuart Russell', 16),
    ('Douglas Montgomery', 17),
    ('Karl Popper', 18),
    ('Robert Barro', 19),
    ('Anthony Giddens', 20);

-- Registros para la tabla Publisher
INSERT INTO publisher VALUES
    ('Bloomsbury', 'London, UK', '321-654-987'),
    ('Tor Books', 'New York, USA', '432-765-098'),
    ('Vintage', 'Los Angeles, USA', '543-876-109'),
    ('Anchor Books', 'Chicago, USA', '654-987-210'),
    ('Sage Publications', 'New Delhi, India', '765-098-321'),
    ('MIT Press', 'Cambridge, USA', '876-109-432'),
    ('Wiley', 'Hoboken, USA', '987-210-543'),
    ('Cambridge University Press', 'Cambridge, UK', '098-321-654'),
    ('Princeton University Press', 'Princeton, USA', '109-432-765'),
    ('Routledge', 'London, UK', '210-543-876');

-- Registros para la tabla Borrower
INSERT INTO borrower VALUES
    (111, 'Laura Palmer', '101 Maple St', '111-333-555'),
    (112, 'Michael Scott', '202 Paper Ave', '222-444-666'),
    (113, 'Rachel Green', '303 Fashion Rd', '333-555-777'),
    (114, 'Ross Geller', '404 Dino St', '444-666-888'),
    (115, 'Monica Geller', '505 Clean Ln', '555-777-999'),
    (116, 'Chandler Bing', '606 Joke Dr', '666-888-000'),
    (117, 'Phoebe Buffay', '707 Music Ave', '777-999-111'),
    (118, 'Joey Tribbiani', '808 Acting St', '888-000-222'),
    (119, 'Sheldon Cooper', '909 Physics Rd', '999-111-333'),
    (120, 'Amy Farrah Fowler', '101 Neuro Blvd', '000-222-444');

-- Registros para la tabla LibraryBranch
INSERT INTO libraryBranch VALUES
    (11, 'Science Library', '808 Science Rd'),
    (12, 'Fantasy Branch', '909 Fantasy St'),
    (13, 'Literature Library', '101 Lit Ave'),
    (14, 'Philosophy Branch', '202 Thought Blvd'),
    (15, 'Research Library', '303 Study Ln'),
    (16, 'Engineering Branch', '404 Tech Dr'),
    (17, 'Mathematics Library', '505 Numbers Ave'),
    (18, 'Economics Branch', '606 Market Rd'),
    (19, 'Sociology Branch', '707 Society St'),
    (20, 'History Library', '808 Past Ln');

-- Registros para la tabla BookCopies (relación binaria N:M)
INSERT INTO bookCopies VALUES
    (11, 11, 6),
    (12, 12, 8),
    (13, 13, 4),
    (14, 14, 5),
    (15, 15, 7),
    (16, 16, 9),
    (17, 17, 3),
    (18, 18, 6),
    (19, 19, 8),
    (20, 20, 10);

-- Registros para la tabla BookLoans (relación ternaria N:M:A)
INSERT INTO bookLoans VALUES
    (111, 11, 11, '2025-09-11', '2025-09-25'),
    (112, 12, 12, '2025-09-12', '2025-09-26'),
    (113, 13, 13, '2025-09-13', '2025-09-27'),
    (114, 14, 14, '2025-09-14', '2025-09-28'),
    (115, 15, 15, '2025-09-15', '2025-09-29'),
    (116, 16, 16, '2025-09-16', '2025-09-30'),
    (117, 17, 17, '2025-09-17', '2025-10-01'),
    (118, 18, 18, '2025-09-18', '2025-10-02'),
    (119, 19, 19, '2025-09-19', '2025-10-03'),
    (120, 20, 20, '2025-09-20', '2025-10-04');