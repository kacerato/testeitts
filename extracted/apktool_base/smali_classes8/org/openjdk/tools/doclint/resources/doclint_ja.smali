.class public final Lorg/openjdk/tools/doclint/resources/doclint_ja;
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
    .locals 63

    const-string v0, "dc.anchor.already.defined"

    const-string v1, "\u30a2\u30f3\u30ab\u30fc\u304c\u3059\u3067\u306b\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u3059: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "dc.anchor.value.missing"

    const-string v1, "\u30a2\u30f3\u30ab\u30fc\u306b\u5024\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "dc.attr.lacks.value"

    const-string v1, "\u5c5e\u6027\u306b\u5024\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "dc.attr.not.number"

    const-string v1, "\u5c5e\u6027\u5024\u304c\u6570\u5b57\u3067\u306f\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "dc.attr.not.supported.html4"

    const-string v1, "\u5c5e\u6027\u306fHTML4\u3067\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "dc.attr.not.supported.html5"

    const-string v1, "\u5c5e\u6027\u306fHTML5\u3067\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "dc.attr.obsolete"

    const-string v1, "\u5c5e\u6027\u306f\u5ec3\u6b62\u3055\u308c\u3066\u3044\u307e\u3059: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "dc.attr.obsolete.use.css"

    const-string v1, "\u5c5e\u6027\u306f\u5ec3\u6b62\u3055\u308c\u3066\u3044\u307e\u3059\u3002\u304b\u308f\u308a\u306bCSS\u3092\u4f7f\u7528\u3057\u3066\u304f\u3060\u3055\u3044: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "dc.attr.repeated"

    const-string v1, "\u7e70\u308a\u8fd4\u3055\u308c\u305f\u5c5e\u6027: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "dc.attr.table.border.html5"

    const-string v1, "\u8868\u306e\u5c5e\u6027\u30dc\u30fc\u30c0\u30fc\u306f\"\"\u307e\u305f\u306f\"1\"\u306e\u307f\u53d7\u3051\u5165\u308c\u307e\u3059\u3002\u304b\u308f\u308a\u306bCSS\u3092\u4f7f\u7528\u3057\u3066\u304f\u3060\u3055\u3044: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "dc.attr.unknown"

    const-string v1, "\u4e0d\u660e\u306a\u5c5e\u6027: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "dc.bad.option"

    const-string v1, "\u7121\u52b9\u306a\u30aa\u30d7\u30b7\u30e7\u30f3: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "dc.bad.value.for.option"

    const-string v1, "\u30aa\u30d7\u30b7\u30e7\u30f3\u306e\u5024\u304c\u4e0d\u6b63\u3067\u3059: {0} {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "dc.empty"

    const-string v1, "@{0}\u306e\u8aac\u660e\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "dc.entity.invalid"

    const-string v1, "\u7121\u52b9\u306a\u30a8\u30f3\u30c6\u30a3\u30c6\u30a3&{0};"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "dc.exception.not.thrown"

    const-string v1, "\u4f8b\u5916\u304c\u30b9\u30ed\u30fc\u3055\u308c\u3066\u3044\u307e\u305b\u3093: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "dc.exists.param"

    const-string v1, "@param \"{0}\"\u306f\u3059\u3067\u306b\u6307\u5b9a\u3055\u308c\u3066\u3044\u307e\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "dc.exists.return"

    const-string v1, "@return\u306f\u3059\u3067\u306b\u6307\u5b9a\u3055\u308c\u3066\u3044\u307e\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "dc.invalid.anchor"

    const-string v1, "\u30a2\u30f3\u30ab\u30fc\u306e\u540d\u524d\u304c\u7121\u52b9\u3067\u3059: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "dc.invalid.param"

    const-string v1, "\u7121\u52b9\u306a@param\u306e\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "dc.invalid.provides"

    const-string v1, "\u7121\u52b9\u306a@provides\u306e\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "dc.invalid.return"

    const-string v1, "\u7121\u52b9\u306a@return\u306e\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "dc.invalid.throws"

    const-string v1, "\u7121\u52b9\u306a@throws\u306e\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "dc.invalid.uri"

    const-string v1, "\u7121\u52b9\u306aURI: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "dc.invalid.uses"

    const-string v1, "\u7121\u52b9\u306a@uses\u306e\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "dc.main.ioerror"

    const-string v1, "IO\u30a8\u30e9\u30fc: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "dc.main.no.files.given"

    const-string v1, "\u30d5\u30a1\u30a4\u30eb\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "dc.main.usage"

    const-string v1, "\u4f7f\u7528\u65b9\u6cd5:\n    doclint [options] source-files...\n\n\u30aa\u30d7\u30b7\u30e7\u30f3:\n  -Xmsgs  \n    -Xmsgs:all\u3068\u540c\u3058\n  -Xmsgs:values\n    \u30c1\u30a7\u30c3\u30af\u3059\u308b\u554f\u984c\u306e\u30ab\u30c6\u30b4\u30ea\u3092\u6307\u5b9a\u3057\u307e\u3059\u3002\u3053\u3053\u3067\u306e\'\'values\'\'\u306f\u3001\n    \u30ab\u30f3\u30de\u3067\u533a\u5207\u3089\u308c\u305f\u6b21\u306e\u5024\u306e\u30ea\u30b9\u30c8\u3067\u3059:\n      reference      Java\u30bd\u30fc\u30b9\u30fb\u30b3\u30fc\u30c9\u8981\u7d20\u3078\u306e\u4e0d\u6b63\u306a\u53c2\u7167\u3092\u542b\u3080\u30b3\u30e1\u30f3\u30c8\u306e\n                     \u5834\u6240\u3092\u8868\u793a\u3057\u307e\u3059\n      syntax         \u30b3\u30e1\u30f3\u30c8\u5185\u306e\u57fa\u672c\u69cb\u6587\u30a8\u30e9\u30fc\u3092\u8868\u793a\u3057\u307e\u3059\n      html           HTML\u30bf\u30d6\u304a\u3088\u3073\u5c5e\u6027\u306e\u554f\u984c\u3092\u8868\u793a\u3057\u307e\u3059\n      accessibility  \u30a2\u30af\u30bb\u30b7\u30d3\u30ea\u30c6\u30a3\u306e\u554f\u984c\u3092\u8868\u793a\u3057\u307e\u3059\n      missing        \u6b20\u843d\u3057\u3066\u3044\u308b\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u306e\u554f\u984c\u3092\u8868\u793a\u3057\u307e\u3059\n      all            \u524d\u8ff0\u306e\u3059\u3079\u3066\n    \u3053\u308c\u3092\u5426\u5b9a\u3059\u308b\u306b\u306f\u3001\u5024\u306e\u524d\u306b\'\'-\'\'\u3092\u6307\u5b9a\u3057\u307e\u3059\n    \u30ab\u30c6\u30b4\u30ea\u306f\u3001\u6b21\u306e\u3044\u305a\u308c\u304b\u3067\u4fee\u98fe\u3067\u304d\u307e\u3059:\n      /public /protected /package /private\n    \u6b63\u306e\u30ab\u30c6\u30b4\u30ea(\'\'-\'\'\u3067\u59cb\u307e\u3089\u306a\u3044)\u306e\u5834\u5408\n    \u4fee\u98fe\u5b50\u306f\u3001\u305d\u306e\u30a2\u30af\u30bb\u30b9\u30fb\u30ec\u30d9\u30eb\u4ee5\u4e0a\u306b\u9069\u7528\u3055\u308c\u307e\u3059\u3002\n    \u8ca0\u306e\u30ab\u30c6\u30b4\u30ea(\'\'-\'\'\u3067\u59cb\u307e\u308b)\u306e\u5834\u5408\n    \u4fee\u98fe\u5b50\u306f\u3001\u305d\u306e\u30a2\u30af\u30bb\u30b9\u30fb\u30ec\u30d9\u30eb\u4ee5\u4e0b\u306b\u9069\u7528\u3055\u308c\u307e\u3059\u3002\n    \u4fee\u98fe\u5b50\u304c\u306a\u3044\u5834\u5408\u3001\u30ab\u30c6\u30b4\u30ea\u306f\u3059\u3079\u3066\u306e\u30a2\u30af\u30bb\u30b9\u30fb\u30ec\u30d9\u30eb\u306b\n    \u9069\u7528\u3055\u308c\u307e\u3059\u3002\n    \u4f8b: -Xmsgs:all,-syntax/private\n    \u3053\u306e\u5834\u5408\u3001private\u30e1\u30bd\u30c3\u30c9\u306edoc\u30b3\u30e1\u30f3\u30c8\u5185\u306e\u69cb\u6587\u30a8\u30e9\u30fc\u3092\u9664\u304d\u3001\n    \u3059\u3079\u3066\u306e\u30e1\u30c3\u30bb\u30fc\u30b8\u304c\u6709\u52b9\u5316\u3055\u308c\u307e\u3059\u3002\n    -Xmsgs\u30aa\u30d7\u30b7\u30e7\u30f3\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u306a\u3044\u5834\u5408\u3001\u30c7\u30d5\u30a9\u30eb\u30c8\u306f\u3001\n    -Xmsgs:all/protected\u3068\u540c\u7b49\u306b\u306a\u308a\u3001\u3053\u308c\u306f\n    \u3059\u3079\u3066\u306e\u30e1\u30c3\u30bb\u30fc\u30b8\u304c\u3001protected\u304a\u3088\u3073public\u306e\u5ba3\u8a00\u306e\u307f\u306b\u5831\u544a\u3055\u308c\u308b\u3053\u3068\u3092\n    \u610f\u5473\u3057\u307e\u3059\u3002\n  -XcheckPackage:<packages>\n    \u7279\u5b9a\u306e\u30d1\u30c3\u30b1\u30fc\u30b8\u306e\u30c1\u30a7\u30c3\u30af\u3092\u6709\u52b9\u307e\u305f\u306f\u7121\u52b9\u306b\u3057\u307e\u3059\u3002\n    <packages>\u306f\u30ab\u30f3\u30de\u3067\u533a\u5207\u3089\u308c\u305f\u30d1\u30c3\u30b1\u30fc\u30b8\u6307\u5b9a\u5b50\u306e\u30ea\u30b9\u30c8\u3067\u3059\u3002\n    \u30d1\u30c3\u30b1\u30fc\u30b8\u6307\u5b9a\u5b50\u306f\u3001\u30d1\u30c3\u30b1\u30fc\u30b8\u306e\u4fee\u98fe\u3055\u308c\u305f\u540d\u524d\u3001\u307e\u305f\u306f\n    \u30d1\u30c3\u30b1\u30fc\u30b8\u540d\u306e\u63a5\u982d\u8f9e\u306e\u5f8c\u306b\'\'.*\'\'\u3092\u6307\u5b9a(\u6307\u5b9a\u3057\u305f\u30d1\u30c3\u30b1\u30fc\u30b8\u306e\n    \u3059\u3079\u3066\u306e\u30b5\u30d6\u30d1\u30c3\u30b1\u30fc\u30b8\u306b\u62e1\u5f35)\u3057\u305f\u3082\u306e\u3067\u3059\u3002\u30d1\u30c3\u30b1\u30fc\u30b8\u6307\u5b9a\u5b50\u306e\u524d\u306b\n    \'\'-\'\'\u3092\u6307\u5b9a\u3059\u308b\u3068\u3001\u6307\u5b9a\u3057\u305f\u30d1\u30c3\u30b1\u30fc\u30b8\u306b\u95a2\u3059\u308b\u30c1\u30a7\u30c3\u30af\u3092\u7121\u52b9\u306b\u3067\u304d\u307e\u3059\u3002\n  -stats\n    \u5831\u544a\u3055\u308c\u305f\u554f\u984c\u306b\u5bfe\u3057\u3066\u7d71\u8a08\u3092\u5831\u544a\u3057\u307e\u3059\u3002\n  -h -help --help -usage -?\n    \u3053\u306e\u30e1\u30c3\u30bb\u30fc\u30b8\u304c\u8868\u793a\u3055\u308c\u307e\u3059\u3002\n\n\u6b21\u306ejavac\u30aa\u30d7\u30b7\u30e7\u30f3\u3082\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u3059\n  -bootclasspath\u3001-classpath\u3001-cp\u3001-sourcepath\u3001-Xmaxerrs\u3001-Xmaxwarns\n\n\u30d7\u30ed\u30b8\u30a7\u30af\u30c8\u306e\u4e00\u90e8\u306b\u5bfe\u3057\u3066doclint\u3092\u5b9f\u884c\u3059\u308b\u306b\u306f\u3001\u30d7\u30ed\u30b8\u30a7\u30af\u30c8\u306e\u30b3\u30f3\u30d1\u30a4\u30eb\u3055\u308c\u305f\u30af\u30e9\u30b9\u3092\n\u30af\u30e9\u30b9\u30d1\u30b9(\u307e\u305f\u306f\u30d6\u30fc\u30c8\u30fb\u30af\u30e9\u30b9\u30d1\u30b9)\u306b\u6307\u5b9a\u3057\u3001\u30b3\u30de\u30f3\u30c9\u884c\u3067\n\u30c1\u30a7\u30c3\u30af\u3059\u308b\u30bd\u30fc\u30b9\u30fb\u30d5\u30a1\u30a4\u30eb\u3092\u6307\u5b9a\u3057\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "dc.missing.comment"

    const-string v1, "\u30b3\u30e1\u30f3\u30c8\u306a\u3057"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "dc.missing.param"

    const-string v1, "{0}\u306e@param\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "dc.missing.return"

    const-string v1, "@return\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "dc.missing.throws"

    const-string v1, "{0}\u306e@throws\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "dc.no.alt.attr.for.image"

    const-string v1, "\u30a4\u30e1\u30fc\u30b8\u306e\"alt\"\u5c5e\u6027\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "dc.no.summary.or.caption.for.table"

    const-string v1, "\u8868\u306e\u8981\u7d04\u307e\u305f\u306f\u30ad\u30e3\u30d7\u30b7\u30e7\u30f3\u304c\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "dc.param.name.not.found"

    const-string v1, "@param name\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "dc.ref.not.found"

    const-string v1, "\u53c2\u7167\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "dc.service.not.found"

    const-string v1, "\u30b5\u30fc\u30d3\u30b9\u30fb\u30bf\u30a4\u30d7\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "dc.tag.code.within.code"

    const-string v1, "<code>\u5185\u306e\'{@code\'}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "dc.tag.empty"

    const-string v1, "\u7a7a\u306e<{0}>\u30bf\u30b0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "dc.tag.end.not.permitted"

    const-string v1, "\u7121\u52b9\u306a\u7d42\u4e86\u30bf\u30b0: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "dc.tag.end.unexpected"

    const-string v1, "\u4e88\u671f\u3057\u306a\u3044\u7d42\u4e86\u30bf\u30b0: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "dc.tag.header.sequence.1"

    const-string v1, "\u30d8\u30c3\u30c0\u30fc\u306e\u6307\u5b9a\u9806\u5e8f\u304c\u6b63\u3057\u304f\u3042\u308a\u307e\u305b\u3093: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "dc.tag.header.sequence.2"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "dc.tag.nested.not.allowed"

    const-string v1, "\u30cd\u30b9\u30c8\u3057\u305f\u30bf\u30b0\u306f\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "dc.tag.not.allowed"

    const-string v1, "\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u30fb\u30b3\u30e1\u30f3\u30c8\u3067\u4f7f\u7528\u3067\u304d\u306a\u3044\u8981\u7d20\u3067\u3059: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "dc.tag.not.allowed.here"

    const-string v1, "\u3053\u3053\u3067\u306f\u30bf\u30b0\u3092\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "dc.tag.not.allowed.inline.element"

    const-string v1, "\u30a4\u30f3\u30e9\u30a4\u30f3\u8981\u7d20<{1}>\u5185\u3067\u4f7f\u7528\u3067\u304d\u306a\u3044\u30d6\u30ed\u30c3\u30af\u8981\u7d20\u3067\u3059: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "dc.tag.not.allowed.inline.other"

    const-string v1, "\u3053\u3053\u3067\u306f\u30d6\u30ed\u30c3\u30af\u8981\u7d20\u3092\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "dc.tag.not.allowed.inline.tag"

    const-string v1, "@{1}\u5185\u3067\u4f7f\u7528\u3067\u304d\u306a\u3044\u30d6\u30ed\u30c3\u30af\u8981\u7d20\u3067\u3059: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "dc.tag.not.closed"

    const-string v1, "\u8981\u7d20\u304c\u9589\u3058\u3089\u308c\u3066\u3044\u307e\u305b\u3093: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "dc.tag.not.supported"

    const-string v1, "\u30bf\u30b0\u306f\u3001\u751f\u6210\u6e08HTML\u30d0\u30fc\u30b8\u30e7\u30f3\u3067\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "dc.tag.p.in.pre"

    const-string v1, "<pre>\u8981\u7d20\u5185\u3067\u4e88\u671f\u3057\u306a\u3044<p>\u304c\u4f7f\u7528\u3055\u308c\u3066\u3044\u307e\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "dc.tag.requires.heading"

    const-string v1, "</{0}>\u306e\u898b\u51fa\u3057\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "dc.tag.self.closing"

    const-string v1, "\u81ea\u5df1\u7d42\u4e86\u8981\u7d20\u306f\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "dc.tag.start.unmatched"

    const-string v1, "\u7d42\u4e86\u30bf\u30b0\u304c\u3042\u308a\u307e\u305b\u3093: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "dc.tag.unknown"

    const-string v1, "\u4e0d\u660e\u306a\u30bf\u30b0: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "dc.text.not.allowed"

    const-string v1, "<{0}>\u8981\u7d20\u3067\u306f\u30c6\u30ad\u30b9\u30c8\u3092\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "dc.type.arg.not.allowed"

    const-string v1, "\u578b\u5f15\u6570\u306f\u3053\u3053\u3067\u306f\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "dc.unexpected.comment"

    const-string v1, "\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u30fb\u30b3\u30e1\u30f3\u30c8\u306f\u3053\u3053\u3067\u306f\u5fc5\u8981\u3042\u308a\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v60

    const-string v0, "dc.value.not.a.constant"

    const-string v1, "\u5024\u304c\u5b9a\u6570\u3092\u53c2\u7167\u3057\u3066\u3044\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v61

    const-string v0, "dc.value.not.allowed.here"

    const-string v1, "\'{@value}\'\u306f\u3053\u3053\u3067\u306f\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v62

    filled-new-array/range {v2 .. v62}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
