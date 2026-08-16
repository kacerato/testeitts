.class public final Lorg/openjdk/tools/doclint/resources/doclint_zh_CN;
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

    const-string v1, "\u951a\u5b9a\u70b9\u5df2\u5b9a\u4e49: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "dc.anchor.value.missing"

    const-string v1, "\u6ca1\u6709\u4e3a\u951a\u5b9a\u70b9\u6307\u5b9a\u503c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "dc.attr.lacks.value"

    const-string v1, "\u5c5e\u6027\u7f3a\u5c11\u503c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "dc.attr.not.number"

    const-string v1, "\u5c5e\u6027\u503c\u4e0d\u662f\u6570\u5b57"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "dc.attr.not.supported.html4"

    const-string v1, "\u5c5e\u6027\u5728 HTML4 \u4e2d\u4e0d\u53d7\u652f\u6301: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "dc.attr.not.supported.html5"

    const-string v1, "\u5c5e\u6027\u5728 HTML5 \u4e2d\u4e0d\u53d7\u652f\u6301: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "dc.attr.obsolete"

    const-string v1, "\u5c5e\u6027\u5df2\u8fc7\u65f6: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "dc.attr.obsolete.use.css"

    const-string v1, "\u5c5e\u6027\u5df2\u8fc7\u65f6, \u8bf7\u6539\u7528 CSS: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "dc.attr.repeated"

    const-string v1, "\u5c5e\u6027\u91cd\u590d: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "dc.attr.table.border.html5"

    const-string v1, "\u8868\u7684\u5c5e\u6027\u8fb9\u6846\u53ea\u63a5\u53d7 \"\" \u6216 \"1\", \u6539\u4e3a\u4f7f\u7528 CSS: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "dc.attr.unknown"

    const-string v1, "\u672a\u77e5\u5c5e\u6027: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "dc.bad.option"

    const-string v1, "\u9009\u9879\u9519\u8bef: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "dc.bad.value.for.option"

    const-string v1, "\u9009\u9879\u7684\u503c\u9519\u8bef: {0} {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "dc.empty"

    const-string v1, "@{0} \u6ca1\u6709\u8bf4\u660e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "dc.entity.invalid"

    const-string v1, "\u5b9e\u4f53 &{0}; \u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "dc.exception.not.thrown"

    const-string v1, "\u672a\u629b\u51fa\u5f02\u5e38\u9519\u8bef: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "dc.exists.param"

    const-string v1, "\u5df2\u6307\u5b9a @param \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "dc.exists.return"

    const-string v1, "\u5df2\u6307\u5b9a @return"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "dc.invalid.anchor"

    const-string v1, "\u951a\u5b9a\u70b9\u7684\u540d\u79f0\u65e0\u6548: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "dc.invalid.param"

    const-string v1, "@param \u7684\u7528\u6cd5\u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "dc.invalid.provides"

    const-string v1, "@provides \u7684\u7528\u6cd5\u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "dc.invalid.return"

    const-string v1, "@return \u7684\u7528\u6cd5\u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "dc.invalid.throws"

    const-string v1, "@throws \u7684\u7528\u6cd5\u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "dc.invalid.uri"

    const-string v1, "URI \u65e0\u6548: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "dc.invalid.uses"

    const-string v1, "@uses \u7684\u7528\u6cd5\u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "dc.main.ioerror"

    const-string v1, "IO \u9519\u8bef: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "dc.main.no.files.given"

    const-string v1, "\u672a\u6307\u5b9a\u6587\u4ef6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "dc.main.usage"

    const-string v1, "\u7528\u6cd5:\n    doclint [options] source-files...\n\n\u9009\u9879:\n  -Xmsgs  \n    \u4e0e -Xmsgs:all \u76f8\u540c\n  -Xmsgs:values\n    \u6307\u5b9a\u8981\u68c0\u67e5\u7684\u95ee\u9898\u7684\u7c7b\u522b, \u5176\u4e2d \'\'values\'\'\n    \u662f\u4efb\u610f\u4ee5\u4e0b\u5185\u5bb9\u7684\u4ee5\u9017\u53f7\u5206\u9694\u7684\u5217\u8868:\n      reference      \u663e\u793a\u5305\u542b\u5bf9 Java \u6e90\u4ee3\u7801\u5143\u7d20\n                     \u9519\u8bef\u5f15\u7528\u7684\u6ce8\u91ca\u7684\u4f4d\u7f6e\n      syntax         \u663e\u793a\u6ce8\u91ca\u4e2d\u7684\u57fa\u672c\u8bed\u6cd5\u9519\u8bef\n      html           \u663e\u793a HTML \u6807\u8bb0\u548c\u5c5e\u6027\u95ee\u9898\n      accessibility  \u663e\u793a\u53ef\u8bbf\u95ee\u6027\u7684\u95ee\u9898\n      missing        \u663e\u793a\u7f3a\u5c11\u6587\u6863\u7684\u95ee\u9898\n      all            \u6240\u6709\u4ee5\u4e0a\u5185\u5bb9\n    \u5728\u503c\u4e4b\u524d\u4f7f\u7528 \'\'-\'\' \u53ef\u4f7f\u7528\u5176\u53cd\u503c\n    \u53ef\u4ee5\u4f7f\u7528\u4ee5\u4e0b\u4e00\u9879\u6765\u9650\u5b9a\u7c7b\u522b:\n      /public /protected /package /private\n    \u5bf9\u4e8e\u6b63\u7c7b\u522b (\u4e0d\u4ee5 \'\'-\'\' \u5f00\u5934)\n    \u9650\u5b9a\u7b26\u9002\u7528\u4e8e\u8be5\u8bbf\u95ee\u7ea7\u522b\u53ca\u66f4\u9ad8\u7ea7\u522b\u3002\n    \u5bf9\u4e8e\u8d1f\u7c7b\u522b (\u4ee5 \'\'-\'\' \u5f00\u5934)\n    \u9650\u5b9a\u7b26\u9002\u7528\u4e8e\u8be5\u8bbf\u95ee\u7ea7\u522b\u53ca\u66f4\u4f4e\u7ea7\u522b\u3002\n    \u5982\u679c\u6ca1\u6709\u9650\u5b9a\u7b26, \u5219\u8be5\u7c7b\u522b\u9002\u7528\u4e8e\n    \u6240\u6709\u8bbf\u95ee\u7ea7\u522b\u3002\n    \u4f8b\u5982, -Xmsgs:all,-syntax/private\n    \u8fd9\u5c06\u5728\u4e13\u7528\u65b9\u6cd5\u7684\u6587\u6863\u6ce8\u91ca\u4e2d\n    \u542f\u7528\u9664\u8bed\u6cd5\u9519\u8bef\u4e4b\u5916\u7684\u6240\u6709\u6d88\u606f\u3002\n    \u5982\u679c\u672a\u63d0\u4f9b -Xmsgs \u9009\u9879, \u5219\u9ed8\u8ba4\u503c\n    \u7b49\u540c\u4e8e -Xmsgs:all/protected, \u8868\u793a\n    \u4ec5\u62a5\u544a\u53d7\u4fdd\u62a4\u548c\u516c\u5171\u58f0\u660e\u4e2d\u7684\n    \u6240\u6709\u6d88\u606f\u3002\n  -XcheckPackage:<packages>\n    \u5728\u7279\u5b9a\u7684\u7a0b\u5e8f\u5305\u4e2d\u542f\u7528\u6216\u7981\u7528\u68c0\u67e5\u3002\n    <packages> \u662f\u9017\u53f7\u5206\u9694\u7684\u7a0b\u5e8f\u5305\u8bf4\u660e\u7b26\u5217\u8868\u3002\n    \u7a0b\u5e8f\u5305\u8bf4\u660e\u7b26\u662f\u7a0b\u5e8f\u5305\u7684\u9650\u5b9a\u540d\u79f0\n    \u6216\u7a0b\u5e8f\u5305\u540d\u79f0\u524d\u7f00\u540e\u8ddf \'\'.*\'\', \u5b83\u6269\u5c55\u5230\n    \u7ed9\u5b9a\u7a0b\u5e8f\u5305\u7684\u6240\u6709\u5b50\u7a0b\u5e8f\u5305\u3002\u5728\u7a0b\u5e8f\u5305\u8bf4\u660e\u7b26\u524d\u9762\n    \u52a0\u4e0a \'\'-\'\' \u53ef\u4ee5\u4e3a\u6307\u5b9a\u7a0b\u5e8f\u5305\u7981\u7528\u68c0\u67e5\u3002\n  -stats\n    \u62a5\u544a\u6240\u62a5\u544a\u95ee\u9898\u7684\u7edf\u8ba1\u4fe1\u606f\u3002\n  -h -help --help -usage -?\n    \u663e\u793a\u6b64\u6d88\u606f\u3002\n\n\u8fd8\u652f\u6301\u4ee5\u4e0b javac \u9009\u9879\n  -bootclasspath, -classpath, -cp, -sourcepath, -Xmaxerrs, -Xmaxwarns\n\n\u8981\u5728\u9879\u76ee\u7684\u4e00\u90e8\u5206\u4e0a\u8fd0\u884c doclint, \u8bf7\u5c06\u9879\u76ee\u4e2d\u5df2\u7f16\u8bd1\u7684\u7c7b\n\u653e\u5728\u7c7b\u8def\u5f84 (\u6216\u5f15\u5bfc\u7c7b\u8def\u5f84) \u4e0a, \u7136\u540e\u5728\u547d\u4ee4\u884c\u4e0a\u6307\u5b9a\n\u8981\u68c0\u67e5\u7684\u6e90\u6587\u4ef6\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "dc.missing.comment"

    const-string v1, "\u6ca1\u6709\u6ce8\u91ca"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "dc.missing.param"

    const-string v1, "{0}\u6ca1\u6709 @param"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "dc.missing.return"

    const-string v1, "\u6ca1\u6709 @return"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "dc.missing.throws"

    const-string v1, "{0}\u6ca1\u6709 @throws"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "dc.no.alt.attr.for.image"

    const-string v1, "\u56fe\u50cf\u6ca1\u6709 \"alt\" \u5c5e\u6027"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "dc.no.summary.or.caption.for.table"

    const-string v1, "\u8868\u6ca1\u6709\u6982\u8981\u6216\u6807\u9898"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "dc.param.name.not.found"

    const-string v1, "@param name \u672a\u627e\u5230"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "dc.ref.not.found"

    const-string v1, "\u627e\u4e0d\u5230\u5f15\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "dc.service.not.found"

    const-string v1, "\u627e\u4e0d\u5230\u670d\u52a1\u7c7b\u578b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "dc.tag.code.within.code"

    const-string v1, "\'{@code\'} \u5728 <code> \u4e2d"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "dc.tag.empty"

    const-string v1, "<{0}> \u6807\u8bb0\u4e3a\u7a7a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "dc.tag.end.not.permitted"

    const-string v1, "\u65e0\u6548\u7684\u7ed3\u675f\u6807\u8bb0: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "dc.tag.end.unexpected"

    const-string v1, "\u610f\u5916\u7684\u7ed3\u675f\u6807\u8bb0: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "dc.tag.header.sequence.1"

    const-string v1, "\u4f7f\u7528\u7684\u6807\u9898\u8d85\u51fa\u5e8f\u5217: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "dc.tag.header.sequence.2"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "dc.tag.nested.not.allowed"

    const-string v1, "\u4e0d\u5141\u8bb8\u4f7f\u7528\u5d4c\u5957\u6807\u8bb0: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "dc.tag.not.allowed"

    const-string v1, "\u6587\u6863\u6ce8\u91ca\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u5143\u7d20: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "dc.tag.not.allowed.here"

    const-string v1, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528\u6807\u8bb0: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "dc.tag.not.allowed.inline.element"

    const-string v1, "\u5185\u5d4c\u5143\u7d20 <{1}> \u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u5757\u5143\u7d20: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "dc.tag.not.allowed.inline.other"

    const-string v1, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528\u5757\u5143\u7d20: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "dc.tag.not.allowed.inline.tag"

    const-string v1, "@{1} \u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u5757\u5143\u7d20: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "dc.tag.not.closed"

    const-string v1, "\u5143\u7d20\u672a\u5173\u95ed: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "dc.tag.not.supported"

    const-string v1, "\u6807\u8bb0\u5728\u751f\u6210\u7684 HTML \u7248\u672c\u4e2d\u4e0d\u53d7\u652f\u6301: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "dc.tag.p.in.pre"

    const-string v1, "<pre> \u5143\u7d20\u5185\u90e8\u610f\u5916\u5730\u4f7f\u7528\u4e86 <p>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "dc.tag.requires.heading"

    const-string v1, "\u672a\u627e\u5230 </{0}> \u7684\u6807\u9898"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "dc.tag.self.closing"

    const-string v1, "\u4e0d\u5141\u8bb8\u4f7f\u7528\u81ea\u5173\u95ed\u5143\u7d20"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "dc.tag.start.unmatched"

    const-string v1, "\u7f3a\u5c11\u7ed3\u675f\u6807\u8bb0: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "dc.tag.unknown"

    const-string v1, "\u672a\u77e5\u6807\u8bb0: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "dc.text.not.allowed"

    const-string v1, "<{0}> \u5143\u7d20\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u6587\u672c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "dc.type.arg.not.allowed"

    const-string v1, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528\u7c7b\u578b\u53c2\u6570"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "dc.unexpected.comment"

    const-string v1, "\u6b64\u5904\u672a\u9884\u671f\u6587\u6863\u6ce8\u91ca"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v60

    const-string v0, "dc.value.not.a.constant"

    const-string v1, "\u503c\u4e0d\u5f15\u7528\u5e38\u91cf"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v61

    const-string v0, "dc.value.not.allowed.here"

    const-string v1, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528 \'{@value}\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v62

    filled-new-array/range {v2 .. v62}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
