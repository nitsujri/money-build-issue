# To Run

1. Launch console: `bundle exec rails c`
1. Run example: `User.run_example`

# Output

- ">>>> Set during build: 222.00 expected 222.0"
- ">>>> Set after build: 333.00 expected 333.00"
- ">>>> Set during build: 0.00 expected 222.0" - An associated model holds currency
- ">>>> Set after build: 333.00 expected 333.00"