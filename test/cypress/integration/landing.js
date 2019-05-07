describe("Landing page to sign up button", function() {
  before(function() {
    cy.app("clean");
    cy.app("seed");
  });

  it("Preview search for users", function() {
    cy.visit("/");
    cy.contains("Get started").click();
  });
});