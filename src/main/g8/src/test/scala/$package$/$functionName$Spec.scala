package $package$

import io.carpe.scalambda.testing.MockContext
import io.carpe.scalambda.testing.ScalambdaFixtures
import org.scalatest.FunSpec

class $functionName$Spec extends FunSpec with ScalambdaFixtures {

  describe("$functionName$") {

  	val testFunction: $functionName$ = new $functionName$()

    it ("should return a greeting") {
      val result = testFunction.handleRequest("World", MockContext.default)

      // check response is valid
      assert(result === "Hello, World!")
    }
  }
}
