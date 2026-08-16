.class public final Lorg/openjdk/tools/javah/resources/l10n_zh_CN;
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

    const-string v1, "\u65e0\u6cd5\u4ece\u6587\u4ef6{1}\u4e2d\u8bfb\u53d6\u547d\u4ee4\u884c\u53c2\u6570\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "at.args.file.not.found"

    const-string v1, "\u627e\u4e0d\u5230\u6587\u4ef6{0}\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "at.args.io.exception"

    const-string v1, "\u5904\u7406\u547d\u4ee4\u884c\u4e2d\u7684 @ \u53c2\u6570\u65f6, \u9047\u5230\u4ee5\u4e0b I/O \u95ee\u9898: {0}\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "bad.arg"

    const-string v1, "\u9519\u8bef\u53c2\u6570: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "cant.create.dir"

    const-string v1, "\u65e0\u6cd5\u4e3a\u8f93\u51fa\u521b\u5efa\u76ee\u5f55 {0}\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "class.not.found"

    const-string v1, "\u627e\u4e0d\u5230\u7c7b{0}\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "dir.file.mixed"

    const-string v1, "\u4e0d\u80fd\u6df7\u7528\u9009\u9879 -d \u548c -o\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "encoding.iso8859_1.not.found"

    const-string v1, "\u627e\u4e0d\u5230\u7528\u4e8e\u8f93\u51fa\u7684 ISO8859_1 \u8f6c\u6362\u5668\u3002\u8fd9\u53ef\u80fd\u662f\u56e0\u4e3a\u5b89\u88c5\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u4e86\u9519\u8bef\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "err.cant.use.option.for.fm"

    const-string v1, "\u4e0d\u80fd\u5c06{0}\u9009\u9879\u4e0e\u7ed9\u5b9a\u7684\u6587\u4ef6\u7ba1\u7406\u5668\u4e00\u8d77\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "err.internal.error"

    const-string v1, "\u5185\u90e8\u9519\u8bef: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "err.ioerror"

    const-string v1, "IO \u9519\u8bef: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "err.missing.arg"

    const-string v1, "{0}\u7f3a\u5c11\u503c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "err.no.classes.specified"

    const-string v1, "\u672a\u6307\u5b9a\u7c7b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "err.prefix"

    const-string v1, "\u9519\u8bef:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "err.unknown.option"

    const-string v1, "\u672a\u77e5\u9009\u9879: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "invalid.method.signature"

    const-string v1, "\u65e0\u6548\u7684\u65b9\u6cd5\u7b7e\u540d: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "io.exception"

    const-string v1, "\u65e0\u6cd5\u4ece I/O \u9519\u8bef\u4e2d\u6062\u590d, \u6d88\u606f\u4e3a: {0}\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "javah.fullVersion"

    const-string v1, "{0}\u5b8c\u6574\u7248\u672c \"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "javah.misc.Deprecation"

    const-string v1, "\n\u8b66\u544a: \u5df2\u8ba1\u5212\u5728\u4e0b\u4e00\u4e2a JDK \u4e3b\u53d1\u884c\u7248\u4e2d\u5220\u9664 javah\n\u5de5\u5177\u3002\u8be5\u5de5\u5177\u5728 JDK 8 \u4e2d\u5df2\u7531\u6dfb\u52a0\u5230 javac \u7684\n\'\'-h\'\' \u9009\u9879\u53d6\u4ee3\u3002\u5efa\u8bae\u7528\u6237\u6539\u4e3a\u4f7f\u7528 javac \'\'-h\'\'\n\u9009\u9879; \u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u67e5\u770b javac \u5e2e\u52a9\u9875\u3002\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "javah.version"

    const-string v1, "{0}\u7248\u672c \"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "jni.llni.mixed"

    const-string v1, "\u4e0d\u80fd\u6df7\u7528\u9009\u9879 -jni \u548c -llni\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "jni.no.stubs"

    const-string v1, "JNI \u4e0d\u9700\u8981\u5b58\u6839, \u8bf7\u53c2\u9605 JNI \u6587\u6863\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "jni.sigerror"

    const-string v1, "\u65e0\u6cd5\u786e\u5b9a{0}\u7684\u7b7e\u540d"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "jni.unknown.type"

    const-string v1, "\u9047\u5230\u672a\u77e5\u7c7b\u578b (JNI)\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "main.opt.bootclasspath"

    const-string v1, "  -bootclasspath <path>        \u4ece\u4e2d\u52a0\u8f7d\u5f15\u5bfc\u7c7b\u7684\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "main.opt.class_path"

    const-string v1, "  --class-path <\u8def\u5f84>          \u4ece\u4e2d\u52a0\u8f7d\u7c7b\u7684\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "main.opt.classpath"

    const-string v1, "  -classpath <path>            \u4ece\u4e2d\u52a0\u8f7d\u7c7b\u7684\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "main.opt.cp"

    const-string v1, "  -cp <path>                   \u4ece\u4e2d\u52a0\u8f7d\u7c7b\u7684\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "main.opt.d"

    const-string v1, "  -d <dir>                     \u8f93\u51fa\u76ee\u5f55"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "main.opt.force"

    const-string v1, "  -force                       \u59cb\u7ec8\u5199\u5165\u8f93\u51fa\u6587\u4ef6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "main.opt.h"

    const-string v1, "  -h  --help  -?               \u8f93\u51fa\u6b64\u6d88\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "main.opt.jni"

    const-string v1, "  -jni                         \u751f\u6210 JNI \u6837\u5f0f\u7684\u6807\u5934\u6587\u4ef6 (\u9ed8\u8ba4\u503c)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "main.opt.module_path"

    const-string v1, "  --module-path <\u8def\u5f84>         \u4ece\u4e2d\u52a0\u8f7d\u5e94\u7528\u7a0b\u5e8f\u6a21\u5757\u7684\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "main.opt.o"

    const-string v1, "  -o <file>                    \u8f93\u51fa\u6587\u4ef6 (\u53ea\u80fd\u4f7f\u7528 -d \u6216 -o \u4e4b\u4e00)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "main.opt.system"

    const-string v1, "  --system <jdk>               \u6307\u5b9a\u67e5\u627e\u7cfb\u7edf\u6a21\u5757\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "main.opt.upgrade_module_path"

    const-string v1, "  --upgrade_module-path <\u8def\u5f84> \u4ece\u4e2d\u52a0\u8f7d\u5e94\u7528\u7a0b\u5e8f\u6a21\u5757\u7684\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "main.opt.v"

    const-string v1, "  -v  -verbose                 \u542f\u7528\u8be6\u7ec6\u8f93\u51fa"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "main.opt.version"

    const-string v1, "  -version                     \u8f93\u51fa\u7248\u672c\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "main.usage"

    const-string v1, "\u7528\u6cd5: \n  javah [options] <classes>\n\u5176\u4e2d, [options] \u5305\u62ec:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "main.usage.foot"

    const-string v1, "\nGNU \u6837\u5f0f\u7684\u9009\u9879\u53ef\u4f7f\u7528 \'=\' (\u800c\u975e\u7a7a\u767d) \u6765\u5206\u9694\u9009\u9879\u540d\u79f0\n\u53ca\u5176\u503c\u3002\n\n\u6bcf\u4e2a\u7c7b\u5fc5\u987b\u7531\u5176\u5168\u9650\u5b9a\u540d\u79f0\u6307\u5b9a, \n\u53ef\u4ee5\u9009\u62e9\u6027\u5730\u4f7f\u7528\u6a21\u5757\u540d\u540e\u8ddf \'/\' \u4f5c\u4e3a\u524d\u7f00\u3002\u793a\u4f8b:\n    java.lang.Object\n    java.base/java.io.File\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "no.bootclasspath.specified"

    const-string v1, "\u672a\u5728\u547d\u4ee4\u884c\u4e2d\u6307\u5b9a\u4efb\u4f55\u5f15\u5bfc\u7c7b\u8def\u5f84\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "no.classes.specified"

    const-string v1, "\u672a\u5728\u547d\u4ee4\u884c\u4e2d\u6307\u5b9a\u4efb\u4f55\u7c7b\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "no.classpath.specified"

    const-string v1, "\u672a\u5728\u547d\u4ee4\u884c\u4e2d\u6307\u5b9a\u4efb\u4f55\u7c7b\u8def\u5f84\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "no.outputdir.specified"

    const-string v1, "\u672a\u5728\u547d\u4ee4\u884c\u4e2d\u6307\u5b9a\u4efb\u4f55\u8f93\u51fa\u76ee\u5f55\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "no.outputfile.specified"

    const-string v1, "\u672a\u5728\u547d\u4ee4\u884c\u4e2d\u6307\u5b9a\u4efb\u4f55\u8f93\u51fa\u6587\u4ef6\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "old.jni.mixed"

    const-string v1, "\u4e0d\u80fd\u6df7\u7528\u9009\u9879 -jni \u548c -old\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "old.llni.mixed"

    const-string v1, "\u4e0d\u80fd\u6df7\u7528\u9009\u9879 -old \u548c -llni\u3002\u8bf7\u5c1d\u8bd5\u4f7f\u7528 -help\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "old.not.supported"

    const-string v1, "\u6b64\u7248\u672c\u7684 javah \u4e0d\u652f\u6301\u9009\u9879 -old\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "super.class.not.found"

    const-string v1, "\u627e\u4e0d\u5230\u6240\u9700\u7684\u8d85\u7c7b{0}\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "tracing.not.supported"

    const-string v1, "\u8b66\u544a: \u4e0d\u518d\u652f\u6301\u8ddf\u8e2a\u3002\u8bf7\u4f7f\u7528\u865a\u62df\u673a\u7684 -verbose:jni \u9009\u9879\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "tried.to.define.non.static"

    const-string v1, "\u5c1d\u8bd5\u4e3a\u975e\u9759\u6001\u5b57\u6bb5\u751f\u6210 #define\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "unknown.array.type"

    const-string v1, "\u751f\u6210\u65e7\u6837\u5f0f\u7684\u6807\u5934\u65f6\u9047\u5230\u672a\u77e5\u7684\u6570\u7ec4\u7c7b\u578b\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "unknown.option"

    const-string v1, "{0}\u662f\u975e\u6cd5\u53c2\u6570\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "unknown.type.for.field"

    const-string v1, "\u751f\u6210\u65e7\u6837\u5f0f\u7684\u6807\u5934\u65f6\u9047\u5230\u672a\u77e5\u7684\u7c7b\u578b\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "unknown.type.in.method.signature"

    const-string v1, "\u751f\u6210\u65e7\u6837\u5f0f\u7684\u5b58\u6839\u65f6\u9047\u5230\u672a\u77e5\u7684\u7c7b\u578b\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    filled-new-array/range {v2 .. v56}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
