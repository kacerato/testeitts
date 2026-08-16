.class public final Lorg/openjdk/tools/javac/resources/compiler_zh_CN;
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
    .locals 22

    const/16 v0, 0x2e3

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "compiler.err.abstract.cant.be.accessed.directly"

    const-string v2, "\u65e0\u6cd5\u76f4\u63a5\u8bbf\u95ee{2}\u4e2d\u7684\u62bd\u8c61{0} {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "compiler.err.abstract.cant.be.instantiated"

    const-string v2, "{0}\u662f\u62bd\u8c61\u7684; \u65e0\u6cd5\u5b9e\u4f8b\u5316"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "compiler.err.abstract.meth.cant.have.body"

    const-string v2, "\u62bd\u8c61\u65b9\u6cd5\u4e0d\u80fd\u6709\u4e3b\u4f53"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "compiler.err.add.exports.with.release"

    const-string v2, "\u4e0d\u5141\u8bb8\u5728\u4f7f\u7528 --release \u65f6\u4ece\u7cfb\u7edf\u6a21\u5757 {0} \u5bfc\u51fa\u7a0b\u5e8f\u5305:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "compiler.err.add.reads.with.release"

    const-string v2, "\u4e0d\u5141\u8bb8\u5728\u4f7f\u7528 --release \u65f6\u4e3a\u7cfb\u7edf\u6a21\u5757 {0} \u6dfb\u52a0\u8bfb\u53d6\u7ef4\u8fb9:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "compiler.err.addmods.all.module.path.invalid"

    const-string v2, "--add-modules ALL-MODULE-PATH \u53ea\u80fd\u5728\u7f16\u8bd1\u672a\u547d\u540d\u6a21\u5757\u65f6\u4f7f\u7528"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.annotated"

    const-string v2, "{0} {1}\u5df2\u8fdb\u884c\u6ce8\u91ca"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined"

    const-string v2, "\u5df2\u5728{2} {3}\u4e2d\u5b9a\u4e49\u4e86{0} {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.in.clinit"

    const-string v2, "\u5df2\u5728{3} {4}\u7684{2}\u4e2d\u5b9a\u4e49\u4e86{0} {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.single.import"

    const-string v2, "{0}\u7684 single-type-import \u5df2\u5b9a\u4e49\u5177\u6709\u76f8\u540c\u7b80\u540d\u7684\u7c7b\u578b"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.static.single.import"

    const-string v2, "{0}\u7684\u9759\u6001 single-type-import \u5df2\u5b9a\u4e49\u5177\u6709\u76f8\u540c\u7b80\u540d\u7684\u7c7b\u578b"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.this.unit"

    const-string v2, "\u5df2\u5728\u8be5\u7f16\u8bd1\u5355\u5143\u4e2d\u5b9a\u4e49{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.missing.default.value"

    const-string v2, "\u5bf9\u4e8e\u5143\u7d20 \'\'{1}\'\', \u6ce8\u91ca @{0} \u7f3a\u5c11\u9ed8\u8ba4\u503c"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.missing.default.value.1"

    const-string v2, "\u5bf9\u4e8e\u5143\u7d20{1}, \u6ce8\u91ca @{0} \u7f3a\u5c11\u9ed8\u8ba4\u503c"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.not.valid.for.type"

    const-string v2, "\u6ce8\u91ca\u5bf9\u4e8e\u7c7b\u578b{0}\u7684\u5143\u7d20\u65e0\u6548"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.type.not.applicable"

    const-string v2, "\u6ce8\u91ca\u7c7b\u578b\u4e0d\u9002\u7528\u4e8e\u8be5\u7c7b\u578b\u7684\u58f0\u660e"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.type.not.applicable.to.type"

    const-string v2, "\u6ce8\u91ca @{0} \u5728\u6b64\u7c7b\u578b\u4e0a\u4e0b\u6587\u4e2d\u4e0d\u9002\u7528"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.value.must.be.annotation"

    const-string v2, "\u6ce8\u91ca\u503c\u5fc5\u987b\u4e3a\u6ce8\u91ca"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.value.must.be.class.literal"

    const-string v2, "\u6ce8\u91ca\u503c\u5fc5\u987b\u4e3a\u7c7b\u6587\u5b57"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.value.must.be.name.value"

    const-string v2, "\u6ce8\u91ca\u503c\u5fc5\u987b\u91c7\u7528 \'\'name=value\'\' \u683c\u5f0f"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.value.not.allowable.type"

    const-string v2, "\u6ce8\u91ca\u503c\u4e0d\u662f\u5141\u8bb8\u7684\u7c7b\u578b"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotations.after.type.params.not.supported.in.source"

    const-string v2, "-source {0} \u4e2d\u4e0d\u652f\u6301\u65b9\u6cd5\u7c7b\u578b\u53c2\u6570\u540e\u7684\u6ce8\u91ca\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u65b9\u6cd5\u7c7b\u578b\u53c2\u6570\u540e\u7684\u6ce8\u91ca)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anon.class.impl.intf.no.args"

    const-string v2, "\u533f\u540d\u7c7b\u5b9e\u73b0\u63a5\u53e3; \u4e0d\u80fd\u6709\u53c2\u6570"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anon.class.impl.intf.no.qual.for.new"

    const-string v2, "\u533f\u540d\u7c7b\u5b9e\u73b0\u63a5\u53e3; \u4e0d\u80fd\u6709\u9650\u5b9a\u7b26 - \u5bf9\u4e8e\u65b0"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anon.class.impl.intf.no.typeargs"

    const-string v2, "\u533f\u540d\u7c7b\u5b9e\u73b0\u63a5\u53e3; \u4e0d\u80fd\u5177\u6709\u7c7b\u578b\u53c2\u6570"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anonymous.diamond.method.does.not.override.superclass"

    const-string v2, "\u65b9\u6cd5\u4e0d\u4f1a\u8986\u76d6\u6216\u5b9e\u73b0\u8d85\u7c7b\u578b\u4e2d\u7684\u65b9\u6cd5\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.and.receiver"

    const-string v2, "\u63a5\u6536\u65b9\u53c2\u6570\u4e0d\u5141\u8bb8\u4f7f\u7528\u4f20\u7edf\u6570\u7ec4\u8bb0\u53f7"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.and.varargs"

    const-string v2, "\u65e0\u6cd5\u5728{2}\u4e2d\u540c\u65f6\u58f0\u660e{0}\u548c{1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.dimension.missing"

    const-string v2, "\u7f3a\u5c11\u6570\u7ec4\u7ef4"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.req.but.found"

    const-string v2, "\u9700\u8981\u6570\u7ec4, \u4f46\u627e\u5230{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.assert.as.identifier"

    const-string v2, "\u4ece\u53d1\u884c\u7248 1.4 \u5f00\u59cb, \'\'assert\'\' \u4e3a\u5173\u952e\u5b57, \u4e0d\u80fd\u7528\u4f5c\u6807\u8bc6\u7b26"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.attribute.value.must.be.constant"

    const-string v2, "\u5143\u7d20\u503c\u5fc5\u987b\u4e3a\u5e38\u91cf\u8868\u8fbe\u5f0f"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.functional.intf.anno"

    const-string v2, "\u610f\u5916\u7684 @FunctionalInterface \u6ce8\u91ca"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.functional.intf.anno.1"

    const-string v2, "\u610f\u5916\u7684 @FunctionalInterface \u6ce8\u91ca\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.initializer"

    const-string v2, "{0}\u7684\u521d\u59cb\u5316\u7a0b\u5e8f\u9519\u8bef"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.name.for.option"

    const-string v2, "{0} \u9009\u9879\u7684\u503c\u4e2d\u6709\u9519\u8bef\u7684\u540d\u79f0: \'\'{1}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23

    aput-object v1, v0, v3

    const-string v1, "compiler.err.break.outside.switch.loop"

    const-string v3, "\u5728 switch \u6216 loop \u5916\u90e8\u4e2d\u65ad"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24

    aput-object v1, v0, v3

    const-string v1, "compiler.err.call.must.be.first.stmt.in.ctor"

    const-string v3, "\u5bf9{0}\u7684\u8c03\u7528\u5fc5\u987b\u662f\u6784\u9020\u5668\u4e2d\u7684\u7b2c\u4e00\u4e2a\u8bed\u53e5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25

    aput-object v1, v0, v3

    const-string v1, "compiler.err.call.to.super.not.allowed.in.enum.ctor"

    const-string v3, "\u5728\u679a\u4e3e\u6784\u9020\u5668\u4e2d\u4e0d\u5141\u8bb8\u8c03\u7528\u8d85\u7c7b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26

    aput-object v1, v0, v3

    const-string v1, "compiler.err.cannot.create.array.with.diamond"

    const-string v3, "\u65e0\u6cd5\u521b\u5efa\u5177\u6709 \'\'<>\'\' \u7684\u6570\u7ec4"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27

    aput-object v1, v0, v3

    const-string v1, "compiler.err.cannot.create.array.with.type.arguments"

    const-string v3, "\u65e0\u6cd5\u521b\u5efa\u5177\u6709\u7c7b\u578b\u53d8\u91cf\u7684\u6570\u7ec4"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28

    aput-object v1, v0, v3

    const-string v1, "compiler.err.cant.access"

    const-string v3, "\u65e0\u6cd5\u8bbf\u95ee{0}\n{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x29

    aput-object v1, v0, v4

    const-string v1, "compiler.err.cant.apply.diamond"

    const-string v4, "\u65e0\u6cd5\u63a8\u65ad{0}\u7684\u7c7b\u578b\u53c2\u6570"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    const-string v1, "compiler.err.cant.apply.diamond.1"

    const-string v4, "\u65e0\u6cd5\u63a8\u65ad{0}\u7684\u7c7b\u578b\u53c2\u6570\n\u539f\u56e0: {1}"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x2b

    aput-object v1, v0, v5

    const-string v1, "compiler.err.cant.apply.symbol"

    const-string v5, "\u65e0\u6cd5\u5c06{4} {5}\u4e2d\u7684{0} {1}\u5e94\u7528\u5230\u7ed9\u5b9a\u7c7b\u578b;\n\u9700\u8981: {2}\n\u627e\u5230: {3}\n\u539f\u56e0: {6}"

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x2c

    aput-object v1, v0, v5

    const-string v1, "compiler.err.cant.apply.symbols"

    const-string v5, "\u5bf9\u4e8e{1}({2}), \u627e\u4e0d\u5230\u5408\u9002\u7684{0}"

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x2d

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.assign.val.to.final.var"

    const-string v6, "\u65e0\u6cd5\u4e3a\u6700\u7ec8\u53d8\u91cf{0}\u5206\u914d\u503c"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x2e

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.assign.val.to.this"

    const-string v6, "\u65e0\u6cd5\u5206\u914d\u7ed9 \'\'this\'\'"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x2f

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.deref"

    const-string v6, "\u65e0\u6cd5\u53d6\u6d88\u5f15\u7528{0}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x30

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.extend.intf.annotation"

    const-string v6, "\u5bf9\u4e8e @interfaces, \u4e0d\u5141\u8bb8 \'\'extends\'\'"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x31

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.inherit.diff.arg"

    const-string v6, "\u65e0\u6cd5\u4f7f\u7528\u4ee5\u4e0b\u4e0d\u540c\u7684\u53c2\u6570\u7ee7\u627f{0}: <{1}> \u548c <{2}>"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x32

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.inherit.from.anon"

    const-string v6, "\u65e0\u6cd5\u4ece\u533f\u540d\u7c7b\u7ee7\u627f"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x33

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.inherit.from.final"

    const-string v6, "\u65e0\u6cd5\u4ece\u6700\u7ec8{0}\u8fdb\u884c\u7ee7\u627f"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x34

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.read.file"

    const-string v6, "\u65e0\u6cd5\u8bfb\u53d6: {0}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x35

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.ref.before.ctor.called"

    const-string v6, "\u65e0\u6cd5\u5728\u8c03\u7528\u8d85\u7c7b\u578b\u6784\u9020\u5668\u4e4b\u524d\u5f15\u7528{0}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x36

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.ref.non.effectively.final.var"

    const-string v6, "\u4ece{1}\u5f15\u7528\u7684\u672c\u5730\u53d8\u91cf\u5fc5\u987b\u662f\u6700\u7ec8\u53d8\u91cf\u6216\u5b9e\u9645\u4e0a\u7684\u6700\u7ec8\u53d8\u91cf"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x37

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve"

    const-string v6, "\u627e\u4e0d\u5230\u7b26\u53f7\n\u7b26\u53f7: {0} {1}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x38

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.args"

    const-string v6, "\u627e\u4e0d\u5230\u7b26\u53f7\n\u7b26\u53f7: {0} {1}({3})"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x39

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.args.params"

    const-string v6, "\u627e\u4e0d\u5230\u7b26\u53f7\n\u7b26\u53f7: {0} <{2}>{1}({3})"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x3a

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.location"

    const-string v6, "\u627e\u4e0d\u5230\u7b26\u53f7\n\u7b26\u53f7:   {0} {1}\n\u4f4d\u7f6e: {4}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x3b

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.location.args"

    const-string v6, "\u627e\u4e0d\u5230\u7b26\u53f7\n\u7b26\u53f7:   {0} {1}({3})\n\u4f4d\u7f6e: {4}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v7, 0x3c

    aput-object v1, v0, v7

    const-string v1, "compiler.err.cant.resolve.location.args.params"

    const-string v7, "\u627e\u4e0d\u5230\u7b26\u53f7\n\u7b26\u53f7:   {0} <{2}>{1}({3})\n\u4f4d\u7f6e: {4}"

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x3d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cant.select.static.class.from.param.type"

    const-string v8, "\u65e0\u6cd5\u4ece\u53c2\u6570\u5316\u7684\u7c7b\u578b\u4e2d\u9009\u62e9\u9759\u6001\u7c7b"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x3e

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cant.type.annotate.scoping"

    const-string v8, "\u65e0\u6cd5\u4f7f\u7528 type-use \u6ce8\u91ca {0} \u6765\u6ce8\u91ca\u786e\u5b9a\u4f5c\u7528\u57df\u7ed3\u6784"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x3f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.cant.type.annotate.scoping.1"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x40

    aput-object v1, v0, v8

    const-string v1, "compiler.err.catch.without.try"

    const-string v8, "\u6709 \'\'catch\'\', \u4f46\u662f\u6ca1\u6709 \'\'try\'\'"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x41

    aput-object v1, v0, v8

    const-string v1, "compiler.err.clash.with.pkg.of.same.name"

    const-string v8, "{0} {1}\u4e0e\u5e26\u6709\u76f8\u540c\u540d\u79f0\u7684\u7a0b\u5e8f\u5305\u51b2\u7a81"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x42

    aput-object v1, v0, v8

    const-string v1, "compiler.err.class.cant.write"

    const-string v8, "\u5199\u5165{0}\u65f6\u51fa\u9519: {1}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x43

    aput-object v1, v0, v8

    const-string v1, "compiler.err.class.not.allowed"

    const-string v8, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528\u7c7b, \u63a5\u53e3\u6216\u679a\u4e3e\u58f0\u660e"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x44

    aput-object v1, v0, v8

    const-string v1, "compiler.err.class.public.should.be.in.file"

    const-string v8, "{0} {1} \u662f\u516c\u5171\u7684, \u5e94\u5728\u540d\u4e3a {1}.java \u7684\u6587\u4ef6\u4e2d\u58f0\u660e"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x45

    aput-object v1, v0, v8

    const-string v1, "compiler.err.concrete.inheritance.conflict"

    const-string v8, "{1}\u4e2d\u7684\u65b9\u6cd5{0}\u548c{3}\u4e2d\u7684\u65b9\u6cd5{2}\u662f\u4f7f\u7528\u76f8\u540c\u7684\u7b7e\u540d\u7ee7\u627f\u7684"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x46

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.exports"

    const-string v8, "\u91cd\u590d\u6216\u51b2\u7a81\u7684\u5bfc\u51fa\u64cd\u4f5c: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x47

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.exports.to.module"

    const-string v8, "\u91cd\u590d\u6216\u51b2\u7a81\u7684\u5bfc\u51fa\u5230\u6a21\u5757\u64cd\u4f5c: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x48

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.opens"

    const-string v8, "\u91cd\u590d\u6216\u51b2\u7a81\u7684\u6253\u5f00\u64cd\u4f5c: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x49

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.opens.to.module"

    const-string v8, "\u91cd\u590d\u6216\u51b2\u7a81\u7684\u6253\u5f00\u5230\u6a21\u5757\u64cd\u4f5c: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4a

    aput-object v1, v0, v8

    const-string v1, "compiler.err.const.expr.req"

    const-string v8, "\u9700\u8981\u5e38\u91cf\u8868\u8fbe\u5f0f"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4b

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cont.outside.loop"

    const-string v8, "continue \u5728 loop \u5916\u90e8"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4c

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cyclic.annotation.element"

    const-string v8, "\u5143\u7d20 {0} \u7684\u7c7b\u578b\u4e3a\u5faa\u73af"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cyclic.inheritance"

    const-string v8, "\u6d89\u53ca{0}\u7684\u5faa\u73af\u7ee7\u627f"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4e

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cyclic.requires"

    const-string v8, "\u6d89\u53ca {0} \u7684\u5faa\u73af\u88ab\u4f9d\u8d56\u5bf9\u8c61"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4f

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.bad.entity"

    const-string v8, "HTML \u5b9e\u4f53\u9519\u8bef"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x50

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.bad.gt"

    const-string v8, "\'\'>\'\' \u7684\u7528\u6cd5\u9519\u8bef"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x51

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.bad.inline.tag"

    const-string v8, "\u5185\u5d4c\u6807\u8bb0\u7684\u7528\u6cd5\u4e0d\u6b63\u786e"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x52

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.gt.expected"

    const-string v8, "\u9700\u8981 \'\'>\'\'"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x53

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.identifier.expected"

    const-string v8, "\u9700\u8981\u6807\u8bc6\u7b26"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x54

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.malformed.html"

    const-string v8, "\u683c\u5f0f\u9519\u8bef\u7684 HTML"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x55

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.missing.semicolon"

    const-string v8, "\u7f3a\u5c11\u5206\u53f7"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x56

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.no.content"

    const-string v8, "\u65e0\u5185\u5bb9"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x57

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.no.tag.name"

    const-string v8, "\'@\' \u540e\u6ca1\u6709\u6807\u8bb0\u540d"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x58

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.ref.bad.parens"

    const-string v8, "\u5f15\u7528\u4e2d\u7f3a\u5c11 \'\')\'\'"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x59

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.ref.syntax.error"

    const-string v8, "\u5f15\u7528\u4e2d\u51fa\u73b0\u8bed\u6cd5\u9519\u8bef"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5a

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.ref.unexpected.input"

    const-string v8, "\u610f\u5916\u7684\u6587\u672c"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5b

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unexpected.content"

    const-string v8, "\u610f\u5916\u7684\u5185\u5bb9"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5c

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unterminated.inline.tag"

    const-string v8, "\u672a\u7ec8\u6b62\u7684\u5185\u5d4c\u6807\u8bb0"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unterminated.signature"

    const-string v8, "\u672a\u7ec8\u6b62\u7684\u7b7e\u540d"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5e

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unterminated.string"

    const-string v8, "\u672a\u7ec8\u6b62\u7684\u5b57\u7b26\u4e32"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5f

    aput-object v1, v0, v8

    const-string v1, "compiler.err.default.allowed.in.intf.annotation.member"

    const-string v8, "\u6ce8\u91ca\u7c7b\u578b\u58f0\u660e\u4e2d\u4ec5\u5141\u8bb8\u9ed8\u8ba4\u503c"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x60

    aput-object v1, v0, v8

    const-string v1, "compiler.err.default.methods.not.supported.in.source"

    const-string v8, "-source {0} \u4e2d\u4e0d\u652f\u6301\u9ed8\u8ba4\u65b9\u6cd5\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u9ed8\u8ba4\u65b9\u6cd5)"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x61

    aput-object v1, v0, v8

    const-string v1, "compiler.err.default.overrides.object.member"

    const-string v8, "{1} {2} \u4e2d\u7684\u9ed8\u8ba4\u65b9\u6cd5{0}\u8986\u76d6\u4e86 java.lang.Object \u7684\u6210\u5458"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x62

    aput-object v1, v0, v8

    const-string v1, "compiler.err.diamond.not.supported.in.source"

    const-string v8, "-source {0} \u4e2d\u4e0d\u652f\u6301 diamond \u8fd0\u7b97\u7b26\n(\u8bf7\u4f7f\u7528 -source 7 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528 diamond \u8fd0\u7b97\u7b26)"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x63

    aput-object v1, v0, v8

    const-string v1, "compiler.err.does.not.override.abstract"

    const-string v8, "{0}\u4e0d\u662f\u62bd\u8c61\u7684, \u5e76\u4e14\u672a\u8986\u76d6{2}\u4e2d\u7684\u62bd\u8c61\u65b9\u6cd5{1}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x64

    aput-object v1, v0, v8

    const-string v1, "compiler.err.doesnt.exist"

    const-string v8, "\u7a0b\u5e8f\u5305{0}\u4e0d\u5b58\u5728"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x65

    aput-object v1, v0, v9

    const-string v1, "compiler.err.dot.class.expected"

    const-string v9, "\u9700\u8981 \'\'.class\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x66

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.annotation.invalid.repeated"

    const-string v9, "\u6ce8\u91ca{0}\u4e0d\u662f\u6709\u6548\u7684\u53ef\u91cd\u590d\u6ce8\u91ca"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x67

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.annotation.member.value"

    const-string v9, "\u6ce8\u91ca@{1}\u4e2d\u7684\u5143\u7d20 \'\'{0}\'\' \u91cd\u590d\u3002"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x68

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.annotation.missing.container"

    const-string v9, "{0} \u4e0d\u662f\u53ef\u91cd\u590d\u7684\u6ce8\u91ca\u7c7b\u578b"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x69

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.case.label"

    const-string v9, "case \u6807\u7b7e\u91cd\u590d"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.class"

    const-string v9, "\u7c7b\u91cd\u590d: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.default.label"

    const-string v9, "default \u6807\u7b7e\u91cd\u590d"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.module"

    const-string v9, "\u91cd\u590d\u7684\u6a21\u5757: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.module.on.path"

    const-string v9, "{1} \u4e2d\u7684 {0} \u4e0a\u5b58\u5728\n\u91cd\u590d\u7684\u6a21\u5757"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.provides"

    const-string v9, "\u91cd\u590d\u7684 provides \u6307\u4ee4: \u670d\u52a1 {0}, \u5b9e\u73b0 {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.requires"

    const-string v9, "\u91cd\u590d\u7684 requires \u6307\u4ee4: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x70

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.uses"

    const-string v9, "\u91cd\u590d\u7684 uses \u6307\u4ee4: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x71

    aput-object v1, v0, v9

    const-string v1, "compiler.err.else.without.if"

    const-string v9, "\u6709 \'\'if\'\', \u4f46\u662f\u6ca1\u6709 \'\'else\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x72

    aput-object v1, v0, v9

    const-string v1, "compiler.err.empty.char.lit"

    const-string v9, "\u7a7a\u5b57\u7b26\u6587\u5b57"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x73

    aput-object v1, v0, v9

    const-string v1, "compiler.err.encl.class.required"

    const-string v9, "\u9700\u8981\u5305\u542b{0}\u7684\u5c01\u95ed\u5b9e\u4f8b"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x74

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.annotation.must.be.enum.constant"

    const-string v9, "\u679a\u4e3e\u6ce8\u91ca\u503c\u5fc5\u987b\u662f\u679a\u4e3e\u5e38\u91cf"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x75

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.as.identifier"

    const-string v9, "\u4ece\u53d1\u884c\u7248 5 \u5f00\u59cb, \'\'enum\'\' \u4e3a\u5173\u952e\u5b57, \u4e0d\u80fd\u7528\u4f5c\u6807\u8bc6\u7b26"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x76

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.cant.be.instantiated"

    const-string v9, "\u65e0\u6cd5\u5b9e\u4f8b\u5316\u679a\u4e3e\u7c7b\u578b"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x77

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.label.must.be.unqualified.enum"

    const-string v9, "\u679a\u4e3e switch case \u6807\u7b7e\u5fc5\u987b\u4e3a\u679a\u4e3e\u5e38\u91cf\u7684\u975e\u9650\u5b9a\u540d\u79f0"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x78

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.no.finalize"

    const-string v9, "\u679a\u4e3e\u4e0d\u80fd\u6709 finalize \u65b9\u6cd5"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x79

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.no.subclassing"

    const-string v9, "\u7c7b\u65e0\u6cd5\u76f4\u63a5\u6269\u5c55 java.lang.Enum"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.types.not.extensible"

    const-string v9, "\u679a\u4e3e\u7c7b\u578b\u4e0d\u53ef\u7ee7\u627f"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enums.must.be.static"

    const-string v9, "\u53ea\u6709\u5728\u9759\u6001\u4e0a\u4e0b\u6587\u4e2d\u624d\u5141\u8bb8\u4f7f\u7528\u679a\u4e3e\u58f0\u660e"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.error"

    const-string v9, "\u9519\u8bef: "

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.error.reading.file"

    const-string v9, "\u8bfb\u53d6{0}\u65f6\u51fa\u9519; {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.except.already.caught"

    const-string v9, "\u5df2\u6355\u83b7\u5230\u5f02\u5e38\u9519\u8bef{0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.except.never.thrown.in.try"

    const-string v9, "\u5728\u76f8\u5e94\u7684 try \u8bed\u53e5\u4e3b\u4f53\u4e2d\u4e0d\u80fd\u629b\u51fa\u5f02\u5e38\u9519\u8bef{0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x80

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected"

    const-string v9, "\u9700\u8981{0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x81

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected.module"

    const-string v9, "\u9884\u671f \'\'module\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x82

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected.module.or.open"

    const-string v9, "\u9700\u8981 \'\'module\'\' \u6216 \'\'open\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x83

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected2"

    const-string v9, "\u9700\u8981{0}\u6216{1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x84

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected3"

    const-string v9, "\u9700\u8981{0}, {1}\u6216{2}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x85

    aput-object v1, v0, v9

    const-string v1, "compiler.err.file.patched.and.msp"

    const-string v9, "\u53ef\u4ece --patch-module \u548c --module-source-path \u8bbf\u95ee\u6587\u4ef6, \u4f46\u8be5\u6587\u4ef6\u5728\u6bcf\u4e2a\u8def\u5f84\u4e2d\u5c5e\u4e8e\u4e0d\u540c\u7684\u6a21\u5757: {0}, {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x86

    aput-object v1, v0, v9

    const-string v1, "compiler.err.file.sb.on.source.or.patch.path.for.module"

    const-string v9, "\u6587\u4ef6\u5e94\u5728\u6e90\u8def\u5f84\u6216\u6a21\u5757\u7684\u8865\u4e01\u7a0b\u5e8f\u8def\u5f84\u4e2d"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x87

    aput-object v1, v0, v9

    const-string v1, "compiler.err.final.parameter.may.not.be.assigned"

    const-string v9, "\u4e0d\u80fd\u5206\u914d\u6700\u7ec8\u53c2\u6570{0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x88

    aput-object v1, v0, v9

    const-string v1, "compiler.err.finally.without.try"

    const-string v9, "\u6709 \'\'finally\'\', \u4f46\u662f\u6ca1\u6709 \'\'try\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x89

    aput-object v1, v0, v9

    const-string v1, "compiler.err.foreach.not.applicable.to.type"

    const-string v9, "for-each \u4e0d\u9002\u7528\u4e8e\u8868\u8fbe\u5f0f\u7c7b\u578b\n\u8981\u6c42: {1}\n\u627e\u5230:    {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.fp.number.too.large"

    const-string v9, "\u6d6e\u70b9\u6570\u8fc7\u5927"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.fp.number.too.small"

    const-string v9, "\u6d6e\u70b9\u6570\u8fc7\u5c0f"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.generic.array.creation"

    const-string v9, "\u521b\u5efa\u6cdb\u578b\u6570\u7ec4"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.generic.throwable"

    const-string v9, "\u6cdb\u578b\u7c7b\u4e0d\u80fd\u6269\u5c55 java.lang.Throwable"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.icls.cant.have.static.decl"

    const-string v9, "\u5185\u90e8\u7c7b{0}\u4e2d\u7684\u9759\u6001\u58f0\u660e\u975e\u6cd5\n\u4fee\u9970\u7b26 \'\'static\'\' \u4ec5\u5141\u8bb8\u5728\u5e38\u91cf\u53d8\u91cf\u58f0\u660e\u4e2d\u4f7f\u7528"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.argument.for.option"

    const-string v9, "{0} \u7684\u53c2\u6570\u975e\u6cd5: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x90

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.char"

    const-string v9, "\u975e\u6cd5\u5b57\u7b26: \'\'{0}\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x91

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.char.for.encoding"

    const-string v9, "\u7f16\u7801 {1} \u7684\u4e0d\u53ef\u6620\u5c04\u5b57\u7b26 (0x{0})"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x92

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.combination.of.modifiers"

    const-string v9, "\u975e\u6cd5\u7684\u4fee\u9970\u7b26\u7ec4\u5408: {0}\u548c{1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x93

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.default.super.call"

    const-string v9, "\u9ed8\u8ba4\u8d85\u7ea7\u8c03\u7528\u4e2d\u7684\u7c7b\u578b\u9650\u5b9a\u7b26{0}\u9519\u8bef\n{1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x94

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.dot"

    const-string v9, "\u975e\u6cd5 \'\'.\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x95

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.enum.static.ref"

    const-string v9, "\u521d\u59cb\u5316\u7a0b\u5e8f\u4e2d\u5bf9\u9759\u6001\u5b57\u6bb5\u7684\u5f15\u7528\u4e0d\u5408\u6cd5"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x96

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.esc.char"

    const-string v9, "\u975e\u6cd5\u8f6c\u4e49\u7b26"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x97

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.forward.ref"

    const-string v9, "\u975e\u6cd5\u524d\u5411\u5f15\u7528"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x98

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.generic.type.for.instof"

    const-string v9, "instanceof \u7684\u6cdb\u578b\u7c7b\u578b\u4e0d\u5408\u6cd5"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x99

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.initializer.for.type"

    const-string v9, "{0}\u7684\u521d\u59cb\u5316\u7a0b\u5e8f\u4e0d\u5408\u6cd5"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.line.end.in.char.lit"

    const-string v9, "\u5b57\u7b26\u6587\u5b57\u7684\u884c\u7ed3\u5c3e\u4e0d\u5408\u6cd5"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.nonascii.digit"

    const-string v9, "\u975e\u6cd5\u7684\u975e ASCII \u6570\u5b57"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.qual.not.icls"

    const-string v9, "\u975e\u6cd5\u9650\u5b9a\u7b26; {0}\u4e0d\u662f\u5185\u90e8\u7c7b"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.self.ref"

    const-string v9, "\u521d\u59cb\u5316\u7a0b\u5e8f\u4e2d\u5b58\u5728\u81ea\u5f15\u7528"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.start.of.expr"

    const-string v9, "\u975e\u6cd5\u7684\u8868\u8fbe\u5f0f\u5f00\u59cb"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.start.of.stmt"

    const-string v9, "\u975e\u6cd5\u7684\u8bed\u53e5\u5f00\u59cb"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa0

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.start.of.type"

    const-string v9, "\u975e\u6cd5\u7684\u7c7b\u578b\u5f00\u59cb"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa1

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.static.intf.meth.call"

    const-string v9, "\u9759\u6001\u63a5\u53e3\u65b9\u6cd5\u8c03\u7528\u975e\u6cd5\n\u5e94\u5c06\u63a5\u6536\u65b9\u8868\u8fbe\u5f0f\u66ff\u6362\u4e3a\u7c7b\u578b\u9650\u5b9a\u7b26 \'\'{0}\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa2

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.underscore"

    const-string v9, "\u975e\u6cd5\u4e0b\u5212\u7ebf"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa3

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.unicode.esc"

    const-string v9, "\u975e\u6cd5\u7684 Unicode \u8f6c\u4e49"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa4

    aput-object v1, v0, v9

    const-string v1, "compiler.err.import.requires.canonical"

    const-string v9, "\u5bfc\u5165\u9700\u8981{0}\u7684\u89c4\u8303\u540d\u79f0"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa5

    aput-object v1, v0, v9

    const-string v1, "compiler.err.improperly.formed.type.inner.raw.param"

    const-string v9, "\u7c7b\u578b\u7684\u683c\u5f0f\u4e0d\u6b63\u786e, \u7ed9\u51fa\u4e86\u539f\u59cb\u7c7b\u578b\u7684\u7c7b\u578b\u53c2\u6570"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa6

    aput-object v1, v0, v9

    const-string v1, "compiler.err.improperly.formed.type.param.missing"

    const-string v9, "\u7c7b\u578b\u7684\u683c\u5f0f\u4e0d\u6b63\u786e, \u7f3a\u5c11\u67d0\u4e9b\u53c2\u6570"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa7

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incomparable.types"

    const-string v9, "\u4e0d\u53ef\u6bd4\u8f83\u7684\u7c7b\u578b: {0}\u548c{1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa8

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incompatible.thrown.types.in.mref"

    const-string v9, "\u65b9\u6cd5\u5f15\u7528\u4e2d\u629b\u51fa\u7684\u7c7b\u578b{0}\u4e0d\u517c\u5bb9"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa9

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.constructor.receiver.name"

    const-string v9, "\u63a5\u6536\u65b9\u540d\u79f0\u4e0e\u5916\u90e8\u5c01\u95ed\u7c7b\u7c7b\u578b\u4e0d\u5339\u914d\n\u9700\u8981: {0}\n\u627e\u5230: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xaa

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.constructor.receiver.type"

    const-string v9, "\u63a5\u6536\u65b9\u7c7b\u578b\u4e0e\u5916\u90e8\u5c01\u95ed\u7c7b\u7c7b\u578b\u4e0d\u5339\u914d\n\u9700\u8981: {0}\n\u627e\u5230: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xab

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.receiver.name"

    const-string v9, "\u63a5\u6536\u65b9\u540d\u79f0\u4e0e\u5c01\u95ed\u7c7b\u7c7b\u578b\u4e0d\u5339\u914d\n\u9700\u8981: {0}\n\u627e\u5230: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xac

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.receiver.type"

    const-string v9, "\u63a5\u6536\u65b9\u7c7b\u578b\u4e0e\u5c01\u95ed\u7c7b\u7c7b\u578b\u4e0d\u5339\u914d\n\u9700\u8981: {0}\n\u627e\u5230: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xad

    aput-object v1, v0, v9

    const-string v1, "compiler.err.initializer.must.be.able.to.complete.normally"

    const-string v9, "\u521d\u59cb\u5316\u7a0b\u5e8f\u5fc5\u987b\u80fd\u591f\u6b63\u5e38\u5b8c\u6210"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xae

    aput-object v1, v0, v9

    const-string v1, "compiler.err.initializer.not.allowed"

    const-string v9, "\u63a5\u53e3\u4e2d\u4e0d\u5141\u8bb8\u6709\u521d\u59cb\u5316\u7a0b\u5e8f"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xaf

    aput-object v1, v0, v9

    const-string v1, "compiler.err.int.number.too.large"

    const-string v9, "\u8fc7\u5927\u7684\u6574\u6570: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb0

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intersection.types.in.cast.not.supported.in.source"

    const-string v9, "-source {0} \u4e2d\u4e0d\u652f\u6301\u8f6c\u6362\u4e2d\u7684\u4ea4\u53c9\u7c7b\u578b\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u8f6c\u6362\u4e2d\u7684\u4ea4\u53c9\u7c7b\u578b)"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb1

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.cant.have.type.params"

    const-string v9, "\u6ce8\u91ca\u7c7b\u578b {0} \u4e0d\u80fd\u4e3a\u6cdb\u578b"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb2

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.member.clash"

    const-string v9, "\u6ce8\u91ca\u7c7b\u578b{1}\u58f0\u660e\u4e0e\u65b9\u6cd5 {0} \u540c\u540d\u7684\u5143\u7d20"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb3

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.members.cant.have.params"

    const-string v9, "\u6ce8\u91ca\u7c7b\u578b\u58f0\u660e\u4e2d\u7684\u5143\u7d20\u65e0\u6cd5\u58f0\u660e\u5f62\u53c2"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb4

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.members.cant.have.type.params"

    const-string v9, "\u6ce8\u91ca\u7c7b\u578b\u58f0\u660e\u4e2d\u7684\u5143\u7d20\u4e0d\u80fd\u4e3a\u6cdb\u578b\u65b9\u6cd5"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb5

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.expected.here"

    const-string v9, "\u6b64\u5904\u9700\u8981\u63a5\u53e3"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb6

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.meth.cant.have.body"

    const-string v9, "\u63a5\u53e3\u62bd\u8c61\u65b9\u6cd5\u4e0d\u80fd\u5e26\u6709\u4e3b\u4f53"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb7

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.not.allowed.here"

    const-string v9, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528\u63a5\u53e3"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb8

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.annotation.member.type"

    const-string v9, "\u6ce8\u91ca\u7c7b\u578b\u5143\u7d20 {0} \u7684\u7c7b\u578b\u65e0\u6548"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb9

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.binary.number"

    const-string v9, "\u4e8c\u8fdb\u5236\u6570\u5b57\u4e2d\u5fc5\u987b\u5305\u542b\u81f3\u5c11\u4e00\u4e2a\u4e8c\u8fdb\u5236\u6570"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xba

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.hex.number"

    const-string v9, "\u5341\u516d\u8fdb\u5236\u6570\u5b57\u5fc5\u987b\u5305\u542b\u81f3\u5c11\u4e00\u4f4d\u5341\u516d\u8fdb\u5236\u6570"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbb

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.meth.decl.ret.type.req"

    const-string v9, "\u65b9\u6cd5\u58f0\u660e\u65e0\u6548; \u9700\u8981\u8fd4\u56de\u7c7b\u578b"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbc

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.module.directive"

    const-string v9, "\u9884\u671f\u4e3a\u6a21\u5757\u6307\u4ee4\u5173\u952e\u5b57\u6216 \'\'}\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbd

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.module.specifier"

    const-string v9, "\u4e0d\u5141\u8bb8\u6a21\u5757\u8bf4\u660e\u7b26: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbe

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.mref"

    const-string v9, "{0}\u5f15\u7528\u65e0\u6548\n{1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xbf

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation"

    const-string v10, "\u6ce8\u91ca\u91cd\u590d: \u4f7f\u7528\u65e0\u6548\u7684 @Repeatable \u6ce8\u91ca\u5bf9{0}\u8fdb\u884c\u4e86\u6ce8\u91ca"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc0

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.elem.nondefault"

    const-string v10, "\u5bf9\u4e8e\u5143\u7d20 {1}, \u5305\u542b\u6ce8\u91ca\u7c7b\u578b ({0}) \u6ca1\u6709\u9ed8\u8ba4\u503c"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc1

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.incompatible.target"

    const-string v10, "\u5305\u542b\u6ce8\u91ca\u7c7b\u578b ({0}) \u9002\u7528\u7684\u76ee\u6807\u591a\u4e8e\u53ef\u91cd\u590d\u6ce8\u91ca\u7c7b\u578b ({1})"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc2

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.invalid.value"

    const-string v10, "{0}\u4e0d\u662f\u6709\u6548\u7684 @Repeatable: \u503c\u5143\u7d20\u65e0\u6548"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc3

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.multiple.values"

    const-string v10, "{0}\u4e0d\u662f\u6709\u6548\u7684 @Repeatable, \u5df2\u58f0\u660e {1} \u4e2a\u540d\u4e3a \'\'value\'\' \u7684\u5143\u7d20\u65b9\u6cd5"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc4

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.no.value"

    const-string v10, "{0}\u4e0d\u662f\u6709\u6548\u7684 @Repeatable, \u672a\u58f0\u660e\u4efb\u4f55\u503c\u5143\u7d20\u65b9\u6cd5"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc5

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.applicable"

    const-string v10, "\u5bb9\u5668{0}\u4e0d\u9002\u7528\u4e8e\u5143\u7d20 {1}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc6

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.applicable.in.context"

    const-string v10, "\u5bb9\u5668{0}\u5728\u6b64\u7c7b\u578b\u4e0a\u4e0b\u6587\u4e2d\u4e0d\u9002\u7528"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc7

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.documented"

    const-string v10, "\u53ef\u91cd\u590d\u6ce8\u91ca\u7c7b\u578b ({1}) \u662f @Documented, \u800c\u5305\u542b\u6ce8\u91ca\u7c7b\u578b ({0}) \u5219\u4e0d\u662f"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc8

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.inherited"

    const-string v10, "\u53ef\u91cd\u590d\u6ce8\u91ca\u7c7b\u578b ({1}) \u662f @Inherited, \u800c\u5305\u542b\u6ce8\u91ca\u7c7b\u578b ({0}) \u5219\u4e0d\u662f"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc9

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.repeated.and.container.present"

    const-string v10, "\u5bb9\u5668 {0} \u4e0d\u5f97\u4e0e\u5176\u5305\u542b\u7684\u5143\u7d20\u540c\u65f6\u5b58\u5728"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xca

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.retention"

    const-string v10, "\u5305\u542b\u6ce8\u91ca\u7c7b\u578b ({0}) \u7684\u4fdd\u7559\u671f\u77ed\u4e8e\u53ef\u91cd\u590d\u6ce8\u91ca\u7c7b\u578b ({2}) \u7684\u4fdd\u7559\u671f"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcb

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.value.return"

    const-string v10, "\u5305\u542b\u6ce8\u91ca\u7c7b\u578b ({0}) \u5fc5\u987b\u58f0\u660e\u7c7b\u578b{2}\u7684\u540d\u4e3a \'\'value\'\' \u7684\u5143\u7d20"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcc

    aput-object v1, v0, v10

    const-string v1, "compiler.err.io.exception"

    const-string v10, "\u8bfb\u53d6\u6e90\u6587\u4ef6\u65f6\u51fa\u9519: {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcd

    aput-object v1, v0, v10

    const-string v1, "compiler.err.label.already.in.use"

    const-string v10, "\u6807\u7b7e{0}\u5df2\u4f7f\u7528"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xce

    aput-object v1, v0, v10

    const-string v1, "compiler.err.lambda.body.neither.value.nor.void.compatible"

    const-string v10, "lambda \u4e3b\u4f53\u4e0d\u662f\u503c, \u4e5f\u4e0d\u4e0e void \u517c\u5bb9"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcf

    aput-object v1, v0, v10

    const-string v1, "compiler.err.lambda.not.supported.in.source"

    const-string v10, "-source {0} \u4e2d\u4e0d\u652f\u6301 lambda \u8868\u8fbe\u5f0f\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528 lambda \u8868\u8fbe\u5f0f)"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd0

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.code"

    const-string v10, "\u4ee3\u7801\u8fc7\u957f"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd1

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.code.too.large.for.try.stmt"

    const-string v10, "try \u8bed\u53e5\u7684\u4ee3\u7801\u8fc7\u957f"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd2

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.dimensions"

    const-string v10, "\u6570\u7ec4\u7c7b\u578b\u7ef4\u8fc7\u591a"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd3

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.locals"

    const-string v10, "\u672c\u5730\u53d8\u91cf\u8fc7\u591a"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd4

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.parameters"

    const-string v10, "\u53c2\u6570\u8fc7\u591a"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd5

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.pool"

    const-string v10, "\u5e38\u91cf\u8fc7\u591a"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd6

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.pool.in.class"

    const-string v10, "\u7c7b{0}\u4e2d\u7684\u5e38\u91cf\u8fc7\u591a"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd7

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.stack"

    const-string v10, "\u4ee3\u7801\u9700\u8981\u8fc7\u591a\u5806\u6808"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd8

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.string"

    const-string v10, "\u5e38\u91cf\u5b57\u7b26\u4e32\u8fc7\u957f"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd9

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.string.overflow"

    const-string v10, "\u5bf9\u4e8e\u5e38\u91cf\u6c60\u6765\u8bf4, \u5b57\u7b26\u4e32 \"{0}...\" \u7684 UTF8 \u8868\u793a\u8fc7\u957f"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xda

    aput-object v1, v0, v10

    const-string v1, "compiler.err.local.enum"

    const-string v10, "\u679a\u4e3e\u7c7b\u578b\u4e0d\u80fd\u4e3a\u672c\u5730\u7c7b\u578b"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdb

    aput-object v1, v0, v10

    const-string v1, "compiler.err.local.var.accessed.from.icls.needs.final"

    const-string v10, "\u4ece\u5185\u90e8\u7c7b\u4e2d\u8bbf\u95ee\u672c\u5730\u53d8\u91cf{0}; \u9700\u8981\u88ab\u58f0\u660e\u4e3a\u6700\u7ec8\u7c7b\u578b"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdc

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.bad.module-info"

    const-string v10, "\u8bfb\u53d6 {0} \u4e2d\u7684 module-info.class \u65f6\u51fa\u73b0\u95ee\u9898"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdd

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.cant.get.module.name.for.jar"

    const-string v10, "\u65e0\u6cd5\u786e\u5b9a {0} \u7684\u6a21\u5757\u540d\u79f0"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xde

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.cant.read.directory"

    const-string v10, "\u65e0\u6cd5\u8bfb\u53d6\u76ee\u5f55 {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdf

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.cant.read.file"

    const-string v10, "\u65e0\u6cd5\u8bfb\u53d6\u6587\u4ef6 {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe0

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.invalid.arg.for.xpatch"

    const-string v10, "--patch-module \u9009\u9879\u7684\u53c2\u6570\u65e0\u6548: {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe1

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.module-info.not.allowed.on.patch.path"

    const-string v10, "\u5728\u8865\u4e01\u7a0b\u5e8f\u8def\u5f84\u4e2d\u4e0d\u5141\u8bb8 module-info.class: {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe2

    aput-object v1, v0, v10

    const-string v1, "compiler.err.malformed.fp.lit"

    const-string v10, "\u6d6e\u70b9\u6587\u5b57\u7684\u683c\u5f0f\u9519\u8bef"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe3

    aput-object v1, v0, v10

    const-string v1, "compiler.err.method.does.not.override.superclass"

    const-string v10, "\u65b9\u6cd5\u4e0d\u4f1a\u8986\u76d6\u6216\u5b9e\u73b0\u8d85\u7c7b\u578b\u7684\u65b9\u6cd5"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe4

    aput-object v1, v0, v10

    const-string v1, "compiler.err.method.invoked.with.incorrect.number.arguments"

    const-string v10, "\u4f7f\u7528\u4e0d\u6b63\u786e\u6570\u91cf\u7684\u53c2\u6570\u8c03\u7528\u4e86\u65b9\u6cd5; \u9884\u671f\u4e3a {0} \u4e2a, \u627e\u5230 {1} \u4e2a"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe5

    aput-object v1, v0, v10

    const-string v1, "compiler.err.method.references.not.supported.in.source"

    const-string v10, "-source {0} \u4e2d\u4e0d\u652f\u6301\u65b9\u6cd5\u5f15\u7528\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u65b9\u6cd5\u5f15\u7528)"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe6

    aput-object v1, v0, v10

    const-string v1, "compiler.err.missing.meth.body.or.decl.abstract"

    const-string v10, "\u7f3a\u5c11\u65b9\u6cd5\u4e3b\u4f53, \u6216\u58f0\u660e\u62bd\u8c61"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe7

    aput-object v1, v0, v10

    const-string v1, "compiler.err.missing.ret.stmt"

    const-string v10, "\u7f3a\u5c11\u8fd4\u56de\u8bed\u53e5"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe8

    aput-object v1, v0, v10

    const-string v1, "compiler.err.mod.not.allowed.here"

    const-string v10, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528\u4fee\u9970\u7b26{0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe9

    aput-object v1, v0, v10

    const-string v1, "compiler.err.module.decl.sb.in.module-info.java"

    const-string v10, "\u6a21\u5757\u58f0\u660e\u5e94\u8be5\u5728\u540d\u4e3a module-info.java \u7684\u6587\u4ef6\u4e2d"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xea

    aput-object v1, v0, v10

    const-string v1, "compiler.err.module.name.mismatch"

    const-string v10, "\u6a21\u5757\u540d\u79f0 {0} \u4e0e\u9884\u671f\u540d\u79f0 {1} \u4e0d\u5339\u914d"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v11, 0xeb

    aput-object v1, v0, v11

    const-string v1, "compiler.err.module.non.zero.opens"

    const-string v11, "\u6253\u5f00\u7684\u6a21\u5757 {0} \u5177\u6709\u975e\u96f6 opens_count"

    filled-new-array {v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0xec

    aput-object v1, v0, v12

    const-string v1, "compiler.err.module.not.found"

    const-string v12, "\u627e\u4e0d\u5230\u6a21\u5757: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xed

    aput-object v1, v0, v13

    const-string v1, "compiler.err.module.not.found.in.module.source.path"

    const-string v13, "\u5728\u6a21\u5757\u6e90\u8def\u5f84\u4e2d\u627e\u4e0d\u5230\u6a21\u5757 {0}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xee

    aput-object v1, v0, v13

    const-string v1, "compiler.err.module.not.found.on.module.source.path"

    const-string v13, "\u5728\u6a21\u5757\u6e90\u8def\u5f84\u4e2d\u627e\u4e0d\u5230\u6a21\u5757"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xef

    aput-object v1, v0, v13

    const-string v1, "compiler.err.modules.not.supported.in.source"

    const-string v13, "-source {0} \u4e2d\u4e0d\u652f\u6301\u6a21\u5757\n(\u8bf7\u4f7f\u7528 -source 9 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u6a21\u5757)"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf0

    aput-object v1, v0, v13

    const-string v1, "compiler.err.modulesourcepath.must.be.specified.with.dash.m.option"

    const-string v13, "\u5982\u679c\u4f7f\u7528 -m \u9009\u9879, \u5219\u5fc5\u987b\u6307\u5b9a\u6a21\u5757\u6e90\u8def\u5f84"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf1

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multi-module.outdir.cannot.be.exploded.module"

    const-string v13, "\u5728\u591a\u6a21\u5757\u6a21\u5f0f\u4e0b, \u8f93\u51fa\u76ee\u5f55\u4e0d\u80fd\u662f\u5c55\u5f00\u7684\u6a21\u5757: {0}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf2

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multicatch.not.supported.in.source"

    const-string v13, "-source {0} \u4e2d\u4e0d\u652f\u6301 multi-catch \u8bed\u53e5\n(\u8bf7\u4f7f\u7528 -source 7 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528 multi-catch \u8bed\u53e5)"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf3

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multicatch.parameter.may.not.be.assigned"

    const-string v13, "\u53ef\u80fd\u672a\u5206\u914d multi-catch \u53c2\u6570{0}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf4

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multicatch.types.must.be.disjoint"

    const-string v13, "multi-catch \u8bed\u53e5\u4e2d\u7684\u66ff\u4ee3\u65e0\u6cd5\u901a\u8fc7\u5b50\u7c7b\u5316\u5173\u8054\n\u66ff\u4ee3{0}\u662f\u66ff\u4ee3{1}\u7684\u5b50\u7c7b"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf5

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure"

    const-string v13, "\u540d\u79f0\u51b2\u7a81: {0}\u548c{1}\u5177\u6709\u76f8\u540c\u7591\u7b26"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf6

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure.no.hide"

    const-string v13, "\u540d\u79f0\u51b2\u7a81: {1} \u4e2d\u7684 {0} \u548c {3} \u4e2d\u7684 {2} \u5177\u6709\u76f8\u540c\u7591\u7b26, \u4f46\u4e24\u8005\u5747\u4e0d\u9690\u85cf\u5bf9\u65b9"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf7

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure.no.override"

    const-string v13, "\u540d\u79f0\u51b2\u7a81: {1}\u4e2d\u7684{0}\u548c{3}\u4e2d\u7684{2}\u5177\u6709\u76f8\u540c\u7591\u7b26, \u4f46\u4e24\u8005\u5747\u4e0d\u8986\u76d6\u5bf9\u65b9"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf8

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure.no.override.1"

    const-string v13, "\u540d\u79f0\u51b2\u7a81: {1} \u4e2d\u7684 {0} \u8986\u76d6\u7684\u65b9\u6cd5\u7684\u7591\u7b26\u4e0e\u53e6\u4e00\u4e2a\u65b9\u6cd5\u7684\u76f8\u540c, \u4f46\u4e24\u8005\u5747\u4e0d\u8986\u76d6\u5bf9\u65b9\n\u7b2c\u4e00\u4e2a\u65b9\u6cd5:  {3} \u4e2d\u7684 {2}\n\u7b2c\u4e8c\u4e2a\u65b9\u6cd5: {5} \u4e2d\u7684 {4}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf9

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.reserved.for.internal.use"

    const-string v13, "{0}\u4e3a\u5185\u90e8\u4f7f\u7528\u4fdd\u7559"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfa

    aput-object v1, v0, v13

    const-string v1, "compiler.err.native.meth.cant.have.body"

    const-string v13, "\u672c\u673a\u65b9\u6cd5\u4e0d\u80fd\u5e26\u6709\u4e3b\u4f53"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfb

    aput-object v1, v0, v13

    const-string v1, "compiler.err.neither.conditional.subtype"

    const-string v13, "? \u7684\u4e0d\u517c\u5bb9\u7c7b\u578b: \u4e24\u8005\u90fd\u4e0d\u662f\u5bf9\u65b9\u7684\u5b50\u7c7b\u578b\n\u7b2c\u4e8c\u4e2a\u64cd\u4f5c\u6570: {0}\n\u7b2c\u4e09\u4e2a\u64cd\u4f5c\u6570: {1}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfc

    aput-object v1, v0, v13

    const-string v1, "compiler.err.new.not.allowed.in.annotation"

    const-string v13, "\u6ce8\u91ca\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528 \'\'new\'\'"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfd

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.annotation.member"

    const-string v13, "{1}\u4e2d\u6ca1\u6709\u6ce8\u91ca\u6210\u5458{0}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfe

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.annotations.on.dot.class"

    const-string v13, "\u7c7b\u6587\u5b57\u7c7b\u578b\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u4efb\u4f55\u6ce8\u91ca"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xff

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.encl.instance.of.type.in.scope"

    const-string v13, "\u4f5c\u7528\u57df\u4e2d\u6ca1\u6709\u7c7b\u578b\u4e3a{0}\u7684\u5c01\u95ed\u5b9e\u4f8b"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x100

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.intf.expected.here"

    const-string v13, "\u6b64\u5904\u4e0d\u9700\u8981\u63a5\u53e3"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x101

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.match.entry"

    const-string v13, "{0}\u5728{1}\u7684\u6761\u76ee\u4e2d\u6ca1\u6709\u5339\u914d\u9879; \u9700\u8981{2}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x102

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.opens.unless.strong"

    const-string v13, "\u53ea\u5141\u8bb8\u5728\u5f3a\u6a21\u5757\u4e2d\u4f7f\u7528 \'\'opens\'\'"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x103

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.output.dir"

    const-string v13, "\u672a\u6307\u5b9a\u7c7b\u8f93\u51fa\u76ee\u5f55"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x104

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.pkg.in.module-info.java"

    const-string v13, "\u6587\u4ef6 module-info.java \u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u7a0b\u5e8f\u5305\u58f0\u660e"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x105

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.superclass"

    const-string v13, "{0}\u4e0d\u5177\u6709\u8d85\u7c7b\u3002"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x106

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.zipfs.for.archive"

    const-string v13, "\u6ca1\u6709\u4efb\u4f55\u6587\u4ef6\u7cfb\u7edf\u63d0\u4f9b\u65b9\u53ef\u5904\u7406\u6b64\u6587\u4ef6: {0}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x107

    aput-object v1, v0, v13

    const-string v1, "compiler.err.non-static.cant.be.ref"

    const-string v13, "\u65e0\u6cd5\u4ece\u9759\u6001\u4e0a\u4e0b\u6587\u4e2d\u5f15\u7528\u975e\u9759\u6001 {0} {1}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x108

    aput-object v1, v0, v13

    const-string v1, "compiler.err.not.annotation.type"

    const-string v13, "{0}\u4e0d\u662f\u6ce8\u91ca\u7c7b\u578b"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x109

    aput-object v1, v0, v13

    const-string v1, "compiler.err.not.def.access.class.intf.cant.access"

    const-string v13, "{1}.{0} \u662f\u5728\u4e0d\u53ef\u8bbf\u95ee\u7684\u7c7b\u6216\u63a5\u53e3\u4e2d\u5b9a\u4e49\u7684"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v14, 0x10a

    aput-object v1, v0, v14

    const-string v1, "compiler.err.not.def.access.class.intf.cant.access.reason"

    const-string v14, "\u7a0b\u5e8f\u5305 {2} \u4e2d\u7684 {1}.{0} \u4e0d\u53ef\u8bbf\u95ee\n({3})"

    filled-new-array {v1, v14}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v15, 0x10b

    aput-object v1, v0, v15

    const-string v1, "compiler.err.not.def.access.package.cant.access"

    const-string v15, "{0} \u4e0d\u53ef\u89c1\n({2})"

    filled-new-array {v1, v15}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v16, 0x10c

    aput-object v1, v0, v16

    const-string v1, "compiler.err.not.def.public"

    move-object/from16 v16, v8

    const-string v8, "{0} \u5728 {1} \u4e2d\u4e0d\u662f\u516c\u5171\u7684"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x10d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.not.def.public.cant.access"

    const-string v8, "{0}\u5728{1}\u4e2d\u4e0d\u662f\u516c\u5171\u7684; \u65e0\u6cd5\u4ece\u5916\u90e8\u7a0b\u5e8f\u5305\u4e2d\u5bf9\u5176\u8fdb\u884c\u8bbf\u95ee"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v17, 0x10e

    aput-object v1, v0, v17

    const-string v1, "compiler.err.not.encl.class"

    move-object/from16 v17, v12

    const-string v12, "\u4e0d\u662f\u5c01\u95ed\u7c7b: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x10f

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.in.module.on.module.source.path"

    const-string v12, "\u4e0d\u5728\u6a21\u5757\u6e90\u8def\u5f84\u4e0a\u7684\u6a21\u5757\u4e2d"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x110

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.in.profile"

    const-string v12, "{0}\u5728\u914d\u7f6e\u6587\u4ef6 \'\'{1}\'\' \u4e2d\u4e0d\u53ef\u7528"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x111

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.loop.label"

    const-string v12, "\u4e0d\u662f loop \u6807\u7b7e: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x112

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.stmt"

    const-string v12, "\u4e0d\u662f\u8bed\u53e5"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x113

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.within.bounds"

    const-string v12, "\u7c7b\u578b\u53c2\u6570{0}\u4e0d\u5728\u7c7b\u578b\u53d8\u91cf{1}\u7684\u8303\u56f4\u5185"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x114

    aput-object v1, v0, v12

    const-string v1, "compiler.err.operator.cant.be.applied"

    const-string v12, "\u4e00\u5143\u8fd0\u7b97\u7b26 \'\'{0}\'\' \u7684\u64cd\u4f5c\u6570\u7c7b\u578b{1}\u9519\u8bef"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x115

    aput-object v1, v0, v12

    const-string v1, "compiler.err.operator.cant.be.applied.1"

    const-string v12, "\u4e8c\u5143\u8fd0\u7b97\u7b26 \'\'{0}\'\' \u7684\u64cd\u4f5c\u6570\u7c7b\u578b\u9519\u8bef\n\u7b2c\u4e00\u4e2a\u7c7b\u578b:  {1}\n\u7b2c\u4e8c\u4e2a\u7c7b\u578b: {2}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x116

    aput-object v1, v0, v12

    const-string v1, "compiler.err.option.removed.source"

    const-string v12, "\u4e0d\u518d\u652f\u6301\u6e90\u9009\u9879 {0}\u3002\u8bf7\u4f7f\u7528 {1} \u6216\u66f4\u9ad8\u7248\u672c\u3002"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x117

    aput-object v1, v0, v12

    const-string v1, "compiler.err.option.removed.target"

    const-string v12, "\u4e0d\u518d\u652f\u6301\u76ee\u6807\u9009\u9879 {0}\u3002\u8bf7\u4f7f\u7528 {1} \u6216\u66f4\u9ad8\u7248\u672c\u3002"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x118

    aput-object v1, v0, v12

    const-string v1, "compiler.err.orphaned"

    const-string v12, "\u5b64\u7acb\u7684{0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x119

    aput-object v1, v0, v12

    const-string v1, "compiler.err.output.dir.must.be.specified.with.dash.m.option"

    const-string v12, "\u5982\u679c\u4f7f\u7528 -m \u9009\u9879, \u5219\u5fc5\u987b\u6307\u5b9a\u7c7b\u8f93\u51fa\u76ee\u5f55"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11a

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.incompatible.ret"

    const-string v12, "{0}\n\u8fd4\u56de\u7c7b\u578b{1}\u4e0e{2}\u4e0d\u517c\u5bb9"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11b

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.meth"

    const-string v12, "{0}\n\u88ab\u8986\u76d6\u7684\u65b9\u6cd5\u4e3a{1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11c

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.meth.doesnt.throw"

    const-string v12, "{0}\n\u88ab\u8986\u76d6\u7684\u65b9\u6cd5\u672a\u629b\u51fa{1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v18, 0x11d

    aput-object v1, v0, v18

    const-string v1, "compiler.err.override.static"

    move-object/from16 v18, v12

    const-string v12, "{0}\n\u8986\u76d6\u7684\u65b9\u6cd5\u4e3a static"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11e

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.weaker.access"

    const-string v12, "{0}\n\u6b63\u5728\u5c1d\u8bd5\u5206\u914d\u66f4\u4f4e\u7684\u8bbf\u95ee\u6743\u9650; \u4ee5\u524d\u4e3a{1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11f

    aput-object v1, v0, v12

    const-string v1, "compiler.err.package.clash.from.requires"

    const-string v12, "\u6a21\u5757 {0} \u540c\u65f6\u4ece {2} \u548c {3} \u8bfb\u53d6\u7a0b\u5e8f\u5305 {1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x120

    aput-object v1, v0, v12

    const-string v1, "compiler.err.package.empty.or.not.found"

    const-string v12, "\u7a0b\u5e8f\u5305\u4e3a\u7a7a\u6216\u4e0d\u5b58\u5728: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v19, 0x121

    aput-object v1, v0, v19

    const-string v1, "compiler.err.package.in.other.module"

    move-object/from16 v19, v12

    const-string v12, "\u7a0b\u5e8f\u5305\u5df2\u5b58\u5728\u4e8e\u53e6\u4e00\u4e2a\u6a21\u5757\u4e2d: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x122

    aput-object v1, v0, v12

    const-string v1, "compiler.err.package.not.visible"

    const-string v12, "\u7a0b\u5e8f\u5305 {0} \u4e0d\u53ef\u89c1\n({1})"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v20, 0x123

    aput-object v1, v0, v20

    const-string v1, "compiler.err.patch.module.with.release"

    move-object/from16 v20, v2

    const-string v2, "\u4e0d\u5141\u8bb8\u5728\u4f7f\u7528 --release \u65f6\u4e3a\u7cfb\u7edf\u6a21\u5757 {0} \u6253\u8865\u4e01"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x124

    aput-object v1, v0, v2

    const-string v1, "compiler.err.pkg.annotations.sb.in.package-info.java"

    const-string v2, "\u7a0b\u5e8f\u5305\u6ce8\u91ca\u5e94\u5728\u6587\u4ef6 package-info.java \u4e2d"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x125

    aput-object v1, v0, v2

    const-string v1, "compiler.err.pkg.clashes.with.class.of.same.name"

    const-string v2, "\u7a0b\u5e8f\u5305{0}\u4e0e\u5e26\u6709\u76f8\u540c\u540d\u79f0\u7684\u7c7b\u51b2\u7a81"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x126

    aput-object v1, v0, v2

    const-string v1, "compiler.err.plugin.not.found"

    const-string v2, "\u627e\u4e0d\u5230\u63d2\u4ef6: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x127

    aput-object v1, v0, v2

    const-string v1, "compiler.err.premature.eof"

    const-string v2, "\u8fdb\u884c\u89e3\u6790\u65f6\u5df2\u5230\u8fbe\u6587\u4ef6\u7ed3\u5c3e"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x128

    aput-object v1, v0, v2

    const-string v1, "compiler.err.private.intf.methods.not.supported.in.source"

    const-string v2, "-source {0} \u4e2d\u4e0d\u652f\u6301\u79c1\u6709\u63a5\u53e3\u65b9\u6cd5\n(\u8bf7\u4f7f\u7528 -source 9 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u79c1\u6709\u63a5\u53e3\u65b9\u6cd5)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x129

    aput-object v1, v0, v2

    const-string v1, "compiler.err.prob.found.req"

    const-string v2, "\u4e0d\u517c\u5bb9\u7684\u7c7b\u578b: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v21, 0x12a

    aput-object v1, v0, v21

    const-string v1, "compiler.err.proc.bad.config.file"

    move-object/from16 v21, v2

    const-string v2, "\u670d\u52a1\u914d\u7f6e\u6587\u4ef6\u4e0d\u6b63\u786e, \u6216\u6784\u9020\u5904\u7406\u7a0b\u5e8f\u5bf9\u8c61{0}\u65f6\u629b\u51fa\u5f02\u5e38\u9519\u8bef"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.access"

    const-string v2, "\u65e0\u6cd5\u8bbf\u95ee{0}\n{1}\n\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u53c2\u9605\u4ee5\u4e0b\u5806\u6808\u8ddf\u8e2a\u3002\n{2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.access.1"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.create.loader"

    const-string v2, "\u65e0\u6cd5\u4e3a\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f{0}\u521b\u5efa\u7c7b\u52a0\u8f7d\u5668"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.find.class"

    const-string v2, "\u627e\u4e0d\u5230 \'\'{0}\'\' \u7684\u7c7b\u6587\u4ef6\u3002"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.messager"

    const-string v2, "{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x130

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.no.explicit.annotation.processing.requested"

    const-string v3, "\u4ec5\u5f53\u663e\u5f0f\u8bf7\u6c42\u6ce8\u91ca\u5904\u7406\u65f6\u624d\u63a5\u53d7\u7c7b\u540d\u79f0 \'\'{0}\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x131

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.no.service"

    const-string v3, "ServiceLoader \u4e0d\u53ef\u7528, \u4f46\u5b83\u662f\u6ce8\u91ca\u5904\u7406\u6240\u5fc5\u9700\u7684\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x132

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.bad.option.name"

    const-string v3, "\u5904\u7406\u7a0b\u5e8f \'\'{1}\'\' \u63d0\u4f9b\u7684\u9009\u9879\u540d\u79f0 \'\'{0}\'\' \u9519\u8bef"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x133

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.cant.instantiate"

    const-string v3, "\u65e0\u6cd5\u5b9e\u4f8b\u5316\u5904\u7406\u7a0b\u5e8f \'\'{0}\'\' \u7684\u5b9e\u4f8b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x134

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.not.found"

    const-string v3, "\u627e\u4e0d\u5230\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f \'\'{0}\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x135

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.wrong.type"

    const-string v3, "\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f \'\'{0}\'\' \u672a\u5b9e\u73b0 javax.annotation.processing.Processor"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x136

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.service.problem"

    const-string v3, "\u521b\u5efa\u670d\u52a1\u52a0\u8f7d\u5668\u4ee5\u52a0\u8f7d\u5904\u7406\u7a0b\u5e8f\u65f6\u51fa\u9519\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x137

    aput-object v1, v0, v3

    const-string v1, "compiler.err.processorpath.no.processormodulepath"

    const-string v3, "-processorpath \u4e0e --processor-module-path \u7684\u7ec4\u5408\u975e\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x138

    aput-object v1, v0, v3

    const-string v1, "compiler.err.qualified.new.of.static.class"

    const-string v3, "\u9650\u5b9a\u7684\u65b0\u9759\u6001\u7c7b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x139

    aput-object v1, v0, v3

    const-string v1, "compiler.err.receiver.parameter.not.applicable.constructor.toplevel.class"

    const-string v3, "\u63a5\u6536\u65b9\u53c2\u6570\u4e0d\u9002\u7528\u4e8e\u9876\u5c42\u7c7b\u7684\u6784\u9020\u5668"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13a

    aput-object v1, v0, v3

    const-string v1, "compiler.err.recursive.ctor.invocation"

    const-string v3, "\u9012\u5f52\u6784\u9020\u5668\u8c03\u7528"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13b

    aput-object v1, v0, v3

    const-string v1, "compiler.err.ref.ambiguous"

    const-string v3, "\u5bf9{0}\u7684\u5f15\u7528\u4e0d\u660e\u786e\n{3} \u4e2d\u7684{1} {2} \u548c {6} \u4e2d\u7684{4} {5} \u90fd\u5339\u914d"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13c

    aput-object v1, v0, v3

    const-string v1, "compiler.err.repeatable.annotations.not.supported.in.source"

    const-string v3, "-source {0}\u4e2d\u4e0d\u652f\u6301\u91cd\u590d\u6ce8\u91ca\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u91cd\u590d\u6ce8\u91ca)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13d

    aput-object v1, v0, v3

    const-string v1, "compiler.err.repeated.annotation.target"

    const-string v3, "\u6ce8\u91ca\u76ee\u6807\u91cd\u590d"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13e

    aput-object v1, v0, v3

    const-string v1, "compiler.err.repeated.interface"

    const-string v3, "\u63a5\u53e3\u91cd\u590d"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13f

    aput-object v1, v0, v3

    const-string v1, "compiler.err.repeated.modifier"

    const-string v3, "\u4fee\u9970\u7b26\u91cd\u590d"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x140

    aput-object v1, v0, v3

    const-string v1, "compiler.err.repeated.provides.for.service"

    const-string v3, "\u670d\u52a1 {0} \u6709\u591a\u4e2a \'\'provides\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x141

    aput-object v1, v0, v3

    const-string v1, "compiler.err.report.access"

    const-string v3, "{0}\u53ef\u4ee5\u5728{2}\u4e2d\u8bbf\u95ee{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x142

    aput-object v1, v0, v3

    const-string v1, "compiler.err.ret.outside.meth"

    const-string v3, "\u8fd4\u56de\u5916\u90e8\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x143

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.definition.is.enum"

    const-string v3, "\u670d\u52a1\u5b9a\u4e49\u662f\u679a\u4e3e: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x144

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.implementation.doesnt.have.a.no.args.constructor"

    const-string v3, "\u670d\u52a1\u5b9e\u73b0\u6ca1\u6709\u9ed8\u8ba4\u7684\u6784\u9020\u5668: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x145

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.implementation.is.abstract"

    const-string v3, "\u670d\u52a1\u5b9e\u73b0\u662f\u62bd\u8c61\u7c7b: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x146

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.implementation.is.inner"

    const-string v3, "\u670d\u52a1\u5b9e\u73b0\u662f\u5185\u90e8\u7c7b: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x147

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.implementation.must.be.subtype.of.service.interface"

    const-string v3, "\u670d\u52a1\u5b9e\u73b0\u7c7b\u578b\u5fc5\u987b\u662f\u670d\u52a1\u63a5\u53e3\u7c7b\u578b\u7684\u5b50\u7c7b\u578b, \u6216\u8005\u5177\u6709\u540d\u4e3a \"provider\" \u7684, \u8fd4\u56de\u670d\u52a1\u5b9e\u73b0\u7684\u516c\u5171\u9759\u6001\u65e0\u53c2\u6570\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x148

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.implementation.no.args.constructor.not.public"

    const-string v3, "\u670d\u52a1\u5b9e\u73b0\u7684\u65e0\u53c2\u6570\u6784\u9020\u5668\u4e0d\u662f\u516c\u5171\u6784\u9020\u5668: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x149

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.implementation.not.in.right.module"

    const-string v3, "\u5fc5\u987b\u5728\u4e0e provides \u6307\u4ee4\u76f8\u540c\u7684\u6a21\u5757\u4e2d\u5b9a\u4e49\u670d\u52a1\u5b9e\u73b0"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x14a

    aput-object v1, v0, v3

    const-string v1, "compiler.err.service.implementation.provider.return.must.be.subtype.of.service.interface"

    const-string v3, "\"provider\" \u65b9\u6cd5\u8fd4\u56de\u7c7b\u578b\u5fc5\u987b\u662f\u670d\u52a1\u63a5\u53e3\u7c7b\u578b\u7684\u5b50\u7c7b\u578b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x14b

    aput-object v1, v0, v3

    const-string v1, "compiler.err.signature.doesnt.match.intf"

    const-string v3, "\u7b7e\u540d\u4e0e{0}\u4e0d\u5339\u914d; \u4e0d\u517c\u5bb9\u7684\u63a5\u53e3"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x14c

    aput-object v1, v0, v3

    const-string v1, "compiler.err.signature.doesnt.match.supertype"

    const-string v3, "\u7b7e\u540d\u4e0e{0}\u4e0d\u5339\u914d; \u4e0d\u517c\u5bb9\u7684\u8d85\u7c7b\u578b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x14d

    aput-object v1, v0, v3

    const-string v1, "compiler.err.source.cant.overwrite.input.file"

    const-string v3, "\u5199\u5165\u6e90\u65f6\u51fa\u9519; \u65e0\u6cd5\u8986\u76d6\u8f93\u5165\u6587\u4ef6{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x14e

    aput-object v1, v0, v3

    const-string v1, "compiler.err.stack.sim.error"

    const-string v3, "\u5185\u90e8\u9519\u8bef: {0}\u4e2d\u7684\u5806\u6808 sim \u9519\u8bef"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x14f

    aput-object v1, v0, v3

    const-string v1, "compiler.err.static.imp.only.classes.and.interfaces"

    const-string v3, "\u4ec5\u4ece\u7c7b\u548c\u63a5\u53e3\u9759\u6001\u5bfc\u5165"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x150

    aput-object v1, v0, v3

    const-string v1, "compiler.err.static.intf.method.invoke.not.supported.in.source"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301\u9759\u6001\u63a5\u53e3\u65b9\u6cd5\u8c03\u7528\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u9759\u6001\u63a5\u53e3\u65b9\u6cd5\u8c03\u7528)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x151

    aput-object v1, v0, v3

    const-string v1, "compiler.err.static.intf.methods.not.supported.in.source"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301\u9759\u6001\u63a5\u53e3\u65b9\u6cd5\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u9759\u6001\u63a5\u53e3\u65b9\u6cd5)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x152

    aput-object v1, v0, v3

    const-string v1, "compiler.err.string.const.req"

    const-string v3, "\u9700\u8981\u5e38\u91cf\u5b57\u7b26\u4e32\u8868\u8fbe\u5f0f"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x153

    aput-object v1, v0, v3

    const-string v1, "compiler.err.string.switch.not.supported.in.source"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301 switch \u4e2d\u5b58\u5728\u5b57\u7b26\u4e32\n(\u8bf7\u4f7f\u7528 -source 7 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u5141\u8bb8 switch \u4e2d\u5b58\u5728\u5b57\u7b26\u4e32)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x154

    aput-object v1, v0, v3

    const-string v1, "compiler.err.synthetic.name.conflict"

    const-string v3, "\u7b26\u53f7{0}\u4e0e{1}\u4e2d\u7684 compiler-synthesized \u7b26\u53f7\u51b2\u7a81"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x155

    aput-object v1, v0, v3

    const-string v1, "compiler.err.this.as.identifier"

    const-string v3, "\u4ece\u53d1\u884c\u7248 8 \u5f00\u59cb, \'\'this\'\' \u53ea\u80fd\u4f5c\u4e3a\u63a5\u6536\u65b9\u7c7b\u578b\u7684\u53c2\u6570\u540d, \u8be5\u53c2\u6570\u5fc5\u987b\u4e3a\u7b2c\u4e00\u4e2a\u53c2\u6570"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x156

    aput-object v1, v0, v3

    const-string v1, "compiler.err.throws.not.allowed.in.intf.annotation"

    const-string v3, "@interface \u6210\u5458\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528 throws \u5b50\u53e5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x157

    aput-object v1, v0, v3

    const-string v1, "compiler.err.too.many.modules"

    const-string v3, "\u627e\u5230\u592a\u591a\u7684\u6a21\u5757\u58f0\u660e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x158

    aput-object v1, v0, v3

    const-string v1, "compiler.err.too.many.patched.modules"

    const-string v3, "\u592a\u591a\u6253\u8865\u4e01\u7684\u6a21\u5757 ({0}), \u8bf7\u4f7f\u7528 --module-source-path"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x159

    aput-object v1, v0, v3

    const-string v1, "compiler.err.try.resource.may.not.be.assigned"

    const-string v3, "\u53ef\u80fd\u672a\u5206\u914d\u53ef\u81ea\u52a8\u5173\u95ed\u7684\u8d44\u6e90{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x15a

    aput-object v1, v0, v3

    const-string v1, "compiler.err.try.with.resources.expr.effectively.final.var"

    const-string v3, "\u7528\u4f5c try-with-resources \u8d44\u6e90\u7684\u53d8\u91cf {0} \u65e2\u4e0d\u662f\u6700\u7ec8\u53d8\u91cf, \u4e5f\u4e0d\u662f\u5b9e\u9645\u4e0a\u7684\u6700\u7ec8\u53d8\u91cf"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x15b

    aput-object v1, v0, v3

    const-string v1, "compiler.err.try.with.resources.expr.needs.var"

    const-string v3, "try-with-resources \u8d44\u6e90\u5fc5\u987b\u662f\u53d8\u91cf\u58f0\u660e, \u6216\u8005\u662f\u6307\u793a\u5bf9\u6700\u7ec8\u53d8\u91cf\u6216\u5b9e\u9645\u4e0a\u7684\u6700\u7ec8\u53d8\u91cf\u7684\u5f15\u7528\u7684\u8868\u8fbe\u5f0f"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x15c

    aput-object v1, v0, v3

    const-string v1, "compiler.err.try.with.resources.not.supported.in.source"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301 try-with-resources\n(\u8bf7\u4f7f\u7528 -source 7 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528 try-with-resources)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x15d

    aput-object v1, v0, v3

    const-string v1, "compiler.err.try.without.catch.finally.or.resource.decls"

    const-string v3, "\'\'try\'\' \u4e0d\u5e26\u6709 \'\'catch\'\', \'\'finally\'\' \u6216\u8d44\u6e90\u58f0\u660e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x15e

    aput-object v1, v0, v3

    const-string v1, "compiler.err.try.without.catch.or.finally"

    const-string v3, "\u6709 \'\'try\'\', \u4f46\u662f\u6ca1\u6709 \'\'catch\'\' \u6216 \'\'finally\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x15f

    aput-object v1, v0, v3

    const-string v1, "compiler.err.type.annotations.not.supported.in.source"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301\u7c7b\u578b\u6ce8\u91ca\n(\u8bf7\u4f7f\u7528 -source 8 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u7c7b\u578b\u6ce8\u91ca)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x160

    aput-object v1, v0, v3

    const-string v1, "compiler.err.type.doesnt.take.params"

    const-string v3, "\u7c7b\u578b{0}\u4e0d\u5e26\u6709\u53c2\u6570"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x161

    aput-object v1, v0, v3

    const-string v1, "compiler.err.type.found.req"

    const-string v3, "\u610f\u5916\u7684\u7c7b\u578b\n\u9700\u8981: {1}\n\u627e\u5230:    {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x162

    aput-object v1, v0, v3

    const-string v1, "compiler.err.type.var.cant.be.deref"

    const-string v3, "\u65e0\u6cd5\u4ece\u7c7b\u578b\u53d8\u91cf\u4e2d\u8fdb\u884c\u9009\u62e9"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x163

    aput-object v1, v0, v3

    const-string v1, "compiler.err.type.var.may.not.be.followed.by.other.bounds"

    const-string v3, "\u7c7b\u578b\u53d8\u91cf\u540e\u9762\u4e0d\u80fd\u5e26\u6709\u5176\u4ed6\u9650\u5236\u8303\u56f4"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x164

    aput-object v1, v0, v3

    const-string v1, "compiler.err.type.var.more.than.once"

    const-string v3, "\u7c7b\u578b\u53d8\u91cf{0}\u5728{1}\u7684\u7ed3\u679c\u7c7b\u578b\u4e2d\u591a\u6b21\u51fa\u73b0; \u5fc5\u987b\u5bf9\u5176\u8fdb\u884c\u5b9e\u4f8b\u5316"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x165

    aput-object v1, v0, v3

    const-string v1, "compiler.err.type.var.more.than.once.in.result"

    const-string v3, "\u7c7b\u578b\u53d8\u91cf{0}\u5728{1}\u7684\u7c7b\u578b\u4e2d\u591a\u6b21\u51fa\u73b0; \u5fc5\u987b\u5bf9\u5176\u8fdb\u884c\u5b9e\u4f8b\u5316"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x166

    aput-object v1, v0, v3

    const-string v1, "compiler.err.types.incompatible.abstract.default"

    const-string v3, "{0} {1}\u4ece\u7c7b\u578b {4} \u548c {5} \u4e2d\u7ee7\u627f\u4e86{2}({3}) \u7684\u62bd\u8c61\u548c\u9ed8\u8ba4\u503c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x167

    aput-object v1, v0, v3

    const-string v1, "compiler.err.types.incompatible.diff.ret"

    const-string v3, "\u7c7b\u578b{0}\u548c{1}\u4e0d\u517c\u5bb9; \u4e24\u8005\u90fd\u5b9a\u4e49\u4e86{2}, \u4f46\u5374\u5e26\u6709\u4e0d\u76f8\u5173\u7684\u8fd4\u56de\u7c7b\u578b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x168

    aput-object v1, v0, v3

    const-string v1, "compiler.err.types.incompatible.unrelated.defaults"

    const-string v3, "{0} {1}\u4ece\u7c7b\u578b {4} \u548c {5} \u4e2d\u7ee7\u627f\u4e86{2}({3}) \u7684\u4e0d\u76f8\u5173\u9ed8\u8ba4\u503c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x169

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unclosed.char.lit"

    const-string v3, "\u672a\u7ed3\u675f\u7684\u5b57\u7b26\u6587\u5b57"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x16a

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unclosed.comment"

    const-string v3, "\u672a\u7ed3\u675f\u7684\u6ce8\u91ca"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x16b

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unclosed.str.lit"

    const-string v3, "\u672a\u7ed3\u675f\u7684\u5b57\u7b26\u4e32\u6587\u5b57"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x16c

    aput-object v1, v0, v3

    const-string v1, "compiler.err.undef.label"

    const-string v3, "\u672a\u5b9a\u4e49\u7684\u6807\u7b7e: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x16d

    aput-object v1, v0, v3

    const-string v1, "compiler.err.underscore.as.identifier"

    const-string v3, "\u4ece\u53d1\u884c\u7248 9 \u5f00\u59cb, \'\'_\'\' \u4e3a\u5173\u952e\u5b57, \u4e0d\u80fd\u7528\u4f5c\u6807\u8bc6\u7b26"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x16e

    aput-object v1, v0, v3

    const-string v1, "compiler.err.underscore.as.identifier.in.lambda"

    const-string v3, "\'\'_\'\' \u7528\u4f5c\u6807\u8bc6\u7b26\n(\u5bf9\u4e8e lambda \u53c2\u6570, \u7981\u6b62\u5c06 \'\'_\'\' \u7528\u4f5c\u6807\u8bc6\u7b26)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x16f

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unexpected.lambda"

    const-string v3, "\u6b64\u5904\u4e0d\u5e94\u4e3a lambda \u8868\u8fbe\u5f0f"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x170

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unexpected.mref"

    const-string v3, "\u6b64\u5904\u4e0d\u5e94\u4e3a\u65b9\u6cd5\u5f15\u7528"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x171

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unexpected.type"

    const-string v3, "\u610f\u5916\u7684\u7c7b\u578b\n\u9700\u8981: {0}\n\u627e\u5230:    {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x172

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unnamed.pkg.not.allowed.named.modules"

    const-string v3, "\u547d\u540d\u6a21\u5757\u4e2d\u4e0d\u5141\u8bb8\u672a\u547d\u540d\u7a0b\u5e8f\u5305"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x173

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unreachable.stmt"

    const-string v3, "\u65e0\u6cd5\u8bbf\u95ee\u7684\u8bed\u53e5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x174

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unreported.exception.default.constructor"

    const-string v3, "\u9ed8\u8ba4\u6784\u9020\u5668\u4e2d\u672a\u62a5\u544a\u7684\u5f02\u5e38\u9519\u8bef{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x175

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unreported.exception.implicit.close"

    const-string v3, "\u672a\u62a5\u544a\u7684\u5f02\u5e38\u9519\u8bef{0}; \u5fc5\u987b\u5bf9\u5176\u8fdb\u884c\u6355\u83b7\u6216\u58f0\u660e\u4ee5\u4fbf\u629b\u51fa\n\u5bf9\u8d44\u6e90\u53d8\u91cf \'\'{1}\'\' \u9690\u5f0f\u8c03\u7528 close() \u65f6\u629b\u51fa\u4e86\u5f02\u5e38\u9519\u8bef"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x176

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unreported.exception.need.to.catch.or.throw"

    const-string v3, "\u672a\u62a5\u544a\u7684\u5f02\u5e38\u9519\u8bef{0}; \u5fc5\u987b\u5bf9\u5176\u8fdb\u884c\u6355\u83b7\u6216\u58f0\u660e\u4ee5\u4fbf\u629b\u51fa"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x177

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unsupported.binary.lit"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301\u4e8c\u8fdb\u5236\u6587\u5b57\n(\u8bf7\u4f7f\u7528 -source 7 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u542f\u7528\u4e8c\u8fdb\u5236\u6587\u5b57)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x178

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unsupported.cross.fp.lit"

    const-string v3, "\u8be5 VM \u4e0d\u652f\u6301\u5341\u516d\u8fdb\u5236\u6d6e\u70b9\u6587\u5b57"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x179

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unsupported.encoding"

    const-string v3, "\u4e0d\u652f\u6301\u7684\u7f16\u7801: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x17a

    aput-object v1, v0, v3

    const-string v1, "compiler.err.unsupported.underscore.lit"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301\u6587\u5b57\u4e2d\u5b58\u5728\u4e0b\u5212\u7ebf\n(\u8bf7\u4f7f\u7528 -source 7 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u5141\u8bb8\u6587\u5b57\u4e2d\u5b58\u5728\u4e0b\u5212\u7ebf)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x17b

    aput-object v1, v0, v3

    const-string v1, "compiler.err.var.in.try.with.resources.not.supported.in.source"

    const-string v3, "-source {0} \u4e2d\u4e0d\u652f\u6301\u5728 try-with-resources \u4f7f\u7528\u53d8\u91cf\n(\u8bf7\u4f7f\u7528 -source 9 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u5141\u8bb8\u5728 try-with-resources \u4e2d\u4f7f\u7528\u53d8\u91cf)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x17c

    aput-object v1, v0, v3

    const-string v1, "compiler.err.var.might.already.be.assigned"

    const-string v3, "\u53ef\u80fd\u5df2\u5206\u914d\u53d8\u91cf{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x17d

    aput-object v1, v0, v3

    const-string v1, "compiler.err.var.might.be.assigned.in.loop"

    const-string v3, "\u53ef\u80fd\u5728 loop \u4e2d\u5206\u914d\u4e86\u53d8\u91cf{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x17e

    aput-object v1, v0, v3

    const-string v1, "compiler.err.var.might.not.have.been.initialized"

    const-string v3, "\u53ef\u80fd\u5c1a\u672a\u521d\u59cb\u5316\u53d8\u91cf{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x17f

    aput-object v1, v0, v3

    const-string v1, "compiler.err.var.not.initialized.in.default.constructor"

    const-string v3, "\u53d8\u91cf {0} \u672a\u5728\u9ed8\u8ba4\u6784\u9020\u5668\u4e2d\u521d\u59cb\u5316"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x180

    aput-object v1, v0, v3

    const-string v1, "compiler.err.varargs.and.old.array.syntax"

    const-string v3, "variable-arity \u53c2\u6570\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u4f20\u7edf\u6570\u7ec4\u8bb0\u53f7"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x181

    aput-object v1, v0, v3

    const-string v1, "compiler.err.varargs.and.receiver"

    const-string v3, "\u63a5\u6536\u65b9\u53c2\u6570\u4e0d\u5141\u8bb8\u4f7f\u7528 varargs \u8bb0\u53f7"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x182

    aput-object v1, v0, v3

    const-string v1, "compiler.err.varargs.invalid.trustme.anno"

    const-string v3, "{0} \u6ce8\u91ca\u65e0\u6548\u3002{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x183

    aput-object v1, v0, v3

    const-string v1, "compiler.err.varargs.must.be.last"

    const-string v3, "varargs \u53c2\u6570\u5fc5\u987b\u662f\u6700\u540e\u4e00\u4e2a\u53c2\u6570"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x184

    aput-object v1, v0, v3

    const-string v1, "compiler.err.variable.not.allowed"

    const-string v3, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528\u53d8\u91cf\u58f0\u660e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x185

    aput-object v1, v0, v3

    const-string v1, "compiler.err.void.not.allowed.here"

    const-string v3, "\u6b64\u5904\u4e0d\u5141\u8bb8\u4f7f\u7528 \'\'\u7a7a\'\' \u7c7b\u578b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x186

    aput-object v1, v0, v3

    const-string v1, "compiler.err.warnings.and.werror"

    const-string v3, "\u53d1\u73b0\u8b66\u544a, \u4f46\u6307\u5b9a\u4e86 -Werror"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x187

    aput-object v1, v0, v3

    const-string v1, "compiler.err.wrong.number.type.args"

    const-string v3, "\u7c7b\u578b\u53d8\u91cf\u6570\u76ee\u9519\u8bef; \u9700\u8981{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x188

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.anachronistic.module.info"

    const-string v3, "\u5728 {0}.{1} \u7248\u7c7b\u6587\u4ef6\u4e2d\u627e\u5230\u6a21\u5757\u58f0\u660e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x189

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.anonymous.class"

    const-string v3, "<\u533f\u540d{0}>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x18a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.applicable.method.found"

    const-string v3, "\u627e\u5230\u7b2c {0} \u4e2a\u9002\u7528\u65b9\u6cd5: {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x18b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.applicable.method.found.1"

    const-string v3, "\u627e\u5230\u7b2c {0} \u4e2a\u9002\u7528\u65b9\u6cd5: {1}\n({2})"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x18c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.arg.length.mismatch"

    const-string v3, "\u5b9e\u9645\u53c2\u6570\u5217\u8868\u548c\u5f62\u5f0f\u53c2\u6570\u5217\u8868\u957f\u5ea6\u4e0d\u540c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x18d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.class.file"

    const-string v3, "\u7c7b\u6587\u4ef6\u5bf9\u4e8e\u7c7b {0} \u65e0\u6548"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x18e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.class.file.header"

    const-string v3, "\u9519\u8bef\u7684\u7c7b\u6587\u4ef6: {0}\n{1}\n\u8bf7\u5220\u9664\u8be5\u6587\u4ef6\u6216\u786e\u4fdd\u8be5\u6587\u4ef6\u4f4d\u4e8e\u6b63\u786e\u7684\u7c7b\u8def\u5f84\u5b50\u76ee\u5f55\u4e2d\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x18f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.class.signature"

    const-string v3, "\u9519\u8bef\u7684\u7c7b\u7b7e\u540d: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x190

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.const.pool.entry"

    const-string v3, "{0} \u4e2d\u9519\u8bef\u7684\u5e38\u91cf\u6c60\u6761\u76ee\n\u9884\u671f\u4e3a\u7d22\u5f15 {2} \u5904\u7684 {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x191

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.const.pool.tag"

    const-string v3, "\u9519\u8bef\u7684\u5e38\u91cf\u6c60\u6807\u8bb0: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x192

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.const.pool.tag.at"

    const-string v3, "\u9519\u8bef\u7684\u5e38\u91cf\u6c60\u6807\u8bb0: {0}, \u4f4d\u4e8e{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x193

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.constant.range"

    const-string v3, "{1} \u7684\u5e38\u91cf\u503c \'\'{0}\'\' \u8d85\u51fa\u4e86 {2} \u7684\u9884\u671f\u8303\u56f4"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x194

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.constant.value"

    const-string v3, "{1} \u7684\u5e38\u91cf\u503c \'\'{0}\'\' \u9519\u8bef, \u9884\u671f\u4e3a {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x195

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.enclosing.class"

    const-string v3, "{0}\u7684\u5c01\u95ed\u7c7b\u9519\u8bef: {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x196

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.enclosing.method"

    const-string v3, "\u7c7b {0} \u7684\u5c01\u95ed\u65b9\u6cd5\u5c5e\u6027\u9519\u8bef"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x197

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.instance.method.in.unbound.lookup"

    const-string v3, "\u5728\u672a\u7ed1\u5b9a\u67e5\u627e\u4e2d\u627e\u5230\u610f\u5916\u7684\u5b9e\u4f8b {0} {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x198

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.intersection.target.for.functional.expr"

    const-string v3, "lambda \u6216\u65b9\u6cd5\u5f15\u7528\u7684\u4ea4\u53c9\u7c7b\u578b\u76ee\u6807\u9519\u8bef\n{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x199

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.module-info.name"

    const-string v3, "\u9519\u8bef\u7684\u7c7b\u540d"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x19a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.runtime.invisible.param.annotations"

    const-string v3, "\u9519\u8bef\u7684 RuntimeInvisibleParameterAnnotations \u5c5e\u6027: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x19b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.signature"

    const-string v3, "\u9519\u8bef\u7684\u7b7e\u540d: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x19c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.source.file.header"

    const-string v3, "\u9519\u8bef\u7684\u6e90\u6587\u4ef6: {0}\n{1}\n\u8bf7\u5220\u9664\u8be5\u6587\u4ef6\u6216\u786e\u4fdd\u8be5\u6587\u4ef6\u4f4d\u4e8e\u6b63\u786e\u7684\u6e90\u8def\u5f84\u5b50\u76ee\u5f55\u4e2d\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x19d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.static.method.in.bound.lookup"

    const-string v3, "\u5728\u7ed1\u5b9a\u67e5\u627e\u4e2d\u627e\u5230\u610f\u5916\u7684\u9759\u6001 {0} {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x19e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.static.method.in.unbound.lookup"

    const-string v3, "\u5728\u672a\u7ed1\u5b9a\u67e5\u627e\u4e2d\u627e\u5230\u610f\u5916\u7684\u9759\u6001 {0} {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x19f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.bad.type.annotation.value"

    const-string v3, "\u9519\u8bef\u7684\u7c7b\u578b\u6ce8\u91ca\u76ee\u6807\u7c7b\u578b\u503c: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a0

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.base.membership"

    const-string v3, "\u60a8\u7684\u6240\u6709\u57fa\u7c7b\u90fd\u5c5e\u4e8e\u6211\u4eec"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a1

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.access.inner.cls.constr"

    const-string v3, "\u65e0\u6cd5\u8bbf\u95ee\u6784\u9020\u5668 {0}({1})\n\u4f5c\u7528\u57df\u4e2d\u6ca1\u6709\u7c7b\u578b\u4e3a{2}\u7684\u5c01\u95ed\u5b9e\u4f8b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a2

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.apply.diamond.1"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a3

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.apply.symbol"

    const-string v3, "\u65e0\u6cd5\u5c06 {4} {5}\u4e2d\u7684 {0} {1}\u5e94\u7528\u5230\u7ed9\u5b9a\u7c7b\u578b\n\u9700\u8981: {2}\n\u627e\u5230: {3}\n\u539f\u56e0: {6}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a4

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.apply.symbols"

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a5

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.hide"

    const-string v3, "{1} \u4e2d\u7684 {0} \u65e0\u6cd5\u9690\u85cf {3} \u4e2d\u7684 {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a6

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.implement"

    const-string v3, "{1}\u4e2d\u7684{0}\u65e0\u6cd5\u5b9e\u73b0{3}\u4e2d\u7684{2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a7

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.override"

    const-string v3, "{1}\u4e2d\u7684{0}\u65e0\u6cd5\u8986\u76d6{3}\u4e2d\u7684{2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a8

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.resolve.location.args"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a9

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.resolve.location.args.params"

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1aa

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.cant.resolve.modules"

    const-string v3, "\u65e0\u6cd5\u89e3\u6790\u6a21\u5757"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ab

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.captured.type"

    const-string v3, "CAP#{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ac

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.clashes.with"

    const-string v3, "{1}\u4e2d\u7684{0}\u4e0e{3}\u4e2d\u7684{2}\u51b2\u7a81"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ad

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.class.file.not.found"

    const-string v3, "\u627e\u4e0d\u5230{0}\u7684\u7c7b\u6587\u4ef6"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ae

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.class.file.wrong.class"

    const-string v3, "\u7c7b\u6587\u4ef6\u5305\u542b\u9519\u8bef\u7684\u7c7b: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1af

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.conditional.target.cant.be.void"

    const-string v3, "\u6761\u4ef6\u8868\u8fbe\u5f0f\u7684\u76ee\u6807\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b0

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.count.error"

    const-string v3, "{0} \u4e2a\u9519\u8bef"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b1

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.count.error.plural"

    const-string v3, "{0} \u4e2a\u9519\u8bef"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b2

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.count.warn"

    const-string v3, "{0} \u4e2a\u8b66\u544a"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b3

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.count.warn.plural"

    const-string v3, "{0} \u4e2a\u8b66\u544a"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b4

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.descriptor"

    const-string v3, "\u63cf\u8ff0\u7b26: {2} {0}({1})"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b5

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.descriptor.throws"

    const-string v3, "\u63cf\u8ff0\u7b26: {2} {0}({1}) \u629b\u51fa{3}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b6

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.diamond"

    const-string v3, "{0}<>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b7

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.diamond.and.anon.class.not.supported.in.source"

    const-string v3, "\u5728 -source {0} \u4e2d\u65e0\u6cd5\u4f7f\u7528\u5e26\u6709\u533f\u540d\u5185\u90e8\u7c7b\u7684 \'\'<>\'\'\n(\u8bf7\u4f7f\u7528 -source 9 \u6216\u66f4\u9ad8\u7248\u672c\u4ee5\u5141\u8bb8\u5e26\u6709\u533f\u540d\u5185\u90e8\u7c7b\u7684 \'\'<>\'\')"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b8

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.diamond.and.explicit.params"

    const-string v3, "\u4e0d\u80fd\u5c06 \'\'<>\'\' \u4e0e\u6784\u9020\u5668\u7684\u663e\u5f0f\u7c7b\u578b\u53c2\u6570\u4e00\u8d77\u4f7f\u7528"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1b9

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.diamond.anonymous.methods.implicitly.override"

    const-string v3, "(\u7531\u4e8e <>, \u533f\u540d\u7c7b\u4e2d\u58f0\u660e\u7684\u6bcf\u4e2a\u975e\u79c1\u6709\u65b9\u6cd5\u5fc5\u987b\u8986\u76d6\u6216\u5b9e\u73b0\u8d85\u7c7b\u578b\u4e2d\u7684\u65b9\u6cd5)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ba

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.diamond.invalid.arg"

    const-string v3, "\u6b64\u4e0a\u4e0b\u6587\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u4e3a{1}\u63a8\u65ad\u7684\u7c7b\u578b\u53c2\u6570{0}\n\u63a8\u65ad\u53c2\u6570\u5728\u7b7e\u540d\u5c5e\u6027\u4e2d\u65e0\u6cd5\u8868\u8fbe"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1bb

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.diamond.invalid.args"

    const-string v3, "\u6b64\u4e0a\u4e0b\u6587\u4e2d\u4e0d\u5141\u8bb8\u4f7f\u7528\u4e3a{1}\u63a8\u65ad\u7684\u7c7b\u578b\u53c2\u6570{0}\n\u63a8\u65ad\u53c2\u6570\u5728\u7b7e\u540d\u5c5e\u6027\u4e2d\u65e0\u6cd5\u8868\u8fbe"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1bc

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.diamond.non.generic"

    const-string v3, "\u65e0\u6cd5\u5c06 \'\'<>\'\' \u4e0e\u975e\u6cdb\u578b\u7c7b{0}\u4e00\u8d77\u4f7f\u7528"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1bd

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.explicit.param.do.not.conform.to.bounds"

    const-string v3, "\u663e\u5f0f\u7c7b\u578b\u53c2\u6570{0}\u4e0d\u7b26\u5408\u58f0\u660e\u7684\u8303\u56f4{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1be

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.fatal.err.cant.close"

    const-string v3, "\u81f4\u547d\u9519\u8bef: \u65e0\u6cd5\u5173\u95ed\u7f16\u8bd1\u5668\u8d44\u6e90"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1bf

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.fatal.err.cant.locate.ctor"

    const-string v3, "\u81f4\u547d\u9519\u8bef: \u627e\u4e0d\u5230{0}\u7684\u6784\u9020\u5668"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c0

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.fatal.err.cant.locate.field"

    const-string v3, "\u81f4\u547d\u9519\u8bef: \u627e\u4e0d\u5230\u5b57\u6bb5{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c1

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.fatal.err.cant.locate.meth"

    const-string v3, "\u81f4\u547d\u9519\u8bef: \u627e\u4e0d\u5230\u65b9\u6cd5{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c2

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.fatal.err.no.java.lang"

    const-string v3, "\u81f4\u547d\u9519\u8bef: \u5728\u7c7b\u8def\u5f84\u6216\u5f15\u5bfc\u7c7b\u8def\u5f84\u4e2d\u627e\u4e0d\u5230\u7a0b\u5e8f\u5305 java.lang"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c3

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.file.does.not.contain.module"

    const-string v3, "\u6587\u4ef6\u4e0d\u5305\u542b\u6a21\u5757\u58f0\u660e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c4

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.file.does.not.contain.package"

    const-string v3, "\u6587\u4ef6\u4e0d\u5305\u542b\u7a0b\u5e8f\u5305{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c5

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.file.doesnt.contain.class"

    const-string v3, "\u6587\u4ef6\u4e0d\u5305\u542b\u7c7b{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c6

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.illegal.start.of.class.file"

    const-string v3, "\u975e\u6cd5\u7684\u7c7b\u6587\u4ef6\u5f00\u59cb"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c7

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.inaccessible.varargs.type"

    const-string v3, "\u5f62\u5f0f varargs \u5143\u7d20\u7c7b\u578b{0}\u65e0\u6cd5\u4ece {1} {2} \u8fdb\u884c\u8bbf\u95ee"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c8

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.inapplicable.method"

    const-string v3, "{0} {1}.{2}\u4e0d\u9002\u7528\n({3})"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1c9

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.abstracts"

    const-string v3, "\u5728 {0} {1} \u4e2d\u627e\u5230\u591a\u4e2a\u975e\u8986\u76d6\u62bd\u8c61\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ca

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.arg.types.in.lambda"

    const-string v3, "lambda \u8868\u8fbe\u5f0f\u4e2d\u7684\u53c2\u6570\u7c7b\u578b\u4e0d\u517c\u5bb9"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1cb

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.arg.types.in.mref"

    const-string v3, "\u65b9\u6cd5\u5f15\u7528\u4e2d\u7684\u53c2\u6570\u7c7b\u578b\u4e0d\u517c\u5bb9"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1cc

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.descs.in.functional.intf"

    const-string v3, "\u5728 {0} {1} \u4e2d\u627e\u5230\u4e0d\u517c\u5bb9\u7684\u51fd\u6570\u63cf\u8ff0\u7b26"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1cd

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.eq.bounds"

    const-string v3, "\u63a8\u8bba\u53d8\u91cf{0}\u5177\u6709\u4e0d\u517c\u5bb9\u7684\u7b49\u5f0f\u7ea6\u675f\u6761\u4ef6{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ce

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.eq.lower.bounds"

    const-string v3, "\u63a8\u8bba\u53d8\u91cf{0}\u5177\u6709\u4e0d\u517c\u5bb9\u7684\u9650\u5236\u8303\u56f4\n\u7b49\u5f0f\u7ea6\u675f\u6761\u4ef6: {1}\n\u4e0b\u9650: {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1cf

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.eq.upper.bounds"

    const-string v3, "\u63a8\u8bba\u53d8\u91cf {0} \u5177\u6709\u4e0d\u517c\u5bb9\u7684\u9650\u5236\u8303\u56f4\n\u7b49\u5f0f\u7ea6\u675f\u6761\u4ef6: {1}\n\u4e0a\u9650: {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d0

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.ret.type.in.lambda"

    const-string v3, "lambda \u8868\u8fbe\u5f0f\u4e2d\u7684\u8fd4\u56de\u7c7b\u578b\u9519\u8bef\n{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d1

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.ret.type.in.mref"

    const-string v3, "\u65b9\u6cd5\u5f15\u7528\u4e2d\u7684\u8fd4\u56de\u7c7b\u578b\u9519\u8bef\n{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d2

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.type.in.conditional"

    const-string v3, "\u6761\u4ef6\u8868\u8fbe\u5f0f\u4e2d\u7684\u7c7b\u578b\u9519\u8bef\n{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d3

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.upper.bounds"

    const-string v3, "\u63a8\u8bba\u53d8\u91cf {0} \u5177\u6709\u4e0d\u517c\u5bb9\u7684\u4e0a\u9650 {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d4

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.incompatible.upper.lower.bounds"

    const-string v3, "\u63a8\u8bba\u53d8\u91cf{0}\u5177\u6709\u4e0d\u517c\u5bb9\u7684\u8fb9\u754c\n\u4e0a\u9650: {1}\n\u4e0b\u9650: {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d5

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.inconvertible.types"

    const-string v3, "{0}\u65e0\u6cd5\u8f6c\u6362\u4e3a{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d6

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.infer.arg.length.mismatch"

    const-string v3, "\u65e0\u6cd5\u63a8\u65ad\u7c7b\u578b\u53d8\u91cf {0}\n(\u5b9e\u9645\u53c2\u6570\u5217\u8868\u548c\u5f62\u5f0f\u53c2\u6570\u5217\u8868\u957f\u5ea6\u4e0d\u540c)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d7

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.infer.no.conforming.assignment.exists"

    const-string v3, "\u65e0\u6cd5\u63a8\u65ad\u7c7b\u578b\u53d8\u91cf {0}\n(\u53c2\u6570\u4e0d\u5339\u914d; {1})"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d8

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.infer.no.conforming.instance.exists"

    const-string v3, "\u4e0d\u5b58\u5728\u7c7b\u578b\u53d8\u91cf{0}\u7684\u5b9e\u4f8b, \u4ee5\u4f7f{1}\u4e0e{2}\u4e00\u81f4"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d9

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.infer.varargs.argument.mismatch"

    const-string v3, "\u65e0\u6cd5\u63a8\u65ad\u7c7b\u578b\u53d8\u91cf {0}\n(varargs \u4e0d\u5339\u914d; {1})"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1da

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.inferred.do.not.conform.to.eq.bounds"

    const-string v3, "\u63a8\u65ad\u7c7b\u578b\u4e0d\u7b26\u5408\u7b49\u5f0f\u7ea6\u675f\u6761\u4ef6\n\u63a8\u65ad: {0}\n\u7b49\u5f0f\u7ea6\u675f\u6761\u4ef6: {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1db

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.inferred.do.not.conform.to.lower.bounds"

    const-string v3, "\u63a8\u65ad\u7c7b\u578b\u4e0d\u7b26\u5408\u4e0b\u9650\n\u63a8\u65ad: {0}\n\u4e0b\u9650: {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1dc

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.inferred.do.not.conform.to.upper.bounds"

    const-string v3, "\u63a8\u65ad\u7c7b\u578b\u4e0d\u7b26\u5408\u4e0a\u9650\n\u63a8\u65ad: {0}\n\u4e0a\u9650: {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1dd

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.inner.cls"

    const-string v3, "\u5185\u90e8\u7c7b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1de

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.intersection.type"

    const-string v3, "INT#{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1df

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.invalid.default.interface"

    const-string v3, "\u5728 {0}.{1} \u7248\u7c7b\u6587\u4ef6\u4e2d\u627e\u5230\u9ed8\u8ba4\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e0

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.invalid.generic.lambda.target"

    const-string v3, "lambda \u8868\u8fbe\u5f0f\u7684\u51fd\u6570\u63cf\u8ff0\u7b26\u65e0\u6548\n{1} {2} \u4e2d\u7684\u65b9\u6cd5 {0} \u4e3a\u6cdb\u578b\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e1

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.invalid.mref"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e2

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.invalid.static.interface"

    const-string v3, "\u5728 {0}.{1} \u7248\u7c7b\u6587\u4ef6\u4e2d\u627e\u5230\u9759\u6001\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e3

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.annotation"

    const-string v3, "@interface"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e4

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.class"

    const-string v3, "\u7c7b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e5

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.constructor"

    const-string v3, "\u6784\u9020\u5668"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e6

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.enum"

    const-string v3, "\u679a\u4e3e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e7

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.instance.init"

    const-string v3, "\u5b9e\u4f8b\u521d\u59cb\u5316\u7a0b\u5e8f"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e8

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.interface"

    const-string v3, "\u63a5\u53e3"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e9

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.method"

    const-string v3, "\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ea

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.module"

    const-string v3, "\u6a21\u5757"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1eb

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.package"

    const-string v3, "\u7a0b\u5e8f\u5305"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ec

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.static"

    const-string v3, "\u9759\u6001"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ed

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.static.init"

    const-string v3, "\u9759\u6001\u521d\u59cb\u5316\u7a0b\u5e8f"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ee

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.type.variable"

    const-string v3, "\u7c7b\u578b\u53d8\u91cf"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ef

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.type.variable.bound"

    const-string v3, "\u7c7b\u578b\u53d8\u91cf\u7684\u9650\u5236\u8303\u56f4"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f0

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.value"

    const-string v3, "\u503c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f1

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.kindname.variable"

    const-string v3, "\u53d8\u91cf"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f2

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.lambda"

    const-string v3, "lambda \u8868\u8fbe\u5f0f"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f3

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.location"

    const-string v3, "{0} {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f4

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.location.1"

    const-string v3, "\u7c7b\u578b\u4e3a{2}\u7684{0} {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f5

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.locn.module_path"

    const-string v3, "\u5e94\u7528\u7a0b\u5e8f\u6a21\u5757\u8def\u5f84"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f6

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.locn.module_source_path"

    const-string v3, "\u6a21\u5757\u6e90\u8def\u5f84"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f7

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.locn.system_modules"

    const-string v3, "\u7cfb\u7edf\u6a21\u5757"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f8

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.locn.upgrade_module_path"

    const-string v3, "\u5347\u7ea7\u6a21\u5757\u8def\u5f84"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f9

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.malformed.vararg.method"

    const-string v3, "\u7c7b\u6587\u4ef6\u5305\u542b\u683c\u5f0f\u9519\u8bef\u7684\u53d8\u91cf\u5143\u6570\u65b9\u6cd5: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1fa

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.missing.ret.val"

    const-string v3, "\u7f3a\u5c11\u8fd4\u56de\u503c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1fb

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.module.info.invalid.super.class"

    const-string v3, "\u5e26\u6709\u65e0\u6548\u8d85\u7c7b\u7684 module-info"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1fc

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.module.name.mismatch"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1fd

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.module.non.zero.opens"

    filled-new-array {v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1fe

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.mref.infer.and.explicit.params"

    const-string v3, "\u4e0d\u80fd\u5c06\u539f\u59cb\u6784\u9020\u5668\u5f15\u7528\u4e0e\u6784\u9020\u5668\u7684\u663e\u5f0f\u7c7b\u578b\u53c2\u6570\u4e00\u8d77\u4f7f\u7528"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1ff

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.no.abstracts"

    const-string v3, "\u5728 {0} {1} \u4e2d\u627e\u4e0d\u5230\u62bd\u8c61\u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x200

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.no.args"

    const-string v3, "\u6ca1\u6709\u53c2\u6570"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x201

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.no.conforming.assignment.exists"

    const-string v3, "\u53c2\u6570\u4e0d\u5339\u914d; {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x202

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.no.suitable.functional.intf.inst"

    const-string v3, "\u65e0\u6cd5\u63a8\u65ad{0}\u7684\u51fd\u6570\u63a5\u53e3\u63cf\u8ff0\u7b26"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x203

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.no.unique.maximal.instance.exists"

    const-string v3, "\u5bf9\u4e8e\u4e0a\u9650\u4e3a{1}\u7684\u7c7b\u578b\u53d8\u91cf{0}, \u4e0d\u5b58\u5728\u552f\u4e00\u6700\u5927\u5b9e\u4f8b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x204

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.no.unique.minimal.instance.exists"

    const-string v3, "\u5bf9\u4e8e\u4e0b\u9650\u4e3a{1}\u7684\u7c7b\u578b\u53d8\u91cf{0}, \u4e0d\u5b58\u5728\u552f\u4e00\u6700\u5c0f\u5b9e\u4f8b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x205

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.a.functional.intf"

    const-string v3, "{0} \u4e0d\u662f\u51fd\u6570\u63a5\u53e3"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x206

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.a.functional.intf.1"

    const-string v3, "{0} \u4e0d\u662f\u51fd\u6570\u63a5\u53e3\n{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x207

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.an.intf.component"

    const-string v3, "\u7ec4\u4ef6\u7c7b\u578b{0}\u4e0d\u662f\u63a5\u53e3"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x208

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.applicable.method.found"

    const-string v3, "\u627e\u5230\u7b2c {0} \u4e2a\u4e0d\u9002\u7528\u7684\u65b9\u6cd5: {1}\n({2})"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x209

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.class.intf.cant.access"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.class.intf.cant.access.reason"

    filled-new-array {v1, v14}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.does.not.read"

    const-string v3, "\u7a0b\u5e8f\u5305 {1} \u5df2\u5728\u6a21\u5757 {2} \u4e2d\u58f0\u660e, \u4f46\u6a21\u5757 {0} \u672a\u8bfb\u53d6\u5b83"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.does.not.read.from.unnamed"

    const-string v3, "\u7a0b\u5e8f\u5305 {0} \u5df2\u5728\u6a21\u5757 {1} \u4e2d\u58f0\u660e, \u4f46\u8be5\u6a21\u5757\u4e0d\u5728\u6a21\u5757\u56fe\u4e2d"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.does.not.read.unnamed"

    const-string v3, "\u7a0b\u5e8f\u5305 {0} \u5df2\u5728\u672a\u547d\u540d\u6a21\u5757\u4e2d\u58f0\u660e, \u4f46\u6a21\u5757 {0} \u672a\u8bfb\u53d6\u5b83"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.not.exported"

    const-string v3, "\u7a0b\u5e8f\u5305 {0} \u5df2\u5728\u6a21\u5757 {1} \u4e2d\u58f0\u660e, \u4f46\u8be5\u6a21\u5757\u672a\u5bfc\u51fa\u5b83"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.not.exported.from.unnamed"

    const-string v3, "\u7a0b\u5e8f\u5305 {0} \u5df2\u5728\u6a21\u5757 {1} \u4e2d\u58f0\u660e, \u4f46\u8be5\u6a21\u5757\u672a\u5bfc\u51fa\u5b83"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x210

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.not.exported.to.module"

    const-string v3, "\u7a0b\u5e8f\u5305 {0} \u5df2\u5728\u6a21\u5757 {1} \u4e2d\u58f0\u660e, \u4f46\u8be5\u6a21\u5757\u672a\u5c06\u5b83\u5bfc\u51fa\u5230\u6a21\u5757 {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x211

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.not.exported.to.module.from.unnamed"

    const-string v3, "\u7a0b\u5e8f\u5305 {0} \u5df2\u5728\u6a21\u5757 {1} \u4e2d\u58f0\u660e, \u4f46\u8be5\u6a21\u5757\u672a\u5c06\u5b83\u5bfc\u51fa\u5230\u672a\u547d\u540d\u6a21\u5757"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x212

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.access.package.cant.access"

    filled-new-array {v1, v15}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x213

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.not.def.public.cant.access"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x214

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.overridden.default"

    const-string v3, "\u8986\u76d6\u4e86{1}\u4e2d\u7684\u65b9\u6cd5 {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x215

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.package.not.visible"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x216

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.partial.inst.sig"

    const-string v3, "\u90e8\u5206\u5b9e\u4f8b\u5316\u4e3a: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x217

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.possible.loss.of.precision"

    const-string v3, "\u4ece{0}\u8f6c\u6362\u5230{1}\u53ef\u80fd\u4f1a\u6709\u635f\u5931"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x218

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.prob.found.req"

    move-object/from16 v3, v21

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x219

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.redundant.supertype"

    const-string v3, "\u5197\u4f59\u63a5\u53e3 {0} \u5df2\u7531 {1} \u6269\u5c55"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x21a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.ref.ambiguous"

    const-string v3, "\u5bf9{0}\u7684\u5f15\u7528\u4e0d\u660e\u786e\n{3} \u4e2d\u7684{1} {2} \u548c {6} \u4e2d\u7684{4} {5} \u90fd\u5339\u914d"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x21b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.report.access"

    const-string v3, "{0}\u53ef\u4ee5\u5728{2}\u4e2d\u8bbf\u95ee{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x21c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.resume.abort"

    const-string v3, "\u7ee7\u7eed(R), \u653e\u5f03(A)>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x21d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.source.unavailable"

    const-string v3, "(\u6e90\u4e0d\u53ef\u7528)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x21e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.stat.expr.expected"

    const-string v3, "lambda \u4e3b\u4f53\u4e0e void \u51fd\u6570\u63a5\u53e3\u4e0d\u517c\u5bb9\n(\u8bf7\u8003\u8651\u4f7f\u7528\u5757 lambda \u4e3b\u4f53, \u6216\u8005\u6539\u4e3a\u4f7f\u7528\u8bed\u53e5\u8868\u8fbe\u5f0f)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x21f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.static.mref.with.targs"

    const-string v3, "\u6709\u5173\u9759\u6001\u65b9\u6cd5\u5f15\u7528\u7684\u53c2\u6570\u5316\u9650\u5b9a\u7b26"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x220

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.bad-symbol"

    const-string v3, "<\u9519\u8bef\u7b26\u53f7>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x221

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.character"

    const-string v3, "<\u5b57\u7b26>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x222

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.double"

    const-string v3, "<\u53cc\u7cbe\u5ea6\u578b>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x223

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.end-of-input"

    const-string v3, "<\u8f93\u5165\u7ed3\u675f>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x224

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.float"

    const-string v3, "<\u6d6e\u70b9\u578b>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x225

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.identifier"

    const-string v3, "<\u6807\u8bc6\u7b26>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x226

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.integer"

    const-string v3, "<\u6574\u578b>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x227

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.long-integer"

    const-string v3, "<\u957f\u6574\u578b>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x228

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.token.string"

    const-string v3, "<\u5b57\u7b26\u4e32>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x229

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.try.not.applicable.to.type"

    const-string v3, "try-with-resources \u4e0d\u9002\u7528\u4e8e\u53d8\u91cf\u7c7b\u578b\n({0})"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.captureof"

    const-string v3, "capture#{0}, \u5171 {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.captureof.1"

    const-string v3, "capture#{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.none"

    const-string v3, "<\u65e0>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.null"

    const-string v3, "<\u7a7a\u503c>"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.parameter"

    const-string v3, "\u7c7b\u578b\u53c2\u6570{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.req.array.or.iterable"

    const-string v3, "\u6570\u7ec4\u6216 java.lang.Iterable"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x230

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.req.class"

    const-string v3, "\u7c7b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x231

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.req.class.array"

    const-string v3, "\u7c7b\u6216\u6570\u7ec4"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x232

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.req.exact"

    const-string v3, "\u4e0d\u5e26\u9650\u5236\u8303\u56f4\u7684\u7c7b\u6216\u63a5\u53e3"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x233

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.req.ref"

    const-string v3, "\u5f15\u7528"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x234

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.type.var"

    const-string v3, "{0}#{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x235

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unable.to.access.file"

    const-string v3, "\u65e0\u6cd5\u8bbf\u95ee\u6587\u4ef6: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x236

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unchecked.assign"

    const-string v3, "\u672a\u7ecf\u68c0\u67e5\u7684\u8f6c\u6362"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x237

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unchecked.cast.to.type"

    const-string v3, "\u672a\u7ecf\u68c0\u67e5\u7684\u8f6c\u6362"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x238

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unchecked.clash.with"

    const-string v3, "{1}\u4e2d\u7684{0}\u8986\u76d6\u4e86{3}\u4e2d\u7684{2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x239

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.unchecked.implement"

    const-string v4, "{1}\u4e2d\u7684{0}\u5b9e\u73b0\u4e86{3}\u4e2d\u7684{2}"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23a

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.unchecked.override"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23b

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.undecl.type.var"

    const-string v4, "\u672a\u58f0\u660e\u7684\u7c7b\u578b\u53d8\u91cf: {0}"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23c

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.unexpected.ret.val"

    const-string v4, "\u610f\u5916\u7684\u8fd4\u56de\u503c"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23d

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.unicode.str.not.supported"

    const-string v4, "\u4e0d\u652f\u6301\u7c7b\u6587\u4ef6\u4e2d\u7684 Unicode \u5b57\u7b26\u4e32"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23e

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.unnamed.module"

    const-string v4, "\u672a\u547d\u540d\u6a21\u5757"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23f

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.unnamed.package"

    const-string v4, "\u672a\u547d\u540d\u7a0b\u5e8f\u5305"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x240

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.varargs.argument.mismatch"

    const-string v4, "varargs \u4e0d\u5339\u914d; {0}"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x241

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.varargs.clash.with"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x242

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.varargs.implement"

    const-string v4, "{1}\u4e2d\u7684{0}\u5b9e\u73b0\u4e86{3}\u4e2d\u7684{2}"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x243

    aput-object v1, v0, v4

    const-string v1, "compiler.misc.varargs.override"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x244

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.trustme.on.non.varargs.meth"

    const-string v3, "\u65b9\u6cd5 {0} \u4e0d\u662f varargs \u65b9\u6cd5\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x245

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.trustme.on.reifiable.varargs"

    const-string v3, "Varargs \u5143\u7d20\u7c7b\u578b{0}\u53ef\u5177\u4f53\u5316\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x246

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.trustme.on.virtual.varargs"

    const-string v3, "\u5b9e\u4f8b\u65b9\u6cd5 {0} \u65e2\u4e0d\u662f\u6700\u7ec8\u7684, \u4e5f\u4e0d\u662f\u79c1\u6709\u7684\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x247

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.trustme.on.virtual.varargs.final.only"

    const-string v3, "\u5b9e\u4f8b\u65b9\u6cd5 {0} \u4e0d\u662f\u6700\u7ec8\u7684\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x248

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.checking.attribution"

    const-string v3, "[\u6b63\u5728\u68c0\u67e5{0}]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x249

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.classpath"

    const-string v3, "[\u7c7b\u6587\u4ef6\u7684\u641c\u7d22\u8def\u5f84: {0}]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.loading"

    const-string v3, "[\u6b63\u5728\u52a0\u8f7d{0}]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.parsing.done"

    const-string v3, "[\u89e3\u6790\u5df2\u5b8c\u6210, \u7528\u65f6 {0} \u6beb\u79d2]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.parsing.started"

    const-string v3, "[\u89e3\u6790\u5f00\u59cb\u65f6\u95f4 {0}]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.sourcepath"

    const-string v3, "[\u6e90\u6587\u4ef6\u7684\u641c\u7d22\u8def\u5f84: {0}]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.total"

    const-string v3, "[\u5171 {0} \u6beb\u79d2]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.verbose.wrote.file"

    const-string v3, "[\u5df2\u5199\u5165{0}]"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x250

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.version.not.available"

    const-string v3, "(\u7248\u672c\u4fe1\u606f\u4e0d\u53ef\u7528)"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x251

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.captured"

    const-string v3, "{0}\u4ece{3}\u7684\u6355\u83b7\u6269\u5c55{1} \u8d85 {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x252

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.captured.1"

    const-string v3, "{0}\u4ece{3}\u7684\u6355\u83b7\u6269\u5c55{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x253

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.description.captured"

    const-string v3, "\u5176\u4e2d, {0}\u662f\u65b0\u7c7b\u578b\u53d8\u91cf:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x254

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.description.captured.1"

    const-string v3, "\u5176\u4e2d, {0}\u662f\u65b0\u7c7b\u578b\u53d8\u91cf:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x255

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.description.intersection"

    const-string v3, "\u5176\u4e2d, {0}\u662f\u4ea4\u53c9\u7c7b\u578b:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x256

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.description.intersection.1"

    const-string v3, "\u5176\u4e2d, {0}\u662f\u4ea4\u53c9\u7c7b\u578b:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x257

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.description.typevar"

    const-string v3, "\u5176\u4e2d, {0}\u662f\u7c7b\u578b\u53d8\u91cf:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x258

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.description.typevar.1"

    const-string v3, "\u5176\u4e2d, {0}\u662f\u7c7b\u578b\u53d8\u91cf:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x259

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.fresh.typevar"

    const-string v3, "{0}\u6269\u5c55{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.intersection"

    const-string v3, "{0}\u6269\u5c55{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.typevar"

    const-string v3, "{0}\u6269\u5c55\u5df2\u5728{2} {3}\u4e2d\u58f0\u660e\u7684{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.where.typevar.1"

    const-string v3, "{0}\u5df2\u5728{2} {3}\u4e2d\u58f0\u660e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.wrong.number.type.args"

    const-string v3, "\u7c7b\u578b\u53d8\u91cf\u6570\u76ee\u9519\u8bef; \u9700\u8981{0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.wrong.version"

    const-string v3, "\u7c7b\u6587\u4ef6\u5177\u6709\u9519\u8bef\u7684\u7248\u672c {0}.{1}, \u5e94\u4e3a {2}.{3}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.x.print.processor.info"

    const-string v3, "\u5904\u7406\u7a0b\u5e8f{0}\u4e0e{1}\u5339\u914d\u5e76\u8fd4\u56de{2}\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x260

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.x.print.rounds"

    const-string v3, "\u5faa\u73af {0}:\n\t\u8f93\u5165\u6587\u4ef6: {1}\n\t\u6ce8\u91ca: {2}\n\t\u6700\u540e\u4e00\u4e2a\u5faa\u73af: {3}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x261

    aput-object v1, v0, v3

    const-string v1, "compiler.note.compressed.diags"

    const-string v3, "\u67d0\u4e9b\u6d88\u606f\u5df2\u7ecf\u8fc7\u7b80\u5316; \u8bf7\u4f7f\u7528 -Xdiags:verbose \u91cd\u65b0\u7f16\u8bd1\u4ee5\u83b7\u5f97\u5b8c\u6574\u8f93\u51fa"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x262

    aput-object v1, v0, v3

    const-string v1, "compiler.note.deferred.method.inst"

    const-string v3, "\u65b9\u6cd5 {0} \u7684\u5ef6\u8fdf\u5b9e\u4f8b\u5316\n\u5b9e\u4f8b\u5316\u7b7e\u540d: {1}\n\u76ee\u6807\u7c7b\u578b: {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x263

    aput-object v1, v0, v3

    const-string v1, "compiler.note.deprecated.filename"

    const-string v3, "{0}\u4f7f\u7528\u6216\u8986\u76d6\u4e86\u5df2\u8fc7\u65f6\u7684 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x264

    aput-object v1, v0, v3

    const-string v1, "compiler.note.deprecated.filename.additional"

    const-string v3, "{0}\u8fd8\u4f7f\u7528\u6216\u8986\u76d6\u4e86\u5df2\u8fc7\u65f6\u7684 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x265

    aput-object v1, v0, v3

    const-string v1, "compiler.note.deprecated.plural"

    const-string v3, "\u67d0\u4e9b\u8f93\u5165\u6587\u4ef6\u4f7f\u7528\u6216\u8986\u76d6\u4e86\u5df2\u8fc7\u65f6\u7684 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x266

    aput-object v1, v0, v3

    const-string v1, "compiler.note.deprecated.plural.additional"

    const-string v3, "\u67d0\u4e9b\u8f93\u5165\u6587\u4ef6\u8fd8\u4f7f\u7528\u6216\u8986\u76d6\u4e86\u5df2\u8fc7\u65f6\u7684 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x267

    aput-object v1, v0, v3

    const-string v1, "compiler.note.deprecated.recompile"

    const-string v3, "\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u4f7f\u7528 -Xlint:deprecation \u91cd\u65b0\u7f16\u8bd1\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x268

    aput-object v1, v0, v3

    const-string v1, "compiler.note.lambda.stat"

    const-string v3, "\u8f6c\u6362 lambda \u8868\u8fbe\u5f0f\n\u66ff\u4ee3 metafactory = {0}\n\u5408\u6210\u65b9\u6cd5 = {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x269

    aput-object v1, v0, v3

    const-string v1, "compiler.note.mref.stat"

    const-string v3, "\u8f6c\u6362\u65b9\u6cd5\u5f15\u7528\n\u66ff\u4ee3 metafactory = {0}\n"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26a

    aput-object v1, v0, v3

    const-string v1, "compiler.note.mref.stat.1"

    const-string v3, "\u8f6c\u6362\u65b9\u6cd5\u5f15\u7528\n\u66ff\u4ee3 metafactory = {0}\nbridge \u65b9\u6cd5 = {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26b

    aput-object v1, v0, v3

    const-string v1, "compiler.note.multiple.elements"

    const-string v3, "\u901a\u8fc7 javax.lang.model.util.Elements.{0} \u5728\u6a21\u5757 \'\'{2}\'\' \u4e2d\u627e\u5230\u4e86\u591a\u4e2a\u540d\u4e3a \'\'{1}\'\' \u7684\u5143\u7d20\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26c

    aput-object v1, v0, v3

    const-string v1, "compiler.note.note"

    const-string v3, "\u6ce8: "

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26d

    aput-object v1, v0, v3

    const-string v1, "compiler.note.proc.messager"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26e

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.filename"

    const-string v3, "{0} \u4f7f\u7528\u6216\u8986\u76d6\u4e86\u6807\u8bb0\u4e3a\u5f85\u5220\u9664\u7684\u5df2\u8fc7\u65f6 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26f

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.filename.additional"

    const-string v3, "{0} \u989d\u5916\u4f7f\u7528\u6216\u8986\u76d6\u4e86\u6807\u8bb0\u4e3a\u5f85\u5220\u9664\u7684\u5df2\u8fc7\u65f6 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x270

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.plural"

    const-string v3, "\u67d0\u4e9b\u8f93\u5165\u6587\u4ef6\u4f7f\u7528\u6216\u8986\u76d6\u4e86\u6807\u8bb0\u4e3a\u5f85\u5220\u9664\u7684\u5df2\u8fc7\u65f6 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x271

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.plural.additional"

    const-string v3, "\u67d0\u4e9b\u8f93\u5165\u6587\u4ef6\u989d\u5916\u4f7f\u7528\u6216\u8986\u76d6\u4e86\u6807\u8bb0\u4e3a\u5f85\u5220\u9664\u7684\u5df2\u8fc7\u65f6 API\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x272

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.recompile"

    const-string v3, "\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u4f7f\u7528 -Xlint:removal \u91cd\u65b0\u7f16\u8bd1\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x273

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.filename"

    const-string v3, "{0}\u4f7f\u7528\u4e86\u672a\u7ecf\u68c0\u67e5\u6216\u4e0d\u5b89\u5168\u7684\u64cd\u4f5c\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x274

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.filename.additional"

    const-string v3, "{0}\u8fd8\u6709\u672a\u7ecf\u68c0\u67e5\u6216\u4e0d\u5b89\u5168\u7684\u64cd\u4f5c\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x275

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.plural"

    const-string v3, "\u67d0\u4e9b\u8f93\u5165\u6587\u4ef6\u4f7f\u7528\u4e86\u672a\u7ecf\u68c0\u67e5\u6216\u4e0d\u5b89\u5168\u7684\u64cd\u4f5c\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x276

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.plural.additional"

    const-string v3, "\u67d0\u4e9b\u8f93\u5165\u6587\u4ef6\u8fd8\u4f7f\u7528\u4e86\u672a\u7ecf\u68c0\u67e5\u6216\u4e0d\u5b89\u5168\u7684\u64cd\u4f5c\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x277

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.recompile"

    const-string v3, "\u6709\u5173\u8be6\u7ec6\u4fe1\u606f, \u8bf7\u4f7f\u7528 -Xlint:unchecked \u91cd\u65b0\u7f16\u8bd1\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x278

    aput-object v1, v0, v3

    const-string v1, "compiler.note.verbose.resolve.multi"

    const-string v3, "\u5c06\u7c7b\u578b {1} \u7684\u65b9\u6cd5 {0} \u89e3\u6790\u4e3a\u5019\u9009\u9879 {2}\n\u9636\u6bb5: {3}\n\u5177\u6709\u5b9e\u9645\u503c: {4}\n\u5177\u6709\u7c7b\u578b\u53c2\u6570: {5}\n\u5019\u9009\u9879:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x279

    aput-object v1, v0, v3

    const-string v1, "compiler.note.verbose.resolve.multi.1"

    const-string v3, "\u7c7b\u578b {1} \u7684\u65b9\u6cd5 {0} \u89e3\u6790\u9519\u8bef\n\u9636\u6bb5: {3}\n\u5177\u6709\u5b9e\u9645\u503c: {4}\n\u5177\u6709\u7c7b\u578b\u53c2\u6570: {5}\n\u5019\u9009\u9879:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27a

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.access.to.member.from.serializable.element"

    const-string v3, "\u53ef\u4e32\u884c\u5316\u5143\u7d20\u5bf9\u6210\u5458 {0} \u7684\u8bbf\u95ee\u53ef\u4ee5\u7531\u4e0d\u53d7\u4fe1\u4efb\u7684\u4ee3\u7801\u516c\u5f00\u6267\u884c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27b

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.access.to.member.from.serializable.lambda"

    const-string v3, "\u53ef\u4e32\u884c\u5316 lambda \u5bf9\u6210\u5458 {0} \u7684\u8bbf\u95ee\u53ef\u4ee5\u7531\u4e0d\u53d7\u4fe1\u4efb\u7684\u4ee3\u7801\u516c\u5f00\u6267\u884c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27c

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.addopens.ignored"

    const-string v3, "--add-opens \u5728\u7f16\u8bd1\u65f6\u6ca1\u6709\u4efb\u4f55\u6548\u679c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27d

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.annotation.method.not.found"

    const-string v3, "\u65e0\u6cd5\u627e\u5230\u7c7b\u578b \'\'{0}\'\' \u7684\u6ce8\u91ca\u65b9\u6cd5 \'\'{1}()\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27e

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.annotation.method.not.found.reason"

    const-string v3, "\u65e0\u6cd5\u627e\u5230\u7c7b\u578b \'\'{0}\'\' \u7684\u6ce8\u91ca\u65b9\u6cd5 \'\'{1}()\'\': {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27f

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.auxiliary.class.accessed.from.outside.of.its.source.file"

    const-string v3, "{1} \u4e2d\u7684\u8f85\u52a9\u7c7b{0}\u4e0d\u5e94\u4ece\u5176\u81ea\u8eab\u7684\u6e90\u6587\u4ef6\u4ee5\u5916\u8bbf\u95ee"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x280

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.bad.name.for.option"

    move-object/from16 v3, v20

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x281

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.big.major.version"

    const-string v3, "{0}: \u4e3b\u7248\u672c {1} \u6bd4 {2} \u65b0, \u6b64\u7f16\u8bd1\u5668\u652f\u6301\u6700\u65b0\u7684\u4e3b\u7248\u672c\u3002\n\u5efa\u8bae\u5347\u7ea7\u6b64\u7f16\u8bd1\u5668\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x282

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.constant.SVUID"

    const-string v3, "serialVersionUID \u5728\u7c7b{0}\u4e2d\u5fc5\u987b\u662f\u5e38\u91cf"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x283

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.deprecated.annotation.has.no.effect"

    const-string v3, "@Deprecated \u6ce8\u91ca\u5bf9\u6b64 {0} \u58f0\u660e\u6ca1\u6709\u4efb\u4f55\u6548\u679c"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x284

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.diamond.redundant.args"

    const-string v3, "\u65b0\u8868\u8fbe\u5f0f\u4e2d\u5b58\u5728\u5197\u4f59\u7c7b\u578b\u53c2\u6570 (\u6539\u7528 diamond \u8fd0\u7b97\u7b26)\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x285

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.dir.path.element.not.directory"

    const-string v3, "\u9519\u8bef\u7684\u8def\u5f84\u5143\u7d20 \"{0}\": \u4e0d\u662f\u76ee\u5f55"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x286

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.dir.path.element.not.found"

    const-string v3, "\u9519\u8bef\u7684\u8def\u5f84\u5143\u7d20 \"{0}\": \u6ca1\u6709\u8fd9\u79cd\u76ee\u5f55"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x287

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.div.zero"

    const-string v3, "\u9664\u6570\u4e3a\u96f6"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x288

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.empty.if"

    const-string v3, "if \u4e4b\u540e\u6ca1\u6709\u8bed\u53e5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x289

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.file.from.future"

    const-string v3, "\u6587\u4ef6 {0} \u7684\u4fee\u6539\u65e5\u671f\u662f\u672a\u6765\u7684\u65e5\u671f"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28a

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.finally.cannot.complete"

    const-string v3, "finally \u5b50\u53e5\u65e0\u6cd5\u6b63\u5e38\u5b8c\u6210"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28b

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.forward.ref"

    const-string v3, "\u5148\u5f15\u7528\u53d8\u91cf \'\'{0}\'\', \u7136\u540e\u518d\u5bf9\u5176\u521d\u59cb\u5316"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28c

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.future.attr"

    const-string v3, "{1}.{2} \u7248\u7c7b\u6587\u4ef6\u4e2d\u5f15\u5165\u7684 {0} \u5c5e\u6027\u5728 {3}.{4} \u7248\u7c7b\u6587\u4ef6\u4e2d\u88ab\u5ffd\u7565"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28d

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated"

    const-string v3, "{1}\u4e2d\u7684{0}\u5df2\u8fc7\u65f6"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28e

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated.for.removal"

    const-string v3, "{1} \u4e2d\u7684 {0} \u5df2\u8fc7\u65f6, \u4e14\u6807\u8bb0\u4e3a\u5f85\u5220\u9664"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28f

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated.for.removal.module"

    const-string v3, "\u6a21\u5757 {0} \u5df2\u8fc7\u65f6, \u4e14\u6807\u8bb0\u4e3a\u5f85\u5220\u9664"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x290

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated.module"

    const-string v3, "\u6a21\u5757 {0} \u5df2\u8fc7\u65f6"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x291

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.illegal.char.for.encoding"

    const-string v3, "\u7f16\u7801{0}\u7684\u4e0d\u53ef\u6620\u5c04\u5b57\u7b26"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x292

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.improper.SVUID"

    const-string v3, "\u5fc5\u987b\u5728\u7c7b{0}\u4e2d\u5c06 serialVersionUID \u58f0\u660e\u4e3a static final"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x293

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.incubating.modules"

    const-string v3, "\u4f7f\u7528 incubating \u6a21\u5757: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x294

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.inexact.non-varargs.call"

    const-string v3, "\u6700\u540e\u4e00\u4e2a\u53c2\u6570\u4f7f\u7528\u4e86\u4e0d\u51c6\u786e\u7684\u53d8\u91cf\u7c7b\u578b\u7684 varargs \u65b9\u6cd5\u7684\u975e varargs \u8c03\u7528; \n\u5bf9\u4e8e varargs \u8c03\u7528, \u5e94\u4f7f\u7528 {0}\n\u5bf9\u4e8e\u975e varargs \u8c03\u7528, \u5e94\u4f7f\u7528 {1}, \u8fd9\u6837\u4e5f\u53ef\u4ee5\u6291\u5236\u6b64\u8b66\u544a"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x295

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.invalid.archive.file"

    const-string v3, "\u4ee5\u4e0b\u8def\u5f84\u4e2d\u5b58\u5728\u610f\u5916\u7684\u6587\u4ef6: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x296

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.invalid.path"

    const-string v3, "\u65e0\u6548\u6587\u4ef6\u540d: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x297

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible"

    const-string v3, "\u6a21\u5757 {2} \u4e2d\u7684 {0} {1} \u5bf9\u9700\u8981\u8be5\u6a21\u5757\u7684\u5ba2\u6237\u673a\u4e0d\u53ef\u8bbf\u95ee"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x298

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible.not.required.transitive"

    const-string v3, "\u672a\u4f7f\u7528 \'\'requires transitive\'\' \u95f4\u63a5\u5bfc\u51fa\u6a21\u5757 {2} \u4e2d\u7684 {0} {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x299

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible.unexported"

    const-string v3, "\u672a\u5bfc\u51fa\u6a21\u5757 {2} \u4e2d\u7684 {0} {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29a

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible.unexported.qualified"

    const-string v3, "\u6a21\u5757 {2} \u4e2d\u7684 {0} {1} \u53ef\u80fd\u5bf9\u9700\u8981\u8be5\u6a21\u5757\u7684\u6240\u6709\u5ba2\u6237\u673a\u90fd\u4e0d\u53ef\u89c1"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29b

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.lintOption"

    const-string v3, "[{0}] "

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29c

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.locn.unknown.file.on.module.path"

    const-string v3, "\u6a21\u5757\u8def\u5f84\u4e2d\u7684\u672a\u77e5\u6587\u4ef6: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29d

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.long.SVUID"

    const-string v3, "serialVersionUID \u5728\u7c7b{0}\u4e2d\u5fc5\u987b\u662f long \u7c7b\u578b"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29e

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.method.redundant.typeargs"

    const-string v3, "\u65b9\u6cd5\u8c03\u7528\u4e2d\u5b58\u5728\u5197\u4f59\u7c7b\u578b\u53c2\u6570\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29f

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.missing.SVUID"

    const-string v3, "\u53ef\u5e8f\u5217\u5316\u7c7b{0}\u6ca1\u6709 serialVersionUID \u7684\u5b9a\u4e49"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a0

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.missing.deprecated.annotation"

    const-string v3, "\u672a\u4f7f\u7528 @Deprecated \u5bf9\u5df2\u8fc7\u65f6\u7684\u9879\u76ee\u8fdb\u884c\u6ce8\u91ca"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a1

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.module.for.option.not.found"

    const-string v3, "\u627e\u4e0d\u5230 {0} \u9009\u9879\u4e2d\u7684\u6a21\u5757\u540d\u79f0: {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a2

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.module.not.found"

    move-object/from16 v3, v17

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a3

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.option.obsolete.source"

    const-string v3, "\u6e90\u503c{0}\u5df2\u8fc7\u65f6, \u5c06\u5728\u672a\u6765\u6240\u6709\u53d1\u884c\u7248\u4e2d\u5220\u9664"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a4

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.option.obsolete.suppression"

    const-string v3, "\u8981\u9690\u85cf\u6709\u5173\u5df2\u8fc7\u65f6\u9009\u9879\u7684\u8b66\u544a, \u8bf7\u4f7f\u7528 -Xlint:-options\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a5

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.option.obsolete.target"

    const-string v3, "\u76ee\u6807\u503c{0}\u5df2\u8fc7\u65f6, \u5c06\u5728\u672a\u6765\u6240\u6709\u53d1\u884c\u7248\u4e2d\u5220\u9664"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a6

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.outdir.is.in.exploded.module"

    const-string v3, "\u8f93\u51fa\u76ee\u5f55\u4f4d\u4e8e\u5c55\u5f00\u7684\u6a21\u5757\u4e2d: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a7

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.bridge"

    const-string v3, "{0}; \u88ab\u8986\u76d6\u7684\u65b9\u6cd5\u4e3a bridge \u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a8

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.equals.but.not.hashcode"

    const-string v3, "\u7c7b{0}\u8986\u76d6\u4e86 equals, \u4f46\u8be5\u7c7b\u6216\u4efb\u4f55\u8d85\u7c7b\u90fd\u672a\u8986\u76d6 hashCode \u65b9\u6cd5"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a9

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.unchecked.ret"

    const-string v3, "{0}\n\u8fd4\u56de\u7c7b\u578b\u9700\u8981\u4ece{1}\u5230{2}\u7684\u672a\u7ecf\u68c0\u67e5\u7684\u8f6c\u6362"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2aa

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.unchecked.thrown"

    move-object/from16 v3, v18

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ab

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.varargs.extra"

    const-string v3, "{0}; \u8986\u76d6\u7684\u65b9\u6cd5\u7f3a\u5c11 \'\'...\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ac

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.varargs.missing"

    const-string v3, "{0}; \u88ab\u8986\u76d6\u7684\u65b9\u6cd5\u6ca1\u6709 \'\'...\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ad

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.package.empty.or.not.found"

    move-object/from16 v3, v19

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ae

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.path.element.not.found"

    const-string v3, "\u9519\u8bef\u7684\u8def\u5f84\u5143\u7d20 \"{0}\": \u6ca1\u6709\u8fd9\u79cd\u6587\u4ef6\u6216\u76ee\u5f55"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2af

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.pkg-info.already.seen"

    const-string v3, "\u5df2\u627e\u5230\u7a0b\u5e8f\u5305{0}\u7684 package-info.java \u6587\u4ef6"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b0

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.poor.choice.for.module.name"

    const-string v3, "\u6a21\u5757\u540d\u79f0\u7ec4\u6210\u90e8\u5206 {0} \u5e94\u907f\u514d\u4ee5\u6570\u5b57\u7ed3\u5c3e"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b1

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.position.overflow"

    const-string v3, "\u884c {0} \u5904\u7684\u4f4d\u7f6e\u7f16\u7801\u6ea2\u51fa"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b2

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.possible.fall-through.into.case"

    const-string v3, "\u53ef\u80fd\u65e0\u6cd5\u5b9e\u73b0 case"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b3

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.potential.lambda.found"

    const-string v3, "\u53ef\u5c06\u6b64\u533f\u540d\u5185\u90e8\u7c7b\u521b\u5efa\u8f6c\u6362\u4e3a lambda \u8868\u8fbe\u5f0f\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b4

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.potentially.ambiguous.overload"

    const-string v3, "{1} \u4e2d\u7684 {0} \u53ef\u80fd\u4e0e {3} \u4e2d\u7684 {2} \u6df7\u6dc6"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b5

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.prob.found.req"

    const-string v3, "{0}\n\u9700\u8981: {2}\n\u627e\u5230:    {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b6

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.annotations.without.processors"

    const-string v3, "\u6ca1\u6709\u5904\u7406\u7a0b\u5e8f\u8981\u4f7f\u7528\u4ee5\u4e0b\u4efb\u4f55\u6ce8\u91ca: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b7

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.file.create.last.round"

    const-string v3, "\u5c06\u4e0d\u5bf9\u5728\u6700\u540e\u4e00\u4e2a\u5faa\u73af\u4e2d\u521b\u5efa\u7684\u7c7b\u578b\u4e3a \'\'{0}\'\' \u7684\u6587\u4ef6\u8fdb\u884c\u6ce8\u91ca\u5904\u7406\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b8

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.file.reopening"

    const-string v3, "\u5c1d\u8bd5\u591a\u6b21\u4e3a \'\'{0}\'\' \u521b\u5efa\u6587\u4ef6"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b9

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.illegal.file.name"

    const-string v3, "\u65e0\u6cd5\u521b\u5efa\u5e26\u6709\u975e\u6cd5\u540d\u79f0 \'\'{0}\'\' \u7684\u6587\u4ef6\u3002"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ba

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.malformed.supported.string"

    const-string v3, "\u5904\u7406\u7a0b\u5e8f \'\'{1}\'\' \u4e3a\u652f\u6301\u7684\u6ce8\u91ca\u7c7b\u578b\u8fd4\u56de\u683c\u5f0f\u9519\u8bef\u7684\u5b57\u7b26\u4e32 \'\'{0}\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2bb

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.messager"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2bc

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.package.does.not.exist"

    move-object/from16 v2, v16

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2bd

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.proc-only.requested.no.procs"

    const-string v2, "\u5728\u672a\u8bf7\u6c42\u7f16\u8bd1\u7684\u60c5\u51b5\u4e0b\u8fdb\u884c\u6ce8\u91ca\u5904\u7406, \u4f46\u627e\u4e0d\u5230\u5904\u7406\u7a0b\u5e8f\u3002"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2be

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.processor.incompatible.source.version"

    const-string v2, "\u6765\u81ea\u6ce8\u91ca\u5904\u7406\u7a0b\u5e8f \'\'{1}\'\' \u7684\u53d7\u652f\u6301 source \u7248\u672c \'\'{0}\'\' \u4f4e\u4e8e -source \'\'{2}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2bf

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.suspicious.class.name"

    const-string v2, "\u6b63\u5728\u4e3a\u540d\u79f0\u4ee5{1}\u7ed3\u5c3e\u7684\u7c7b\u578b\u521b\u5efa\u6587\u4ef6: \'\'{0}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c0

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.type.already.exists"

    const-string v2, "\u7c7b\u578b \'\'{0}\'\' \u7684\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\u4e8e\u6e90\u8def\u5f84\u6216\u7c7b\u8def\u5f84\u4e2d"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c1

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.type.recreate"

    const-string v2, "\u5c1d\u8bd5\u591a\u6b21\u521b\u5efa\u7c7b\u578b \'\'{0}\'\' \u7684\u6587\u4ef6"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c2

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.unclosed.type.files"

    const-string v2, "\u7c7b\u578b \'\'{0}\'\' \u7684\u6587\u4ef6\u672a\u5173\u95ed; \u5c06\u4e0d\u9488\u5bf9\u8fd9\u4e9b\u7c7b\u578b\u8fdb\u884c\u6ce8\u91ca\u5904\u7406"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c3

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.unmatched.processor.options"

    const-string v2, "\u4ee5\u4e0b\u9009\u9879\u672a\u88ab\u4efb\u4f55\u5904\u7406\u7a0b\u5e8f\u8bc6\u522b: \'\'{0}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c4

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.use.implicit"

    const-string v2, "\u6ce8\u91ca\u5904\u7406\u4e0d\u9002\u7528\u4e8e\u9690\u5f0f\u7f16\u8bd1\u7684\u6587\u4ef6\u3002\n\u4f7f\u7528 -implicit \u6307\u5b9a\u7528\u4e8e\u9690\u5f0f\u7f16\u8bd1\u7684\u7b56\u7565\u3002"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c5

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.use.proc.or.implicit"

    const-string v2, "\u6ce8\u91ca\u5904\u7406\u4e0d\u9002\u7528\u4e8e\u9690\u5f0f\u7f16\u8bd1\u7684\u6587\u4ef6\u3002\n\u4f7f\u7528 -proc:none \u7981\u7528\u6ce8\u91ca\u5904\u7406\u6216\u4f7f\u7528 -implicit \u6307\u5b9a\u7528\u4e8e\u9690\u5f0f\u7f16\u8bd1\u7684\u7b56\u7565\u3002"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c6

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.raw.class.use"

    const-string v2, "\u627e\u5230\u539f\u59cb\u7c7b\u578b: {0}\n\u7f3a\u5c11\u6cdb\u578b\u7c7b{1}\u7684\u7c7b\u578b\u53c2\u6570"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c7

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.redundant.cast"

    const-string v2, "\u51fa\u73b0\u5197\u4f59\u7684\u5230{0}\u7684\u8f6c\u6362"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c8

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.requires.automatic"

    const-string v2, "\u9700\u8981\u81ea\u52a8\u6a21\u5757\u7684\u6307\u4ee4"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c9

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.requires.transitive.automatic"

    const-string v2, "\u9700\u8981\u81ea\u52a8\u6a21\u5757\u7684\u8fc7\u6e21\u6307\u4ee4"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2ca

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.self.ref"

    const-string v2, "\u53d8\u91cf \'\'{0}\'\' \u7684\u521d\u59cb\u5316\u7a0b\u5e8f\u4e2d\u5b58\u5728\u81ea\u5f15\u7528"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cb

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.service.provided.but.not.exported.or.used"

    const-string v2, "\u5df2\u63d0\u4f9b\u670d\u52a1\u63a5\u53e3, \u4f46\u672a\u5bfc\u51fa\u6216\u4f7f\u7528\u670d\u52a1\u63a5\u53e3"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cc

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.source.no.bootclasspath"

    const-string v2, "\u672a\u4e0e -source {0} \u4e00\u8d77\u8bbe\u7f6e\u5f15\u5bfc\u7c7b\u8def\u5f84"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cd

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.static.not.qualified.by.type"

    const-string v2, "static {0}\u5e94\u7531\u7c7b\u578b\u540d\u79f0{1}\u800c\u4e0d\u662f\u8868\u8fbe\u5f0f\u9650\u5b9a"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2ce

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.sun.proprietary"

    const-string v2, "{0}\u662f\u5185\u90e8\u4e13\u7528 API, \u53ef\u80fd\u4f1a\u5728\u672a\u6765\u53d1\u884c\u7248\u4e2d\u5220\u9664"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cf

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.try.explicit.close.call"

    const-string v2, "\u5728\u53ef\u81ea\u52a8\u7ed3\u675f\u7684\u8d44\u6e90\u4e0a\u663e\u5f0f\u8c03\u7528 close()"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d0

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.try.resource.not.referenced"

    const-string v2, "\u4e0d\u80fd\u5728\u76f8\u5e94\u7684 try \u8bed\u53e5\u7684\u6b63\u6587\u4e2d\u5f15\u7528\u53ef\u81ea\u52a8\u7ed3\u675f\u7684\u8d44\u6e90{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d1

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.try.resource.throws.interrupted.exc"

    const-string v2, "\u53ef\u81ea\u52a8\u5173\u95ed\u7684\u8d44\u6e90{0}\u5305\u542b\u7684\u6210\u5458\u65b9\u6cd5 close() \u53ef\u80fd\u629b\u51fa InterruptedException"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d2

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.assign"

    const-string v2, "\u672a\u7ecf\u68c0\u67e5\u7684\u5206\u914d: \u5c06{0}\u5206\u914d\u7ed9{1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d3

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.assign.to.var"

    const-string v2, "\u5bf9\u4f5c\u4e3a\u539f\u59cb\u7c7b\u578b{1}\u7684\u6210\u5458\u7684\u53d8\u91cf{0}\u7684\u5206\u914d\u672a\u7ecf\u8fc7\u68c0\u67e5"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d4

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.call.mbr.of.raw.type"

    const-string v2, "\u5bf9\u4f5c\u4e3a\u539f\u59cb\u7c7b\u578b{1}\u7684\u6210\u5458\u7684{0}\u7684\u8c03\u7528\u672a\u7ecf\u8fc7\u68c0\u67e5"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d5

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.cast.to.type"

    const-string v2, "\u5411\u7c7b\u578b{0}\u7684\u8f6c\u6362\u672a\u7ecf\u8fc7\u68c0\u67e5"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d6

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.generic.array.creation"

    const-string v2, "\u5bf9\u4e8e\u7c7b\u578b\u4e3a{0}\u7684 varargs \u53c2\u6570, \u6cdb\u578b\u6570\u7ec4\u521b\u5efa\u672a\u7ecf\u8fc7\u68c0\u67e5"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d7

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.meth.invocation.applied"

    const-string v2, "\u65b9\u6cd5\u8c03\u7528\u672a\u7ecf\u8fc7\u68c0\u67e5: \u5c06{4} {5}\u4e2d\u7684{0} {1}\u5e94\u7528\u5230\u7ed9\u5b9a\u7684\u7c7b\u578b\n\u9700\u8981: {2}\n\u627e\u5230: {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d8

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.varargs.non.reifiable.type"

    const-string v2, "\u53c2\u6570\u5316 vararg \u7c7b\u578b{0}\u7684\u5806\u53ef\u80fd\u5df2\u53d7\u6c61\u67d3"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d9

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.underscore.as.identifier"

    const-string v2, "\u4ece\u53d1\u884c\u7248 9 \u5f00\u59cb, \'\'_\'\' \u4e3a\u5173\u952e\u5b57, \u4e0d\u80fd\u7528\u4f5c\u6807\u8bc6\u7b26"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2da

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unexpected.archive.file"

    const-string v2, "\u4ee5\u4e0b\u6863\u6848\u6587\u4ef6\u5b58\u5728\u610f\u5916\u7684\u6269\u5c55\u540d: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2db

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unknown.enum.constant"

    const-string v2, "\u672a\u77e5\u7684\u679a\u4e3e\u5e38\u91cf {1}.{2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2dc

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unknown.enum.constant.reason"

    const-string v2, "\u672a\u77e5\u7684\u679a\u4e3e\u5e38\u91cf {1}.{2}\n\u539f\u56e0: {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2dd

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unreachable.catch"

    const-string v2, "catch \u5b50\u53e5\u65e0\u6cd5\u8bbf\u95ee\n\u5df2\u6355\u83b7\u5230\u629b\u51fa\u7684\u7c7b\u578b{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2de

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unreachable.catch.1"

    const-string v2, "catch \u5b50\u53e5\u65e0\u6cd5\u8bbf\u95ee\n\u5df2\u6355\u83b7\u5230\u629b\u51fa\u7684\u7c7b\u578b{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2df

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.varargs.redundant.trustme.anno"

    const-string v2, "\u5197\u4f59\u7684 {0} \u6ce8\u91ca\u3002{1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e0

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.varargs.unsafe.use.varargs.param"

    const-string v2, "Varargs \u65b9\u6cd5\u53ef\u80fd\u5bfc\u81f4\u6765\u81ea\u4e0d\u53ef\u5177\u4f53\u5316 varargs \u53c2\u6570 {0} \u7684\u5806\u6c61\u67d3"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e1

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.warning"

    const-string v2, "\u8b66\u544a: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e2

    aput-object v1, v0, v2

    return-object v0
.end method
