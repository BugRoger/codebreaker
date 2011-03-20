Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers. The game marks the guess
  with + and - signs.

  For each number in the guess that matches the number and position of a number
  in the secret code, the mark includes one +. For each number in the guess
  that matches the number but not the position of a number in the secret code,
  a - is added to the mark.

  Each position in the secret code can only be matched once. For example,
  a guess of 1134 against a secret code of 1234 would get three plus signs: one
  for each of the exact matches in the first, third and fourth positions. The
  number match in the second position would be ignored.

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
      | 1234 | 2555  | -    |

    Scenarios: 2 numbers correct
      | code | guess | mark |
      | 1234 | 1255  | ++   |
      | 1234 | 5135  | +-   |
      | 1234 | 5512  | --   |

    Scenarios: 3 numbers correct
      | code | guess | mark |
      | 1234 | 5234  | +++  |
      | 1234 | 5214  | ++-  |
      | 1234 | 1523  | +--  |
      | 1234 | 5123  | ---  |

    Scenarios: all numbers correct
      | code | guess | mark |
      | 1234 | 1234  | ++++ |
      | 1234 | 4231  | ++-- |
      | 1234 | 4213  | +--- |
      | 1234 | 4321  | ---- |

    Scenarios: matches with duplicates
      | code | guess | mark |
      | 1234 | 1155  | +    |
      | 1234 | 5115  | -    |
      | 1134 | 1155  | ++   |
      | 1134 | 1551  | +-   |
      | 1134 | 5511  | --   |
      | 1134 | 1115  | ++   |
      | 1134 | 5111  | +-   |

    
  Scenario Outline: guess is too short
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then I should see "Your guess is too short. Try again!" 
    But I should not see a mark 

    Scenarios: too short 
      | code | guess | 
      | 1234 |       |
      | 1234 | 1     |
      | 1234 | 12    | 
      | 1234 | 123   |

  Scenario: guess is too long 
    Given the secret code is "1234"
    When I guess "12345"
    Then I should see "Your guess is too long. Try again!"
    But I should not see a mark 

