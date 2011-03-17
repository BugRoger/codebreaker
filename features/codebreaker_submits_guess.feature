Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers. The game marks the guess with + and - signs.

  For each number in the guess that matches the number and position of a number in the secret code, the mark includes one +. For each number in the guess that matches the number but not the position of a number in the secret code, a - is added to the mark.

  Scenario Outline: submit guess 
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

    Scenarios: no matches
      | code | guess | mark |
      | 1234 | 5555  |      |

    Scenarios: 1 number correct
      | code | guess | mark |
      | 1234 | 1555  | +    |
      | 1234 | 5155  | -    |

    Scenarios: 2 numbers correct
      | code | guess | mark |
      | 1234 | 1255  | ++   |
      | 1234 | 1525  | +-   |
      | 1234 | 5512  | --   |

    Scenarios: 3 numbers correct
      | code | guess | mark |
      | 1234 | 5234  | +++  |
      | 1234 | 5251  | ++-  |
      | 1234 | 1523  | +--  |
      | 1234 | 5123  | ---  |

    Scenarios: all numbers correct
      | code | guess | mark |
      | 1234 | 1234  | ++++ |
      | 1234 | 4231  | ++-- |
      | 1234 | 4213  | +--- |
      | 1234 | 4321  | ---- |
