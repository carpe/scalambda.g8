
# A [Giter8 template](http://www.foundweekends.org/giter8/Combined+Pages.html#Usage) for producing a Lambda Function (using scalambda). [For usage with sbt new](https://www.scala-sbt.org/1.x/docs/sbt-new-and-Templates.html) #

# To get started immediately: #

```bash
sbt --supershell=false new carpe/scalambda.g8
```

Execute the preceding `sbt` command wherever you want to start a new scala-sbt project.  **It will create a new folder in your active directory.** 

It will ask you four questions:

- `functionName` - _name of the Lambda Function class (use ClassCase)_
- `name` - _will be formatted to the correct type in necessary places (META-INF, packages, README...)_
- `organization` - _must be in the reverse-namespace format._ (example: `io.carpe`)
- `package` - _must be in the reverse-namespace format (will default to the last two fields intelligently.)_
- `awsregion` -  _AWS Region you'd like to deploy Lambda Function (only used in `terrafor/main.tf` file so it's easy to replace)._


## Requires: ##

- `sbt` 1.x or higher (or an older sbt with giter8 plugin configured)
- little-to-no [understanding of giter8 or sbt new](https://www.scala-sbt.org/1.x/docs/sbt-new-and-Templates.html)

## Roadmap

- Keep this baby up to date
