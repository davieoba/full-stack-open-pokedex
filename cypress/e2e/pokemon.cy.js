describe('Pokedex', () => {
  it('loads the front page', () => {
    cy.visit('http://localhost:5000')
    cy.contains('ivysaur')
    cy.contains('Pokémon and Pokémon character names are trademarks of Nintendo.')
  })

  it('navigates to another page', () => {
    cy.visit('http://localhost:5000/pokemon/ivysaur')
  })
})

/**
 * describe('Pokedex', () => {
  it('loads the front page', () => {
    cy.visit('http://localhost:8080')
    cy.contains('ivysaur')
    cy.contains('Pokémon and Pokémon character names are trademarks of Nintendo.')
  })

  it('navigates to another page', () => {
    cy.visit('http://localhost:8080/pokemon/ivysaur')
  })
})
 */