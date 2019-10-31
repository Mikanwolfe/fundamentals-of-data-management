# Abstract of Database

### Topic

Kantai Collection Database

### Goal

Catalogue of all ships and equipment available

### Type

Hybrid (mostly table) to DB

### Source

en.kancollewiki.net

---

### Abstract

Kantai Collection (Kancolle) is a card-based (game) whereby players command and collect ships to fight against enemy NPCs and other players. Flexibility in database design for kantai collection lies in it's simple card-unit system where each ship is classified as a card with corresponding elements such as nationality, (e.g. UK), ship type (e.g. Battleship), and various other roles. This allows for queries such as the formal name of a ship (Battleship Queen Elizabethmay be returned as `Queen-Elizabeth Class Battleship, HMS Queen Elizabeth`) or various other designations. Queries can also involve ship type, nationality, compatible equipment, or the various statistics of the shipin simplified format.



