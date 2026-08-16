.class public final Lorg/openjdk/tools/javah/resources/l10n;
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
    .locals 57

    const-string v0, "at.args.cant.read"

    const-string v1, "Can\'\'t read command line arguments from file {1}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "at.args.file.not.found"

    const-string v1, "Can\'\'t find file {0}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "at.args.io.exception"

    const-string v1, "The following I/O problem was encountered when processing an @ argument on the command line: {0}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "bad.arg"

    const-string v1, "Bad argument: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "cant.create.dir"

    const-string v1, "The directory {0} could not be create for output."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "class.not.found"

    const-string v1, "Class {0} could not be found."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "dir.file.mixed"

    const-string v1, "Can\'\'t mix options -d and -o.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "encoding.iso8859_1.not.found"

    const-string v1, "ISO8859_1 converter was not found for output.  This is probably due to an error in the installation installation."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "err.cant.use.option.for.fm"

    const-string v1, "Can\'t use {0} option with given file manager"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "err.internal.error"

    const-string v1, "Internal error: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "err.ioerror"

    const-string v1, "IO error: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "err.missing.arg"

    const-string v1, "value missing for {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "err.no.classes.specified"

    const-string v1, "no classes specified"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "err.prefix"

    const-string v1, "Error:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "err.unknown.option"

    const-string v1, "unknown option: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "invalid.method.signature"

    const-string v1, "Invalid method signature: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "io.exception"

    const-string v1, "Can\'\'t recover from an I/O error with the following message: {0}."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "javah.fullVersion"

    const-string v1, "{0} full version \"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "javah.misc.Deprecation"

    const-string v1, "\nWarning: The javah tool is planned to be removed in the next major\nJDK release. The tool has been superseded by the \'\'-h\'\' option added\nto javac in JDK 8. Users are recommended to migrate to using the\njavac \'\'-h\'\' option; see the javac man page for more information.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "javah.version"

    const-string v1, "{0} version \"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "jni.llni.mixed"

    const-string v1, "Can\'\'t mix options -jni and -llni.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "jni.no.stubs"

    const-string v1, "JNI does not require stubs, please refer to the JNI documentation."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "jni.sigerror"

    const-string v1, "Cannot determine signature for {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "jni.unknown.type"

    const-string v1, "An unknown type encountered (JNI)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "main.opt.bootclasspath"

    const-string v1, "  -bootclasspath <path>        Path from which to load bootstrap classes"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "main.opt.class_path"

    const-string v1, "  --class-path <path>          Path from which to load classes"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "main.opt.classpath"

    const-string v1, "  -classpath <path>            Path from which to load classes"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "main.opt.cp"

    const-string v1, "  -cp <path>                   Path from which to load classes"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "main.opt.d"

    const-string v1, "  -d <dir>                     Output directory"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "main.opt.force"

    const-string v1, "  -force                       Always write output files"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "main.opt.h"

    const-string v1, "  -h  --help  -?               Print this message"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "main.opt.jni"

    const-string v1, "  -jni                         Generate JNI-style header file (default)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "main.opt.module_path"

    const-string v1, "  --module-path <path>         Path from which to load application modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "main.opt.o"

    const-string v1, "  -o <file>                    Output file (only one of -d or -o may be used)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "main.opt.system"

    const-string v1, "  --system <jdk>               Specify where to find system modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "main.opt.upgrade_module_path"

    const-string v1, "  --upgrade_module-path <path> Path from which to load application modules"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "main.opt.v"

    const-string v1, "  -v  -verbose                 Enable verbose output"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "main.opt.version"

    const-string v1, "  -version                     Print version information"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "main.usage"

    const-string v1, "Usage: \n  javah [options] <classes>\nwhere [options] include:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "main.usage.foot"

    const-string v1, "\nGNU-style options may use \'=\' instead whitespace to separate the name of an option\nfrom its value.\n\nEach class must be specified by its fully qualified names, optionally\nprefixed by a module name followed by \'/\'. Examples:\n    java.lang.Object\n    java.base/java.io.File\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "no.bootclasspath.specified"

    const-string v1, "No bootclasspath was specified on the command line.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "no.classes.specified"

    const-string v1, "No classes were specified on the command line.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "no.classpath.specified"

    const-string v1, "No classpath was specified on the command line.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "no.outputdir.specified"

    const-string v1, "No output directory was specified on the command line.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "no.outputfile.specified"

    const-string v1, "No outputfile was specified on the command line.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "old.jni.mixed"

    const-string v1, "Can\'\'t mix options -jni and -old.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "old.llni.mixed"

    const-string v1, "Can\'\'t mix options -old and -llni.  Try -help."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "old.not.supported"

    const-string v1, "Option -old not supported by this version of javah."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "super.class.not.found"

    const-string v1, "A required super class {0} could not be found."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "tracing.not.supported"

    const-string v1, "Warning: Tracing is no longer supported.  Instead, use-verbose:jni option of the virtual machine."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "tried.to.define.non.static"

    const-string v1, "Tried to generate #define for non-static field."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "unknown.array.type"

    const-string v1, "An unknown array type encountered when generating old style headers."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "unknown.option"

    const-string v1, "{0} is an illegal argument\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "unknown.type.for.field"

    const-string v1, "An unknown type encountered when generating old style headers."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "unknown.type.in.method.signature"

    const-string v1, "An unknown type eccountered when generating old style stubs."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    filled-new-array/range {v2 .. v56}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
