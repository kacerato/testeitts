.class public final Lorg/openjdk/tools/javac/resources/javac;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContents()[[Ljava/lang/Object;
    .locals 169

    const-string v0, "javac.err.bad.value.for.option"

    const-string v1, "bad value for {0} option: \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "javac.err.cannot.access.runtime.env"

    const-string v1, "cannot access runtime environment"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "javac.err.empty.A.argument"

    const-string v1, "-A requires an argument; use \'\'-Akey\'\' or \'\'-Akey=value\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "javac.err.error.writing.file"

    const-string v1, "error writing {0}; {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "javac.err.file.not.directory"

    const-string v1, "not a directory: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "javac.err.file.not.file"

    const-string v1, "not a file: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "javac.err.file.not.found"

    const-string v1, "file not found: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "javac.err.invalid.A.key"

    const-string v1, "key in annotation processor option \'\'{0}\'\' is not a dot-separated sequence of identifiers"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "javac.err.invalid.arg"

    const-string v1, "invalid argument: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "javac.err.invalid.flag"

    const-string v1, "invalid flag: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "javac.err.invalid.profile"

    const-string v1, "invalid profile: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "javac.err.invalid.source"

    const-string v1, "invalid source release: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "javac.err.invalid.target"

    const-string v1, "invalid target release: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "javac.err.no.source.files"

    const-string v1, "no source files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "javac.err.no.source.files.classes"

    const-string v1, "no source files or class names"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "javac.err.no.value.for.option"

    const-string v1, "no value for {0} option"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "javac.err.option.not.allowed.with.target"

    const-string v1, "option {0} not allowed with target {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "javac.err.option.too.many"

    const-string v1, "option {0} can only be specified once"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "javac.err.profile.bootclasspath.conflict"

    const-string v1, "profile and bootclasspath options cannot be used together"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "javac.err.release.bootclasspath.conflict"

    const-string v1, "option {0} cannot be used together with --release"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "javac.err.release.not.standard.file.manager"

    const-string v1, "--release option specified, but the provided JavaFileManager is not a StandardJavaFileManager."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "javac.err.repeated.value.for.patch.module"

    const-string v1, "--patch-module specified more than once for {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "javac.err.req.arg"

    const-string v1, "{0} requires an argument"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "javac.err.sourcepath.modulesourcepath.conflict"

    const-string v1, "cannot specify both --source-path and --module-source-path"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "javac.err.unmatched.quote"

    const-string v1, "unmatched quote in environment variable %s"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "javac.err.unsupported.release.version"

    const-string v1, "release version {0} not supported"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "javac.fullVersion"

    const-string v1, "{0} full version \"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "javac.msg.bug"

    const-string v1, "An exception has occurred in the compiler ({0}). Please file a bug against the Java compiler via the Java bug reporting page (http://bugreport.java.com) after checking the Bug Database (http://bugs.java.com) for duplicates. Include your program and the following diagnostic in your report. Thank you."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "javac.msg.io"

    const-string v1, "\n\nAn input/output error occurred.\nConsult the following stack trace for details.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "javac.msg.plugin.uncaught.exception"

    const-string v1, "\n\nA plugin threw an uncaught exception.\nConsult the following stack trace for details.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "javac.msg.proc.annotation.uncaught.exception"

    const-string v1, "\n\nAn annotation processor threw an uncaught exception.\nConsult the following stack trace for details.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "javac.msg.resource"

    const-string v1, "\n\nThe system is out of resources.\nConsult the following stack trace for details.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "javac.msg.usage"

    const-string v1, "Usage: {0} <options> <source files>\nuse --help for a list of possible options"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "javac.msg.usage.header"

    const-string v1, "Usage: {0} <options> <source files>\nwhere possible options include:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "javac.msg.usage.nonstandard.footer"

    const-string v1, "These extra options are subject to change without notice."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "javac.opt.A"

    const-string v1, "Options to pass to annotation processors"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "javac.opt.AT"

    const-string v1, "Read options and filenames from file"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "javac.opt.J"

    const-string v1, "Pass <flag> directly to the runtime system"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "javac.opt.Werror"

    const-string v1, "Terminate compilation if warnings occur"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "javac.opt.X"

    const-string v1, "Print help on extra options"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "javac.opt.Xbootclasspath.a"

    const-string v1, "Append to the bootstrap class path"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "javac.opt.Xbootclasspath.p"

    const-string v1, "Prepend to the bootstrap class path"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "javac.opt.Xdoclint"

    const-string v1, "Enable recommended checks for problems in javadoc comments"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "javac.opt.Xdoclint.custom"

    const-string v1, "Enable or disable specific checks for problems in javadoc comments,\nwhere <group> is one of accessibility, html, missing, reference, or syntax,\nand <access> is one of public, protected, package, or private."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "javac.opt.Xdoclint.package.args"

    const-string v1, "[-]<packages>(,[-]<package>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "javac.opt.Xdoclint.package.desc"

    const-string v1, "Enable or disable checks in specific packages. Each <package> is either the\nqualified name of a package or a package name prefix followed by \'.*\', which\nexpands to all sub-packages of the given package. Each <package> can be prefixed\nwith \'-\' to disable checks for the specified package or packages."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "javac.opt.Xdoclint.subopts"

    const-string v1, "(all|none|[-]<group>)[/<access>]"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "javac.opt.Xlint"

    const-string v1, "Enable recommended warnings"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "javac.opt.Xlint.all"

    const-string v1, "Enable all warnings"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "javac.opt.Xlint.custom"

    const-string v1, "Warnings to enable or disable, separated by comma.\nPrecede a key by \'-\' to disable the specified warning.\nSupported keys are:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "javac.opt.Xlint.desc.auxiliaryclass"

    const-string v1, "Warn about an auxiliary class that is hidden in a source file, and is used from other files."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "javac.opt.Xlint.desc.cast"

    const-string v1, "Warn about use of unnecessary casts."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "javac.opt.Xlint.desc.classfile"

    const-string v1, "Warn about issues related to classfile contents."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "javac.opt.Xlint.desc.dep-ann"

    const-string v1, "Warn about items marked as deprecated in JavaDoc but not using the @Deprecated annotation."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "javac.opt.Xlint.desc.deprecation"

    const-string v1, "Warn about use of deprecated items."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "javac.opt.Xlint.desc.divzero"

    const-string v1, "Warn about division by constant integer 0."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "javac.opt.Xlint.desc.empty"

    const-string v1, "Warn about empty statement after if."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "javac.opt.Xlint.desc.exports"

    const-string v1, "Warn about issues regarding module exports."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "javac.opt.Xlint.desc.fallthrough"

    const-string v1, "Warn about falling through from one case of a switch statement to the next."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v60

    const-string v0, "javac.opt.Xlint.desc.finally"

    const-string v1, "Warn about finally clauses that do not terminate normally."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v61

    const-string v0, "javac.opt.Xlint.desc.module"

    const-string v1, "Warn about module system related issues."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v62

    const-string v0, "javac.opt.Xlint.desc.opens"

    const-string v1, "Warn about issues regarding module opens."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v63

    const-string v0, "javac.opt.Xlint.desc.options"

    const-string v1, "Warn about issues relating to use of command line options."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v64

    const-string v0, "javac.opt.Xlint.desc.overloads"

    const-string v1, "Warn about issues regarding method overloads."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v65

    const-string v0, "javac.opt.Xlint.desc.overrides"

    const-string v1, "Warn about issues regarding method overrides."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v66

    const-string v0, "javac.opt.Xlint.desc.path"

    const-string v1, "Warn about invalid path elements on the command line."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v67

    const-string v0, "javac.opt.Xlint.desc.processing"

    const-string v1, "Warn about issues regarding annotation processing."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v68

    const-string v0, "javac.opt.Xlint.desc.rawtypes"

    const-string v1, "Warn about use of raw types."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v69

    const-string v0, "javac.opt.Xlint.desc.removal"

    const-string v1, "Warn about use of API that has been marked for removal."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v70

    const-string v0, "javac.opt.Xlint.desc.requires-automatic"

    const-string v1, "Warn about use of automatic modules in the requires clauses."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v71

    const-string v0, "javac.opt.Xlint.desc.requires-transitive-automatic"

    const-string v1, "Warn about automatic modules in requires transitive."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v72

    const-string v0, "javac.opt.Xlint.desc.serial"

    const-string v1, "Warn about Serializable classes that do not provide a serial version ID. \n                             Also warn about access to non-public members from a serializable element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v73

    const-string v0, "javac.opt.Xlint.desc.static"

    const-string v1, "Warn about accessing a static member using an instance."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v74

    const-string v0, "javac.opt.Xlint.desc.try"

    const-string v1, "Warn about issues relating to use of try blocks (i.e. try-with-resources)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v75

    const-string v0, "javac.opt.Xlint.desc.unchecked"

    const-string v1, "Warn about unchecked operations."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v76

    const-string v0, "javac.opt.Xlint.desc.varargs"

    const-string v1, "Warn about potentially unsafe vararg methods"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v77

    const-string v0, "javac.opt.Xlint.none"

    const-string v1, "Disable all warnings"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v78

    const-string v0, "javac.opt.Xstdout"

    const-string v1, "Redirect standard output"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v79

    const-string v0, "javac.opt.addExports"

    const-string v1, "Specify a package to be considered as exported from its defining module\nto additional modules, or to all unnamed modules if <other-module> is ALL-UNNAMED."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v80

    const-string v0, "javac.opt.addReads"

    const-string v1, "Specify additional modules to be considered as required by a given module.\n<other-module> may be ALL-UNNAMED to require the unnamed module."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v81

    const-string v0, "javac.opt.addmods"

    const-string v1, "Root modules to resolve in addition to the initial modules, or all modules\non the module path if <module> is ALL-MODULE-PATH."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v82

    const-string v0, "javac.opt.arg.Xlint"

    const-string v1, "<key>(,<key>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v83

    const-string v0, "javac.opt.arg.addExports"

    const-string v1, "<module>/<package>=<other-module>(,<other-module>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v84

    const-string v0, "javac.opt.arg.addReads"

    const-string v1, "<module>=<other-module>(,<other-module>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v85

    const-string v0, "javac.opt.arg.addmods"

    const-string v1, "<module>(,<module>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v86

    const-string v0, "javac.opt.arg.class"

    move-object/from16 v167, v2

    const-string v2, "<class>"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v87

    const-string v0, "javac.opt.arg.class.list"

    const-string v2, "<class1>[,<class2>,<class3>...]"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v88

    const-string v0, "javac.opt.arg.default.module.for.created.files"

    const-string v2, "<module-name>"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v89

    const-string v0, "javac.opt.arg.directory"

    move-object/from16 v168, v3

    const-string v3, "<directory>"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v90

    const-string v0, "javac.opt.arg.dirs"

    const-string v3, "<dirs>"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v91

    const-string v0, "javac.opt.arg.encoding"

    const-string v3, "<encoding>"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v92

    const-string v0, "javac.opt.arg.file"

    const-string v3, "<filename>"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v93

    const-string v0, "javac.opt.arg.flag"

    const-string v3, "<flag>"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v94

    const-string v0, "javac.opt.arg.jdk"

    const-string v3, "<jdk>|none"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v95

    const-string v0, "javac.opt.arg.key.equals.value"

    const-string v3, "key[=value]"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v96

    const-string v0, "javac.opt.arg.limitmods"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v97

    const-string v0, "javac.opt.arg.m"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v98

    const-string v0, "javac.opt.arg.module.version"

    const-string v1, "<version>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v99

    const-string v0, "javac.opt.arg.mspath"

    const-string v1, "<module-source-path>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v100

    const-string v0, "javac.opt.arg.multi-release"

    const-string v1, "<release>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v101

    const-string v0, "javac.opt.arg.number"

    const-string v2, "<number>"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v102

    const-string v0, "javac.opt.arg.patch"

    const-string v2, "<module>=<file>(:<file>)*"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v103

    const-string v0, "javac.opt.arg.path"

    const-string v2, "<path>"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v104

    const-string v0, "javac.opt.arg.pathname"

    const-string v2, "<pathname>"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v105

    const-string v0, "javac.opt.arg.plugin"

    const-string v2, "\"name args\""

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v106

    const-string v0, "javac.opt.arg.profile"

    const-string v2, "<profile>"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v107

    const-string v0, "javac.opt.arg.release"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v108

    const-string v0, "javac.opt.bootclasspath"

    const-string v1, "Override location of bootstrap class files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v109

    const-string v0, "javac.opt.classpath"

    const-string v1, "Specify where to find user class files and annotation processors"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v110

    const-string v0, "javac.opt.d"

    const-string v1, "Specify where to place generated class files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v111

    const-string v0, "javac.opt.default.module.for.created.files"

    const-string v1, "Fallback target module for files created by annotation processors, if none specified or inferred."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v112

    const-string v0, "javac.opt.deprecation"

    const-string v1, "Output source locations where deprecated APIs are used"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v113

    const-string v0, "javac.opt.diags"

    const-string v1, "Select a diagnostic mode"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v114

    const-string v0, "javac.opt.doclint.format"

    const-string v1, "Specify the format for documentation comments"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v115

    const-string v0, "javac.opt.encoding"

    const-string v1, "Specify character encoding used by source files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v116

    const-string v0, "javac.opt.endorseddirs"

    const-string v1, "Override location of endorsed standards path"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v117

    const-string v0, "javac.opt.extdirs"

    const-string v1, "Override location of installed extensions"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v118

    const-string v0, "javac.opt.g"

    const-string v1, "Generate all debugging info"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v119

    const-string v0, "javac.opt.g.lines.vars.source"

    const-string v1, "Generate only some debugging info"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v120

    const-string v0, "javac.opt.g.none"

    const-string v1, "Generate no debugging info"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v121

    const-string v0, "javac.opt.headerDest"

    const-string v1, "Specify where to place generated native header files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v122

    const-string v0, "javac.opt.help"

    const-string v1, "Print this help message"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v123

    const-string v0, "javac.opt.implicit"

    const-string v1, "Specify whether or not to generate class files for implicitly referenced files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v124

    const-string v0, "javac.opt.inherit_runtime_environment"

    const-string v1, "Inherit module system configuration options from the runtime environment."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v125

    const-string v0, "javac.opt.limitmods"

    const-string v1, "Limit the universe of observable modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v126

    const-string v0, "javac.opt.m"

    const-string v1, "Compile only the specified module, check timestamps"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v127

    const-string v0, "javac.opt.maxerrs"

    const-string v1, "Set the maximum number of errors to print"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v128

    const-string v0, "javac.opt.maxwarns"

    const-string v1, "Set the maximum number of warnings to print"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v129

    const-string v0, "javac.opt.module.version"

    const-string v1, "Specify version of modules that are being compiled"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v130

    const-string v0, "javac.opt.modulepath"

    const-string v1, "Specify where to find application modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v131

    const-string v0, "javac.opt.modulesourcepath"

    const-string v1, "Specify where to find input source files for multiple modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v132

    const-string v0, "javac.opt.moreinfo"

    const-string v1, "Print extended information for type variables"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v133

    const-string v0, "javac.opt.multi-release"

    const-string v1, "Specify which release to use in multi-release jars"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v134

    const-string v0, "javac.opt.nogj"

    const-string v1, "Don\'t accept generics in the language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v135

    const-string v0, "javac.opt.nowarn"

    const-string v1, "Generate no warnings"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v136

    const-string v0, "javac.opt.parameters"

    const-string v1, "Generate metadata for reflection on method parameters"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v137

    const-string v0, "javac.opt.patch"

    const-string v1, "Override or augment a module with classes and resources\nin JAR files or directories"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v138

    const-string v0, "javac.opt.pkginfo"

    const-string v1, "Specify handling of package-info files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v139

    const-string v0, "javac.opt.plugin"

    const-string v1, "Name and optional arguments for a plug-in to be run"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v140

    const-string v0, "javac.opt.prefer"

    const-string v1, "Specify which file to read when both a source file and class file are found for an implicitly compiled class"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v141

    const-string v0, "javac.opt.print"

    const-string v1, "Print out a textual representation of specified types"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v142

    const-string v0, "javac.opt.printProcessorInfo"

    const-string v1, "Print information about which annotations a processor is asked to process"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v143

    const-string v0, "javac.opt.printRounds"

    const-string v1, "Print information about rounds of annotation processing"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v144

    const-string v0, "javac.opt.printsearch"

    const-string v1, "Print information where classfiles are searched"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v145

    const-string v0, "javac.opt.proc.none.only"

    const-string v1, "Control whether annotation processing and/or compilation is done."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v146

    const-string v0, "javac.opt.processor"

    const-string v1, "Names of the annotation processors to run; bypasses default discovery process"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v147

    const-string v0, "javac.opt.processormodulepath"

    const-string v1, "Specify a module path where to find annotation processors"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v148

    const-string v0, "javac.opt.processorpath"

    const-string v1, "Specify where to find annotation processors"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v149

    const-string v0, "javac.opt.profile"

    const-string v1, "Check that API used is available in the specified profile"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v150

    const-string v0, "javac.opt.prompt"

    const-string v1, "Stop after each error"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v151

    const-string v0, "javac.opt.release"

    const-string v1, "Compile for a specific VM version. Supported targets: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v152

    const-string v0, "javac.opt.s"

    const-string v1, "Emit java sources instead of classfiles"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v153

    const-string v0, "javac.opt.source"

    const-string v1, "Provide source compatibility with specified release"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v154

    const-string v0, "javac.opt.sourceDest"

    const-string v1, "Specify where to place generated source files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v155

    const-string v0, "javac.opt.sourcepath"

    const-string v1, "Specify where to find input source files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v156

    const-string v0, "javac.opt.system"

    const-string v1, "Override location of system modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v157

    const-string v0, "javac.opt.target"

    const-string v1, "Generate class files for specific VM version"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v158

    const-string v0, "javac.opt.upgrademodulepath"

    const-string v1, "Override location of upgradeable modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v159

    const-string v0, "javac.opt.userpathsfirst"

    const-string v1, "Search classpath and sourcepath for classes before the bootclasspath instead of after"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v160

    const-string v0, "javac.opt.verbose"

    const-string v1, "Output messages about what the compiler is doing"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v161

    const-string v0, "javac.opt.version"

    const-string v1, "Version information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v162

    const-string v0, "javac.version"

    const-string v1, "{0} {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v163

    const-string v0, "javac.warn.profile.target.conflict"

    const-string v1, "profile {0} is not valid for target release {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v164

    const-string v0, "javac.warn.source.target.conflict"

    const-string v1, "source release {0} requires target release {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v165

    const-string v0, "javac.warn.target.default.source.conflict"

    const-string v1, "target release {0} conflicts with default source release {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v166

    move-object/from16 v2, v167

    move-object/from16 v3, v168

    filled-new-array/range {v2 .. v166}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
