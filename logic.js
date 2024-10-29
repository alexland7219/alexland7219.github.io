var session = pl.create()

session.consult("                   \
    % load lists module                          \
    :- use_module(library(lists)).               \
                                                 \
    % fruit/1                                    \
    fruit(apple). fruit(pear). fruit(banana).    \
                                                 \
    % fruits_in/2                                \
    fruits_in(Xs, X) :- member(X, Xs), fruit(X). \
", {
  success: function () {
    session.query("fruits_in([carrot, apple, banana, broccoli], X).", {
        success: function (goal) {
            session.answer({
                success: function (goal) {
                  console.log(goal); // {X/apple}
                  session.answer({
                    success: function (goal) {
                      console.log(goal); // {X/banana}
                    },
                    // error, fail, limit
                  });
                },
                error: function (err) {
                  /* Uncaught error */
                },
                fail: function () {
                  /* No more answers */
                },
                limit: function () {
                  /* Limit exceeded */
                },
              });        },
        error: function (err) {
          /* Error parsing goal */
        },
      });
      },
  error: function (err) {
    /* Error parsing program */
  },
});


