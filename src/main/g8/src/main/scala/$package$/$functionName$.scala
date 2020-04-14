package $package$

import com.amazonaws.services.lambda.runtime.Context
import io.carpe.scalambda.Scalambda

class $functionName$ extends Scalambda[String, String] {

  override def handleRequest(input: String, context: Context): String = {
    "Hello, " + input + "!"
  }
}