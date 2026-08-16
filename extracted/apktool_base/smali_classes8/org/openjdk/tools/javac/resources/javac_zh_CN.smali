.class public final Lorg/openjdk/tools/javac/resources/javac_zh_CN;
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

    const-string v1, "{0} \u9009\u9879\u7684\u503c\u9519\u8bef: \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "javac.err.cannot.access.runtime.env"

    const-string v1, "\u65e0\u6cd5\u8bbf\u95ee\u8fd0\u884c\u65f6\u73af\u5883"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "javac.err.empty.A.argument"

    const-string v1, "-A \u9700\u8981\u4e00\u4e2a\u53c2\u6570; \u4f7f\u7528 \'\'-Akey\'\' \u6216 \'\'-Akey=value\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "javac.err.error.writing.file"

    const-string v1, "\u5199\u5165{0}\u65f6\u51fa\u9519; {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "javac.err.file.not.directory"

    const-string v1, "\u4e0d\u662f\u76ee\u5f55: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "javac.err.file.not.file"

    const-string v1, "\u4e0d\u662f\u6587\u4ef6: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "javac.err.file.not.found"

    const-string v1, "\u627e\u4e0d\u5230\u6587\u4ef6: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "javac.err.invalid.A.key"

    const-string v1, "\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u9009\u9879 \'\'{0}\'\' \u4e2d\u7684\u5173\u952e\u5b57\u4e0d\u662f\u4ee5\u70b9\u5206\u9694\u7684\u6807\u8bc6\u7b26\u5e8f\u5217"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "javac.err.invalid.arg"

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "javac.err.invalid.flag"

    const-string v1, "\u65e0\u6548\u7684\u6807\u8bb0: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "javac.err.invalid.profile"

    const-string v1, "\u914d\u7f6e\u6587\u4ef6\u65e0\u6548: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "javac.err.invalid.source"

    const-string v1, "\u65e0\u6548\u7684\u6e90\u53d1\u884c\u7248: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "javac.err.invalid.target"

    const-string v1, "\u65e0\u6548\u7684\u76ee\u6807\u53d1\u884c\u7248: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "javac.err.no.source.files"

    const-string v1, "\u65e0\u6e90\u6587\u4ef6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "javac.err.no.source.files.classes"

    const-string v1, "\u65e0\u6e90\u6587\u4ef6\u6216\u7c7b\u540d"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "javac.err.no.value.for.option"

    const-string v1, "{0} \u9009\u9879\u6ca1\u6709\u503c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "javac.err.option.not.allowed.with.target"

    const-string v1, "\u76ee\u6807 {1} \u4e0d\u5141\u8bb8\u9009\u9879 {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "javac.err.option.too.many"

    const-string v1, "\u9009\u9879 {0} \u53ea\u80fd\u6307\u5b9a\u4e00\u6b21"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "javac.err.profile.bootclasspath.conflict"

    const-string v1, "\u6982\u8981\u4fe1\u606f\u548c\u5f15\u5bfc\u7c7b\u8def\u5f84\u9009\u9879\u4e0d\u80fd\u540c\u65f6\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "javac.err.release.bootclasspath.conflict"

    const-string v1, "\u9009\u9879 {0} \u4e0d\u80fd\u4e0e --release \u4e00\u8d77\u4f7f\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "javac.err.release.not.standard.file.manager"

    const-string v1, "\u6307\u5b9a\u4e86 --release \u9009\u9879, \u4f46\u63d0\u4f9b\u7684 JavaFileManager \u4e0d\u662f StandardJavaFileManager\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "javac.err.repeated.value.for.patch.module"

    const-string v1, "\u4e3a {0} \u591a\u6b21\u6307\u5b9a\u4e86 --patch-module"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "javac.err.req.arg"

    const-string v1, "{0}\u9700\u8981\u53c2\u6570"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "javac.err.sourcepath.modulesourcepath.conflict"

    const-string v1, "\u65e0\u6cd5\u540c\u65f6\u6307\u5b9a --source-path \u4e0e --module-source-path"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "javac.err.unmatched.quote"

    const-string v1, "\u73af\u5883\u53d8\u91cf %s \u4e2d\u7684\u5f15\u53f7\u4e0d\u6210\u5bf9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "javac.err.unsupported.release.version"

    const-string v1, "\u4e0d\u652f\u6301\u53d1\u884c\u7248\u672c {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "javac.fullVersion"

    const-string v1, "{0}\u5b8c\u6574\u7248\u672c \"{1}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "javac.msg.bug"

    const-string v1, "\u7f16\u8bd1\u5668 ({0}) \u4e2d\u51fa\u73b0\u5f02\u5e38\u9519\u8bef\u3002\u5982\u679c\u5728 Bug Database (http://bugs.java.com) \u4e2d\u6ca1\u6709\u627e\u5230\u8be5\u9519\u8bef, \u8bf7\u901a\u8fc7 Java Bug \u62a5\u544a\u9875 (http://bugreport.java.com) \u5efa\u7acb\u8be5 Java \u7f16\u8bd1\u5668 Bug\u3002\u8bf7\u5728\u62a5\u544a\u4e2d\u9644\u4e0a\u60a8\u7684\u7a0b\u5e8f\u548c\u4ee5\u4e0b\u8bca\u65ad\u4fe1\u606f\u3002\u8c22\u8c22\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "javac.msg.io"

    const-string v1, "\n\n\u53d1\u751f\u8f93\u5165/\u8f93\u51fa\u9519\u8bef\u3002\n\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u53c2\u9605\u4ee5\u4e0b\u5806\u6808\u8ddf\u8e2a\u3002\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "javac.msg.plugin.uncaught.exception"

    const-string v1, "\n\n\u63d2\u4ef6\u629b\u51fa\u672a\u6355\u83b7\u7684\u5f02\u5e38\u9519\u8bef\u3002\n\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u53c2\u9605\u4ee5\u4e0b\u5806\u6808\u8ddf\u8e2a\u3002\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "javac.msg.proc.annotation.uncaught.exception"

    const-string v1, "\n\n\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u629b\u51fa\u672a\u6355\u83b7\u7684\u5f02\u5e38\u9519\u8bef\u3002\n\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u53c2\u9605\u4ee5\u4e0b\u5806\u6808\u8ddf\u8e2a\u3002\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "javac.msg.resource"

    const-string v1, "\n\n\u7cfb\u7edf\u8d44\u6e90\u4e0d\u8db3\u3002\n\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u53c2\u9605\u4ee5\u4e0b\u5806\u6808\u8ddf\u8e2a\u3002\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "javac.msg.usage"

    const-string v1, "\u7528\u6cd5: {0} <\u9009\u9879> <\u6e90\u6587\u4ef6>\n\u4f7f\u7528 --help \u53ef\u5217\u51fa\u53ef\u80fd\u7684\u9009\u9879"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "javac.msg.usage.header"

    const-string v1, "\u7528\u6cd5: {0} <options> <source files>\n\u5176\u4e2d, \u53ef\u80fd\u7684\u9009\u9879\u5305\u62ec:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "javac.msg.usage.nonstandard.footer"

    const-string v1, "\u8fd9\u4e9b\u989d\u5916\u9009\u9879\u5982\u6709\u66f4\u6539, \u6055\u4e0d\u53e6\u884c\u901a\u77e5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "javac.opt.A"

    const-string v1, "\u4f20\u9012\u7ed9\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u7684\u9009\u9879"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "javac.opt.AT"

    const-string v1, "\u4ece\u6587\u4ef6\u8bfb\u53d6\u9009\u9879\u548c\u6587\u4ef6\u540d"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "javac.opt.J"

    const-string v1, "\u76f4\u63a5\u5c06 <\u6807\u8bb0> \u4f20\u9012\u7ed9\u8fd0\u884c\u65f6\u7cfb\u7edf"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "javac.opt.Werror"

    const-string v1, "\u51fa\u73b0\u8b66\u544a\u65f6\u7ec8\u6b62\u7f16\u8bd1"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "javac.opt.X"

    const-string v1, "\u8f93\u51fa\u989d\u5916\u9009\u9879\u7684\u5e2e\u52a9"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "javac.opt.Xbootclasspath.a"

    const-string v1, "\u7f6e\u4e8e\u5f15\u5bfc\u7c7b\u8def\u5f84\u4e4b\u540e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "javac.opt.Xbootclasspath.p"

    const-string v1, "\u7f6e\u4e8e\u5f15\u5bfc\u7c7b\u8def\u5f84\u4e4b\u524d"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "javac.opt.Xdoclint"

    const-string v1, "\u4e3a javadoc \u6ce8\u91ca\u4e2d\u7684\u95ee\u9898\u542f\u7528\u5efa\u8bae\u7684\u68c0\u67e5"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "javac.opt.Xdoclint.custom"

    const-string v1, "\u4e3a javadoc \u6ce8\u91ca\u4e2d\u7684\u95ee\u9898\u542f\u7528\u6216\u7981\u7528\u7279\u5b9a\u68c0\u67e5,\n        \u5176\u4e2d <group> \u4e3a accessibility, html, missing, reference \u6216 syntax \u4e4b\u4e00\u3002\n        <access> \u4e3a public, protected, package \u6216 private \u4e4b\u4e00\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "javac.opt.Xdoclint.package.args"

    const-string v1, "[-]<\u7a0b\u5e8f\u5305>(,[-]<\u7a0b\u5e8f\u5305>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "javac.opt.Xdoclint.package.desc"

    const-string v1, "\u5728\u7279\u5b9a\u7684\u7a0b\u5e8f\u5305\u4e2d\u542f\u7528\u6216\u7981\u7528\u68c0\u67e5\u3002\u6bcf\u4e2a <\u7a0b\u5e8f\u5305> \u662f\n\u7a0b\u5e8f\u5305\u7684\u9650\u5b9a\u540d\u79f0, \u6216\u7a0b\u5e8f\u5305\u540d\u79f0\u524d\u7f00\u540e\u8ddf \'.*\', \n\u5b83\u6269\u5c55\u5230\u7ed9\u5b9a\u7a0b\u5e8f\u5305\u7684\u6240\u6709\u5b50\u7a0b\u5e8f\u5305\u3002\u5728\u6bcf\u4e2a <\u7a0b\u5e8f\u5305>\n\u524d\u9762\u52a0\u4e0a \'-\' \u53ef\u4ee5\u4e3a\u6307\u5b9a\u7a0b\u5e8f\u5305\u7981\u7528\u68c0\u67e5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "javac.opt.Xdoclint.subopts"

    const-string v1, "(all|none|[-]<group>)[/<access>]"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "javac.opt.Xlint"

    const-string v1, "\u542f\u7528\u5efa\u8bae\u7684\u8b66\u544a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "javac.opt.Xlint.all"

    const-string v1, "\u542f\u7528\u6240\u6709\u8b66\u544a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "javac.opt.Xlint.custom"

    const-string v1, "\u8981\u542f\u7528\u6216\u7981\u7528\u7684\u8b66\u544a, \u4f7f\u7528\u9017\u53f7\u5206\u9694\u3002\n        \u5728\u5173\u952e\u5b57\u524d\u9762\u52a0\u4e0a \'-\' \u53ef\u7981\u7528\u6307\u5b9a\u7684\u8b66\u544a\u3002\n        \u652f\u6301\u7684\u5173\u952e\u5b57\u5305\u62ec:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "javac.opt.Xlint.desc.auxiliaryclass"

    const-string v1, "\u6709\u5173\u8f85\u52a9\u7c7b\u5728\u6e90\u6587\u4ef6\u4e2d\u9690\u85cf, \u4f46\u5728\u5176\u4ed6\u6587\u4ef6\u4e2d\u4f7f\u7528\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "javac.opt.Xlint.desc.cast"

    const-string v1, "\u6709\u5173\u4f7f\u7528\u4e86\u4e0d\u5fc5\u8981\u8f6c\u6362\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "javac.opt.Xlint.desc.classfile"

    const-string v1, "\u6709\u5173\u4e0e\u7c7b\u6587\u4ef6\u5185\u5bb9\u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "javac.opt.Xlint.desc.dep-ann"

    const-string v1, "\u6709\u5173\u9879\u5728 JavaDoc \u4e2d\u6807\u8bb0\u4e3a\u5df2\u8fc7\u65f6\u4f46\u672a\u4f7f\u7528 @Deprecated \u6ce8\u91ca\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "javac.opt.Xlint.desc.deprecation"

    const-string v1, "\u6709\u5173\u4f7f\u7528\u4e86\u5df2\u8fc7\u65f6\u9879\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "javac.opt.Xlint.desc.divzero"

    const-string v1, "\u6709\u5173\u9664\u4ee5\u5e38\u91cf\u6574\u6570 0 \u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "javac.opt.Xlint.desc.empty"

    const-string v1, "\u6709\u5173 if \u4e4b\u540e\u6ca1\u6709\u8bed\u53e5\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "javac.opt.Xlint.desc.exports"

    const-string v1, "\u6709\u5173\u4e0e\u6a21\u5757\u5bfc\u51fa\u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "javac.opt.Xlint.desc.fallthrough"

    const-string v1, "\u6709\u5173\u4ece switch \u8bed\u53e5\u7684\u4e00\u4e2a case \u5411\u4e0b\u987a\u5e8f\u6267\u884c\u5230\u4e0b\u4e00\u4e2a case \u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v60

    const-string v0, "javac.opt.Xlint.desc.finally"

    const-string v1, "\u6709\u5173 finally \u5b50\u53e5\u672a\u6b63\u5e38\u7ec8\u6b62\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v61

    const-string v0, "javac.opt.Xlint.desc.module"

    const-string v1, "\u6709\u5173\u6a21\u5757\u7cfb\u7edf\u76f8\u5173\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v62

    const-string v0, "javac.opt.Xlint.desc.opens"

    const-string v1, "\u6709\u5173\u4e0e\u6a21\u5757\u6253\u5f00\u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v63

    const-string v0, "javac.opt.Xlint.desc.options"

    const-string v1, "\u6709\u5173\u4e0e\u4f7f\u7528\u547d\u4ee4\u884c\u9009\u9879\u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v64

    const-string v0, "javac.opt.Xlint.desc.overloads"

    const-string v1, "\u6709\u5173\u4e0e\u65b9\u6cd5\u91cd\u8f7d\u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v65

    const-string v0, "javac.opt.Xlint.desc.overrides"

    const-string v1, "\u6709\u5173\u4e0e\u65b9\u6cd5\u8986\u76d6\u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v66

    const-string v0, "javac.opt.Xlint.desc.path"

    const-string v1, "\u6709\u5173\u547d\u4ee4\u884c\u4e0a\u7684\u8def\u5f84\u5143\u7d20\u65e0\u6548\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v67

    const-string v0, "javac.opt.Xlint.desc.processing"

    const-string v1, "\u6709\u5173\u4e0e\u6ce8\u91ca\u5904\u7406\u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v68

    const-string v0, "javac.opt.Xlint.desc.rawtypes"

    const-string v1, "\u6709\u5173\u4f7f\u7528\u4e86\u539f\u59cb\u7c7b\u578b\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v69

    const-string v0, "javac.opt.Xlint.desc.removal"

    const-string v1, "\u6709\u5173\u4f7f\u7528\u4e86\u6807\u8bb0\u4e3a\u5f85\u5220\u9664\u7684 API \u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v70

    const-string v0, "javac.opt.Xlint.desc.requires-automatic"

    const-string v1, "\u6709\u5173\u5728 requires \u5b50\u53e5\u4e2d\u4f7f\u7528\u81ea\u52a8\u6a21\u5757\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v71

    const-string v0, "javac.opt.Xlint.desc.requires-transitive-automatic"

    const-string v1, "\u6709\u5173 requires \u8fc7\u6e21\u4e2d\u7684\u81ea\u52a8\u6a21\u5757\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v72

    const-string v0, "javac.opt.Xlint.desc.serial"

    const-string v1, "\u6709\u5173\u672a\u63d0\u4f9b\u5e8f\u5217\u7248\u672c ID \u7684\u53ef\u5e8f\u5217\u5316\u7c7b\u7684\u8b66\u544a\u3002\n                             \u6b64\u5916\u8fd8\u8b66\u544a\u6709\u5173\u53ef\u4e32\u884c\u5316\u5143\u7d20\u5bf9\u975e\u516c\u5171\u6210\u5458\u7684\u8bbf\u95ee\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v73

    const-string v0, "javac.opt.Xlint.desc.static"

    const-string v1, "\u6709\u5173\u4f7f\u7528\u5b9e\u4f8b\u6765\u8bbf\u95ee\u9759\u6001\u6210\u5458\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v74

    const-string v0, "javac.opt.Xlint.desc.try"

    const-string v1, "\u6709\u5173\u4e0e\u4f7f\u7528 try \u5757 (\u4f8b\u5982 try-with-resources) \u76f8\u5173\u7684\u95ee\u9898\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v75

    const-string v0, "javac.opt.Xlint.desc.unchecked"

    const-string v1, "\u6709\u5173\u672a\u68c0\u67e5\u64cd\u4f5c\u7684\u8b66\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v76

    const-string v0, "javac.opt.Xlint.desc.varargs"

    const-string v1, "\u6709\u5173\u6f5c\u5728\u4e0d\u5b89\u5168\u7684 vararg \u65b9\u6cd5\u7684\u8b66\u544a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v77

    const-string v0, "javac.opt.Xlint.none"

    const-string v1, "\u7981\u7528\u6240\u6709\u8b66\u544a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v78

    const-string v0, "javac.opt.Xstdout"

    const-string v1, "\u91cd\u5b9a\u5411\u6807\u51c6\u8f93\u51fa"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v79

    const-string v0, "javac.opt.addExports"

    const-string v1, "\u6307\u5b9a\u88ab\u89c6\u4e3a\u5df2\u4ece\u5176\u5b9a\u4e49\u6a21\u5757\u5bfc\u51fa\u5230\u5176\u4ed6\u6a21\u5757\u6216\u8005\u5bfc\u51fa\u5230\u6240\u6709\n        \u672a\u547d\u540d\u6a21\u5757 (\u5982\u679c <other-module> \u4e3a ALL-UNNAMED) \u7684\u7a0b\u5e8f\u5305\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v80

    const-string v0, "javac.opt.addReads"

    const-string v1, "\u6307\u5b9a\u88ab\u89c6\u4e3a\u7ed9\u5b9a\u6a21\u5757\u9700\u8981\u7684\u5176\u4ed6\u6a21\u5757\u3002\n<other-module> \u53ef\u80fd\u9700\u8981\u4e3a ALL-UNNAMED, \u4ee5\u4fbf\u8981\u6c42\u672a\u547d\u540d\u6a21\u5757\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v81

    const-string v0, "javac.opt.addmods"

    const-string v1, "\u9664\u4e86\u521d\u59cb\u6a21\u5757\u4e4b\u5916\u8981\u89e3\u6790\u7684\u6839\u6a21\u5757; \u5982\u679c <module>\n        \u4e3a ALL-MODULE-PATH, \u5219\u4e3a\u6a21\u5757\u8def\u5f84\u4e2d\u7684\u6240\u6709\u6a21\u5757\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v82

    const-string v0, "javac.opt.arg.Xlint"

    const-string v1, "<\u5bc6\u94a5>(,<\u5bc6\u94a5>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v83

    const-string v0, "javac.opt.arg.addExports"

    const-string v1, "<\u6a21\u5757>/<\u7a0b\u5e8f\u5305>=<\u5176\u4ed6\u6a21\u5757>(,<\u5176\u4ed6\u6a21\u5757>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v84

    const-string v0, "javac.opt.arg.addReads"

    const-string v1, "<\u6a21\u5757>=<\u5176\u4ed6\u6a21\u5757>(,<\u5176\u4ed6\u6a21\u5757>)*"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v85

    const-string v0, "javac.opt.arg.addmods"

    const-string v1, "<\u6a21\u5757>(,<\u6a21\u5757>)*"

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

    const-string v1, "<\u7248\u672c>"

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

    const-string v2, "<\u6a21\u5757>=<\u6587\u4ef6>(:<\u6587\u4ef6>)*"

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

    const-string v2, "\"\u540d\u79f0\u53c2\u6570\""

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

    const-string v1, "\u8986\u76d6\u5f15\u5bfc\u7c7b\u6587\u4ef6\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v109

    const-string v0, "javac.opt.classpath"

    const-string v1, "\u6307\u5b9a\u67e5\u627e\u7528\u6237\u7c7b\u6587\u4ef6\u548c\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v110

    const-string v0, "javac.opt.d"

    const-string v1, "\u6307\u5b9a\u653e\u7f6e\u751f\u6210\u7684\u7c7b\u6587\u4ef6\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v111

    const-string v0, "javac.opt.default.module.for.created.files"

    const-string v1, "\u7531\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u521b\u5efa\u7684\u6587\u4ef6\u7684\u5907\u7528\u76ee\u6807\u6a21\u5757 (\u5982\u679c\u672a\u6307\u5b9a\u6216\u63a8\u65ad\u4efb\u4f55\u6a21\u5757)\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v112

    const-string v0, "javac.opt.deprecation"

    const-string v1, "\u8f93\u51fa\u4f7f\u7528\u5df2\u8fc7\u65f6\u7684 API \u7684\u6e90\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v113

    const-string v0, "javac.opt.diags"

    const-string v1, "\u9009\u62e9\u8bca\u65ad\u6a21\u5f0f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v114

    const-string v0, "javac.opt.doclint.format"

    const-string v1, "\u6307\u5b9a\u6587\u6863\u6ce8\u91ca\u7684\u683c\u5f0f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v115

    const-string v0, "javac.opt.encoding"

    const-string v1, "\u6307\u5b9a\u6e90\u6587\u4ef6\u4f7f\u7528\u7684\u5b57\u7b26\u7f16\u7801"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v116

    const-string v0, "javac.opt.endorseddirs"

    const-string v1, "\u8986\u76d6\u7b7e\u540d\u7684\u6807\u51c6\u8def\u5f84\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v117

    const-string v0, "javac.opt.extdirs"

    const-string v1, "\u8986\u76d6\u6240\u5b89\u88c5\u6269\u5c55\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v118

    const-string v0, "javac.opt.g"

    const-string v1, "\u751f\u6210\u6240\u6709\u8c03\u8bd5\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v119

    const-string v0, "javac.opt.g.lines.vars.source"

    const-string v1, "\u53ea\u751f\u6210\u67d0\u4e9b\u8c03\u8bd5\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v120

    const-string v0, "javac.opt.g.none"

    const-string v1, "\u4e0d\u751f\u6210\u4efb\u4f55\u8c03\u8bd5\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v121

    const-string v0, "javac.opt.headerDest"

    const-string v1, "\u6307\u5b9a\u653e\u7f6e\u751f\u6210\u7684\u672c\u673a\u6807\u5934\u6587\u4ef6\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v122

    const-string v0, "javac.opt.help"

    const-string v1, "\u8f93\u51fa\u6b64\u5e2e\u52a9\u6d88\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v123

    const-string v0, "javac.opt.implicit"

    const-string v1, "\u6307\u5b9a\u662f\u5426\u4e3a\u9690\u5f0f\u5f15\u7528\u6587\u4ef6\u751f\u6210\u7c7b\u6587\u4ef6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v124

    const-string v0, "javac.opt.inherit_runtime_environment"

    const-string v1, "\u4ece\u8fd0\u884c\u65f6\u73af\u5883\u7ee7\u627f\u6a21\u5757\u7cfb\u7edf\u914d\u7f6e\u9009\u9879\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v125

    const-string v0, "javac.opt.limitmods"

    const-string v1, "\u9650\u5236\u53ef\u89c2\u5bdf\u6a21\u5757\u7684\u9886\u57df"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v126

    const-string v0, "javac.opt.m"

    const-string v1, "\u53ea\u7f16\u8bd1\u6307\u5b9a\u7684\u6a21\u5757, \u8bf7\u68c0\u67e5\u65f6\u95f4\u6233"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v127

    const-string v0, "javac.opt.maxerrs"

    const-string v1, "\u8bbe\u7f6e\u8981\u8f93\u51fa\u7684\u9519\u8bef\u7684\u6700\u5927\u6570\u76ee"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v128

    const-string v0, "javac.opt.maxwarns"

    const-string v1, "\u8bbe\u7f6e\u8981\u8f93\u51fa\u7684\u8b66\u544a\u7684\u6700\u5927\u6570\u76ee"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v129

    const-string v0, "javac.opt.module.version"

    const-string v1, "\u6307\u5b9a\u6b63\u5728\u7f16\u8bd1\u7684\u6a21\u5757\u7248\u672c"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v130

    const-string v0, "javac.opt.modulepath"

    const-string v1, "\u6307\u5b9a\u67e5\u627e\u5e94\u7528\u7a0b\u5e8f\u6a21\u5757\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v131

    const-string v0, "javac.opt.modulesourcepath"

    const-string v1, "\u6307\u5b9a\u67e5\u627e\u591a\u4e2a\u6a21\u5757\u7684\u8f93\u5165\u6e90\u6587\u4ef6\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v132

    const-string v0, "javac.opt.moreinfo"

    const-string v1, "\u8f93\u51fa\u7c7b\u578b\u53d8\u91cf\u7684\u6269\u5c55\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v133

    const-string v0, "javac.opt.multi-release"

    const-string v1, "\u6307\u5b9a\u5728\u591a\u53d1\u884c\u7248 jar \u4e2d\u4f7f\u7528\u54ea\u4e2a\u53d1\u884c\u7248"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v134

    const-string v0, "javac.opt.nogj"

    const-string v1, "\u8bed\u8a00\u4e2d\u4e0d\u63a5\u53d7\u6cdb\u578b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v135

    const-string v0, "javac.opt.nowarn"

    const-string v1, "\u4e0d\u751f\u6210\u4efb\u4f55\u8b66\u544a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v136

    const-string v0, "javac.opt.parameters"

    const-string v1, "\u751f\u6210\u5143\u6570\u636e\u4ee5\u7528\u4e8e\u65b9\u6cd5\u53c2\u6570\u7684\u53cd\u5c04"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v137

    const-string v0, "javac.opt.patch"

    const-string v1, "\u4f7f\u7528 JAR \u6587\u4ef6\u6216\u76ee\u5f55\u4e2d\u7684\u7c7b\u548c\u8d44\u6e90\u8986\u76d6\n        \u6216\u589e\u5f3a\u6a21\u5757"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v138

    const-string v0, "javac.opt.pkginfo"

    const-string v1, "\u6307\u5b9a package-info \u6587\u4ef6\u7684\u5904\u7406"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v139

    const-string v0, "javac.opt.plugin"

    const-string v1, "\u8981\u8fd0\u884c\u7684\u63d2\u4ef6\u7684\u540d\u79f0\u548c\u53ef\u9009\u53c2\u6570"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v140

    const-string v0, "javac.opt.prefer"

    const-string v1, "\u6307\u5b9a\u8bfb\u53d6\u6587\u4ef6, \u5f53\u540c\u65f6\u627e\u5230\u9690\u5f0f\u7f16\u8bd1\u7c7b\u7684\u6e90\u6587\u4ef6\u548c\u7c7b\u6587\u4ef6\u65f6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v141

    const-string v0, "javac.opt.print"

    const-string v1, "\u8f93\u51fa\u6307\u5b9a\u7c7b\u578b\u7684\u6587\u672c\u8868\u793a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v142

    const-string v0, "javac.opt.printProcessorInfo"

    const-string v1, "\u8f93\u51fa\u6709\u5173\u8bf7\u6c42\u5904\u7406\u7a0b\u5e8f\u5904\u7406\u54ea\u4e9b\u6ce8\u91ca\u7684\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v143

    const-string v0, "javac.opt.printRounds"

    const-string v1, "\u8f93\u51fa\u6709\u5173\u6ce8\u91ca\u5904\u7406\u5faa\u73af\u7684\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v144

    const-string v0, "javac.opt.printsearch"

    const-string v1, "\u8f93\u51fa\u6709\u5173\u641c\u7d22\u7c7b\u6587\u4ef6\u7684\u4f4d\u7f6e\u7684\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v145

    const-string v0, "javac.opt.proc.none.only"

    const-string v1, "\u63a7\u5236\u662f\u5426\u6267\u884c\u6ce8\u91ca\u5904\u7406\u548c/\u6216\u7f16\u8bd1\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v146

    const-string v0, "javac.opt.processor"

    const-string v1, "\u8981\u8fd0\u884c\u7684\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u7684\u540d\u79f0; \u7ed5\u8fc7\u9ed8\u8ba4\u7684\u641c\u7d22\u8fdb\u7a0b"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v147

    const-string v0, "javac.opt.processormodulepath"

    const-string v1, "\u6307\u5b9a\u67e5\u627e\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u7684\u6a21\u5757\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v148

    const-string v0, "javac.opt.processorpath"

    const-string v1, "\u6307\u5b9a\u67e5\u627e\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v149

    const-string v0, "javac.opt.profile"

    const-string v1, "\u8bf7\u786e\u4fdd\u4f7f\u7528\u7684 API \u5728\u6307\u5b9a\u7684\u914d\u7f6e\u6587\u4ef6\u4e2d\u53ef\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v150

    const-string v0, "javac.opt.prompt"

    const-string v1, "\u5728\u6bcf\u6b21\u51fa\u9519\u540e\u505c\u6b62"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v151

    const-string v0, "javac.opt.release"

    const-string v1, "\u9488\u5bf9\u7279\u5b9a VM \u7248\u672c\u8fdb\u884c\u7f16\u8bd1\u3002\u652f\u6301\u7684\u76ee\u6807: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v152

    const-string v0, "javac.opt.s"

    const-string v1, "\u53d1\u51fa java \u6e90\u800c\u4e0d\u662f\u7c7b\u6587\u4ef6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v153

    const-string v0, "javac.opt.source"

    const-string v1, "\u63d0\u4f9b\u4e0e\u6307\u5b9a\u53d1\u884c\u7248\u7684\u6e90\u517c\u5bb9\u6027"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v154

    const-string v0, "javac.opt.sourceDest"

    const-string v1, "\u6307\u5b9a\u653e\u7f6e\u751f\u6210\u7684\u6e90\u6587\u4ef6\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v155

    const-string v0, "javac.opt.sourcepath"

    const-string v1, "\u6307\u5b9a\u67e5\u627e\u8f93\u5165\u6e90\u6587\u4ef6\u7684\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v156

    const-string v0, "javac.opt.system"

    const-string v1, "\u8986\u76d6\u7cfb\u7edf\u6a21\u5757\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v157

    const-string v0, "javac.opt.target"

    const-string v1, "\u751f\u6210\u7279\u5b9a VM \u7248\u672c\u7684\u7c7b\u6587\u4ef6"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v158

    const-string v0, "javac.opt.upgrademodulepath"

    const-string v1, "\u8986\u76d6\u53ef\u5347\u7ea7\u6a21\u5757\u4f4d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v159

    const-string v0, "javac.opt.userpathsfirst"

    const-string v1, "\u5728\u5f15\u5bfc\u7c7b\u8def\u5f84\u4e4b\u524d\u800c\u4e0d\u662f\u4e4b\u540e\u641c\u7d22\u7c7b\u7684\u7c7b\u8def\u5f84\u548c\u6e90\u8def\u5f84"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v160

    const-string v0, "javac.opt.verbose"

    const-string v1, "\u8f93\u51fa\u6709\u5173\u7f16\u8bd1\u5668\u6b63\u5728\u6267\u884c\u7684\u64cd\u4f5c\u7684\u6d88\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v161

    const-string v0, "javac.opt.version"

    const-string v1, "\u7248\u672c\u4fe1\u606f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v162

    const-string v0, "javac.version"

    const-string v1, "{0} {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v163

    const-string v0, "javac.warn.profile.target.conflict"

    const-string v1, "\u914d\u7f6e\u6587\u4ef6{0}\u5bf9\u4e8e\u76ee\u6807\u53d1\u884c\u7248 {1} \u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v164

    const-string v0, "javac.warn.source.target.conflict"

    const-string v1, "\u6e90\u53d1\u884c\u7248 {0} \u9700\u8981\u76ee\u6807\u53d1\u884c\u7248 {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v165

    const-string v0, "javac.warn.target.default.source.conflict"

    const-string v1, "\u76ee\u6807\u53d1\u884c\u7248 {0} \u4e0e\u9ed8\u8ba4\u7684\u6e90\u53d1\u884c\u7248 {1} \u51b2\u7a81"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v166

    move-object/from16 v2, v167

    move-object/from16 v3, v168

    filled-new-array/range {v2 .. v166}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
