.class public final Lorg/openjdk/tools/javah/resources/l10n_ja;
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

    const-string v1, "\u30d5\u30a1\u30a4\u30eb{1}\u304b\u3089\u30b3\u30de\u30f3\u30c9\u30e9\u30a4\u30f3\u5f15\u6570\u3092\u8aad\u307f\u8fbc\u3081\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "at.args.file.not.found"

    const-string v1, "\u30d5\u30a1\u30a4\u30eb{0}\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "at.args.io.exception"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u30e9\u30a4\u30f3\u306e@\u5f15\u6570\u306e\u51e6\u7406\u4e2d\u306b\u3001\u6b21\u306e\u5165\u51fa\u529b\u306e\u554f\u984c\u304c\u767a\u751f\u3057\u307e\u3057\u305f: {0}\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "bad.arg"

    const-string v1, "\u7121\u52b9\u306a\u5f15\u6570: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "cant.create.dir"

    const-string v1, "\u51fa\u529b\u7528\u306e\u30c7\u30a3\u30ec\u30af\u30c8\u30ea{0}\u3092\u4f5c\u6210\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "class.not.found"

    const-string v1, "\u30af\u30e9\u30b9{0}\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "dir.file.mixed"

    const-string v1, "\u30aa\u30d7\u30b7\u30e7\u30f3-d\u3068-o\u3092\u540c\u6642\u306b\u4f7f\u7528\u3059\u308b\u3053\u3068\u306f\u3067\u304d\u307e\u305b\u3093\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "encoding.iso8859_1.not.found"

    const-string v1, "\u51fa\u529b\u7528\u306eISO8859_1\u30b3\u30f3\u30d0\u30fc\u30bf\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u306b\u30a8\u30e9\u30fc\u304c\u3042\u308b\u53ef\u80fd\u6027\u304c\u3042\u308a\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "err.cant.use.option.for.fm"

    const-string v1, "\u6307\u5b9a\u3055\u308c\u305f\u30d5\u30a1\u30a4\u30eb\u30fb\u30de\u30cd\u30fc\u30b8\u30e3\u3067{0}\u30aa\u30d7\u30b7\u30e7\u30f3\u3092\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "err.internal.error"

    const-string v1, "\u5185\u90e8\u30a8\u30e9\u30fc: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "err.ioerror"

    const-string v1, "\u5165\u51fa\u529b\u30a8\u30e9\u30fc: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "err.missing.arg"

    const-string v1, "{0}\u306e\u5024\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "err.no.classes.specified"

    const-string v1, "\u30af\u30e9\u30b9\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "err.prefix"

    const-string v1, "\u30a8\u30e9\u30fc:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "err.unknown.option"

    const-string v1, "\u4e0d\u660e\u306a\u30aa\u30d7\u30b7\u30e7\u30f3: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "invalid.method.signature"

    const-string v1, "\u7121\u52b9\u306a\u30e1\u30bd\u30c3\u30c9\u30fb\u30b7\u30b0\u30cb\u30c1\u30e3: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "io.exception"

    const-string v1, "\u30e1\u30c3\u30bb\u30fc\u30b8{0}\u306e\u5165\u51fa\u529b\u30a8\u30e9\u30fc\u304b\u3089\u56de\u5fa9\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "javah.fullVersion"

    const-string v1, "{0}\u30d5\u30eb\u30fb\u30d0\u30fc\u30b8\u30e7\u30f3\"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "javah.misc.Deprecation"

    const-string v1, "\n\u8b66\u544a: javah\u30c4\u30fc\u30eb\u306f\u6b21\u56de\u306eJDK\u30e1\u30b8\u30e3\u30fc\u30fb\u30ea\u30ea\u30fc\u30b9\u3067\u524a\u9664\u3055\u308c\u308b\u4e88\u5b9a\u3067\u3059\u3002\n\u3053\u306e\u30c4\u30fc\u30eb\u306fJDK 8\u3067javac\u306b\u8ffd\u52a0\u3055\u308c\u305f\'\'-h\'\'\u30aa\u30d7\u30b7\u30e7\u30f3\u306b\u3088\u3063\u3066\u7f6e\u304d\u63db\u3048\u3089\u308c\u307e\u3057\u305f\u3002\n\u30e6\u30fc\u30b6\u30fc\u306fjavac \'\'-h\'\'\u30aa\u30d7\u30b7\u30e7\u30f3\u306e\u4f7f\u7528\u306b\u79fb\u884c\u3059\u308b\u3053\u3068\u3092\u304a\u85a6\u3081\u3057\u307e\u3059\u3002\n\u8a73\u7d30\u306f\u3001javac man\u30da\u30fc\u30b8\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "javah.version"

    const-string v1, "{0}\u30d0\u30fc\u30b8\u30e7\u30f3\"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "jni.llni.mixed"

    const-string v1, "\u30aa\u30d7\u30b7\u30e7\u30f3-jni\u3068-llni\u3092\u540c\u6642\u306b\u4f7f\u7528\u3059\u308b\u3053\u3068\u306f\u3067\u304d\u307e\u305b\u3093\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "jni.no.stubs"

    const-string v1, "JNI\u306f\u30b9\u30bf\u30d6\u3092\u5fc5\u8981\u3068\u3057\u307e\u305b\u3093\u3002JNI\u306e\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "jni.sigerror"

    const-string v1, "{0}\u306e\u7f72\u540d\u3092\u5224\u5b9a\u3067\u304d\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "jni.unknown.type"

    const-string v1, "\u4e0d\u660e\u306a\u578b\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f(JNI)\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "main.opt.bootclasspath"

    const-string v1, "  -bootclasspath <path>        \u30d6\u30fc\u30c8\u30b9\u30c8\u30e9\u30c3\u30d7\u30fb\u30af\u30e9\u30b9\u3092\u30ed\u30fc\u30c9\u3059\u308b\u30d1\u30b9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "main.opt.class_path"

    const-string v1, "  --class-path <path>          \u30af\u30e9\u30b9\u3092\u30ed\u30fc\u30c9\u3059\u308b\u30d1\u30b9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "main.opt.classpath"

    const-string v1, "  -classpath <path>            \u30af\u30e9\u30b9\u3092\u30ed\u30fc\u30c9\u3059\u308b\u30d1\u30b9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "main.opt.cp"

    const-string v1, "  -cp <path>                   \u30af\u30e9\u30b9\u3092\u30ed\u30fc\u30c9\u3059\u308b\u30d1\u30b9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "main.opt.d"

    const-string v1, "  -d <dir>                     \u51fa\u529b\u30c7\u30a3\u30ec\u30af\u30c8\u30ea"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "main.opt.force"

    const-string v1, "  -force                       \u5e38\u306b\u51fa\u529b\u30d5\u30a1\u30a4\u30eb\u3092\u66f8\u304d\u8fbc\u3080"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "main.opt.h"

    const-string v1, "  -h  --help  -?               \u3053\u306e\u30e1\u30c3\u30bb\u30fc\u30b8\u3092\u8868\u793a\u3059\u308b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "main.opt.jni"

    const-string v1, "  -jni                         JNI\u5f62\u5f0f\u306e\u30d8\u30c3\u30c0\u30fc\u30fb\u30d5\u30a1\u30a4\u30eb\u3092\u751f\u6210\u3059\u308b(\u30c7\u30d5\u30a9\u30eb\u30c8)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "main.opt.module_path"

    const-string v1, "  --module-path <path>         \u30a2\u30d7\u30ea\u30b1\u30fc\u30b7\u30e7\u30f3\u30fb\u30e2\u30b8\u30e5\u30fc\u30eb\u3092\u30ed\u30fc\u30c9\u3059\u308b\u30d1\u30b9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "main.opt.o"

    const-string v1, "  -o <file>                    \u51fa\u529b\u30d5\u30a1\u30a4\u30eb(-d\u304b-o\u306e\u3069\u3061\u3089\u304b\u4e00\u65b9\u3092\u4f7f\u7528\u3059\u308b)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "main.opt.system"

    const-string v1, "  --system <jdk>               \u30b7\u30b9\u30c6\u30e0\u30fb\u30e2\u30b8\u30e5\u30fc\u30eb\u3092\u691c\u7d22\u3059\u308b\u5834\u6240\u3092\u6307\u5b9a\u3059\u308b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "main.opt.upgrade_module_path"

    const-string v1, "  --upgrade_module-path <path> \u30a2\u30d7\u30ea\u30b1\u30fc\u30b7\u30e7\u30f3\u30fb\u30e2\u30b8\u30e5\u30fc\u30eb\u3092\u30ed\u30fc\u30c9\u3059\u308b\u30d1\u30b9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "main.opt.v"

    const-string v1, "  -v  -verbose                 \u8a73\u7d30\u306a\u51fa\u529b\u3092\u884c\u3046"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "main.opt.version"

    const-string v1, "  -version                     \u30d0\u30fc\u30b8\u30e7\u30f3\u60c5\u5831\u3092\u8868\u793a\u3059\u308b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "main.usage"

    const-string v1, "\u4f7f\u7528\u65b9\u6cd5: \n  javah [options] <classes>\n[options]\u306b\u306f\u6b21\u306e\u3082\u306e\u304c\u3042\u308a\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "main.usage.foot"

    const-string v1, "\nGNU\u30b9\u30bf\u30a4\u30eb\u30fb\u30aa\u30d7\u30b7\u30e7\u30f3\u3067\u306f\u3001\u30aa\u30d7\u30b7\u30e7\u30f3\u306e\u540d\u524d\u3068\u305d\u306e\u5024\u3092\u533a\u5207\u308b\u305f\u3081\u306b\u7a7a\u767d\u3067\u306f\u306a\u304f\'=\'\u3092\n\u4f7f\u7528\u3067\u304d\u307e\u3059\u3002\n\n\u5404\u30af\u30e9\u30b9\u306f\u3001\u305d\u306e\u5b8c\u5168\u4fee\u98fe\u540d\u3067\u6307\u5b9a\u3059\u308b\u5fc5\u8981\u304c\u3042\u308a\u3001\u30aa\u30d7\u30b7\u30e7\u30f3\u3067\u30e2\u30b8\u30e5\u30fc\u30eb\u540d\u306e\n\u63a5\u982d\u8f9e\u306b\u7d9a\u3051\u3066\'/\'\u3092\u6307\u5b9a\u3057\u307e\u3059\u3002\u4f8b:\n    java.lang.Object\n    java.base/java.io.File\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "no.bootclasspath.specified"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u30e9\u30a4\u30f3\u3067\u30d6\u30fc\u30c8\u30fb\u30af\u30e9\u30b9\u30d1\u30b9\u304c\u6307\u5b9a\u3055\u308c\u307e\u305b\u3093\u3067\u3057\u305f\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "no.classes.specified"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u30e9\u30a4\u30f3\u3067\u30af\u30e9\u30b9\u304c\u6307\u5b9a\u3055\u308c\u307e\u305b\u3093\u3067\u3057\u305f\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "no.classpath.specified"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u30e9\u30a4\u30f3\u3067\u30af\u30e9\u30b9\u30d1\u30b9\u304c\u6307\u5b9a\u3055\u308c\u307e\u305b\u3093\u3067\u3057\u305f\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "no.outputdir.specified"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u30e9\u30a4\u30f3\u3067\u51fa\u529b\u30c7\u30a3\u30ec\u30af\u30c8\u30ea\u304c\u6307\u5b9a\u3055\u308c\u307e\u305b\u3093\u3067\u3057\u305f\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "no.outputfile.specified"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u30e9\u30a4\u30f3\u3067\u51fa\u529b\u30d5\u30a1\u30a4\u30eb\u304c\u6307\u5b9a\u3055\u308c\u307e\u305b\u3093\u3067\u3057\u305f\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "old.jni.mixed"

    const-string v1, "\u30aa\u30d7\u30b7\u30e7\u30f3-jni\u3068-old\u3092\u540c\u6642\u306b\u4f7f\u7528\u3059\u308b\u3053\u3068\u306f\u3067\u304d\u307e\u305b\u3093\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "old.llni.mixed"

    const-string v1, "\u30aa\u30d7\u30b7\u30e7\u30f3-old\u3068-llni\u3092\u540c\u6642\u306b\u4f7f\u7528\u3059\u308b\u3053\u3068\u306f\u3067\u304d\u307e\u305b\u3093\u3002-help\u3067\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "old.not.supported"

    const-string v1, "\u3053\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u306ejavah\u3067\u306f\u30aa\u30d7\u30b7\u30e7\u30f3-old\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "super.class.not.found"

    const-string v1, "\u8981\u6c42\u3055\u308c\u305f\u30b9\u30fc\u30d1\u30fc\u30fb\u30af\u30e9\u30b9{0}\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "tracing.not.supported"

    const-string v1, "\u8b66\u544a: \u30c8\u30ec\u30fc\u30b9\u306f\u73fe\u5728\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002\u304b\u308f\u308a\u306b\u3001Virtual Machine\u306e-verbose:jni\u30aa\u30d7\u30b7\u30e7\u30f3\u3092\u4f7f\u7528\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "tried.to.define.non.static"

    const-string v1, "static\u3067\u306a\u3044\u30d5\u30a3\u30fc\u30eb\u30c9\u306b#define\u3092\u751f\u6210\u3057\u3088\u3046\u3068\u3057\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "unknown.array.type"

    const-string v1, "\u53e4\u3044\u5f62\u5f0f\u306e\u30d8\u30c3\u30c0\u30fc\u3092\u751f\u6210\u3057\u3066\u3044\u308b\u3068\u304d\u306b\u4e0d\u660e\u306a\u914d\u5217\u306e\u578b\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "unknown.option"

    const-string v1, "{0}\u306f\u4e0d\u6b63\u306a\u5f15\u6570\u3067\u3059\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "unknown.type.for.field"

    const-string v1, "\u53e4\u3044\u5f62\u5f0f\u306e\u30d8\u30c3\u30c0\u30fc\u3092\u751f\u6210\u3057\u3066\u3044\u308b\u3068\u304d\u306b\u4e0d\u660e\u306a\u578b\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "unknown.type.in.method.signature"

    const-string v1, "\u53e4\u3044\u5f62\u5f0f\u306e\u30b9\u30bf\u30d6\u3092\u751f\u6210\u3057\u3066\u3044\u308b\u3068\u304d\u306b\u4e0d\u660e\u306a\u578b\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    filled-new-array/range {v2 .. v56}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
