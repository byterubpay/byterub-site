---
tags: ["kovri"]
terms: ["Kovri"]
summary: "ByteRub's C++ router implementation of the I2P network"
---

{% include untranslated.html %}
### The Basics

[Kovri](https://gitlab.com/kovri-project/kovri/) is a C++ implementation of the @I2P network. @Kovri is currently in heavy, active development and not yet integrated with ByteRub. When Kovri is integrated into your ByteRub @node, your transactions will be more secure than ever before.

### In-depth information

Kovri will protect you and ByteRub from:

- @Node partitioning attacks
- Associations between a particular txid and your IP address
- Mining and/or running a node in highly adversarial environments
- Metadata leakage (e.g., @OpenAlias lookups)

...and much more.

Read [anonimal's FFS proposal](https://forum.getbyterub.org/9/work-in-progress/86967/anonimal-s-kovri-full-time-development-funding-thread) for more details and for reasoning behind the project. Also read the FAQ and User Guide in the [Kovri repository](https://gitlab.com/kovri-project/kovri/).

### @Kovri / @I2P Terminology

#### Client + API

- @Address-Book
- @Base32-address
- @Base64-address
- @Canonically-unique-host
- @Eepsite (@Hidden-Service, @Garlic-Site, @Garlic-Service)
- @I2PControl
- @Jump-Service
- @Locally-unique-host
- @Reseed
- @Subscription

#### Core + Router

- @Clearnet
- @Data-Directory
- @Destination
- @Encryption
- @Floodfill
- @Garlic-Encryption
- @Garlic-Routing
- @I2NP
- @In-net
- @Java-I2P
- @Layered-Encryption
- @Lease
- @LeaseSet
- @Message @Messages
- @NTCP
- @Network-Database
- @Router-Info
- @SSU
- @Transports
- @Tunnel
