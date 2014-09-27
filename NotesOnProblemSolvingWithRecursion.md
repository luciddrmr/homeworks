Solving Simple List-Based Programming Problems With Recursion
=============================================================

One might even call these the design patterns of simple list-based programming problems.

   * Figuring out what the data type of the desired result (do we want a list, a boolean, a string etc.
     returned at the end)?

   * Figuring out when we're done.  Have we processed all of our inputs?  If we're doing a recursive solution
     what's the base case, and how does the exhaustion of our inputs related to that base case?
     (Empty input could mean an error, or maybe it *is* a simple version of the problem we're trying to solve,
      which means we can use it as a base case.)

   * Are there other base cases, or simple versions of the problem that we immediately know the solution
     to and should eliminate as special cases in the code?  If so, what is their result?

   * When iterating/recursing, what is the "next case" we want to consider?  In recursion, how do we
     build the recursive call?  (In iterating, how do we set up all the variables for next time through the loop?)

   * Do we need to have multiple recursions (or nested loops)?

   * Do we need an entirely different problem solved first with its own interface / API?

     * We should experiment with sub-problems that may or may not relate merely to explore the problem space.

   * Do we actually need to "build" the solution in a separate recursion variable (separate loop counter, etc.)
     that isn't available, necessitating a helper function (loop variable)?

   * Are there any details or specifics about how we reduce our input each recursive (or iterative) step?

     For example, do we need to cons an element (modified) onto our new list output and make the cdr
     the recursion?  [i.e., tail recursion]

   
   * When you're stuck, maybe solve a narrower problem and examine its solution to see if it informs
     a solution for the main problem.
