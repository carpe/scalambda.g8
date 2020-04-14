import sbt._

ThisBuild / scalaVersion := "2.12.8"
ThisBuild / organization := "$organization$"
ThisBuild / scalacOptions ++= Seq("-unchecked", "-deprecation", "-feature")
ThisBuild / javacOptions ++= Seq("-source", "1.8", "-target", "1.8", "-Xlint")

lazy val $name$ = (project in file("."))
  .enablePlugins(ScalambdaPlugin)
  .settings(
    // this call enables Scalambda, and sets the class found at this path to be the handler
    scalambda("$organization$.$functionName$")
  )
