# WSO Dashboard
This dashboard is a responsive referee management system built to WSO brand standards for a coding assignment given by PSA. The remit for this task was to build a prototype of the WSO dashboard within a 2-hour window.

#### Tech Stack

- Rails 8
- Tailwind CSS 4 & daisyUI 5
- PostgreSQL
- Devise

#### Core Features

- A daisyUI drawer provides a persistent sidebar on desktop and a mobile-friendly toggle.

- Event tracking with dynamic color coded badges based on tournament level.

- Message notifications with "unread" indicators and relative timestamps.


- Visual analytics placeholders for PowerBI reporting with simple match statistics.

#### Technical Implementation

- Migrated from simple hashes on erb files to ActiveRecord models (User, Event, Message).


- Role-Based Enums provides support for referee, admin, and appraiser permissions.


- Add Custom CSS variables for WSO Navy (#09193D), Blue (#007DC5) and avenir font into the Tailwind theme.


- Logic moved to helpers and models; views are abstracted into partials.

#### Considerations
Due to the 2-hour remit and current resource availability, the following items were not implemented:

* **Brand Assets & UI:** The integration of official WSO brand packs and SVG logos, as they are not publicly available.
* **Data Integrity:** Implement Model validations and database constraints.
* **Advanced Filtering:** Add search and category filtering for the appointments table.
* **Interactive Features:** Replace static components, like "View Calendar" links with JS-driven events utilizing stimulus.
* **Automated Testing:** Integrate RSpec tests to validate referee workflows once CRUD actions are fully implemented.

#### Quick Start

Ensure you have **Ruby 3.3.5** and **PostgreSQL** installed, then run:

```bash
# Install dependencies
bundle install

# Setup database and seed
rails db:prepare

# Start the development server
./bin/dev
