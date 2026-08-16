.class public final Lorg/openjdk/tools/javac/resources/compiler;
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
    .locals 23

    const/16 v0, 0x2e4

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "compiler.err.abstract.cant.be.accessed.directly"

    const-string v2, "abstract {0} {1} in {2} cannot be accessed directly"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "compiler.err.abstract.cant.be.instantiated"

    const-string v2, "{0} is abstract; cannot be instantiated"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "compiler.err.abstract.meth.cant.have.body"

    const-string v2, "abstract methods cannot have a body"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "compiler.err.add.exports.with.release"

    const-string v2, "exporting a package from system module {0} is not allowed with --release"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "compiler.err.add.reads.with.release"

    const-string v2, "adding read edges for system module {0} is not allowed with --release"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "compiler.err.addmods.all.module.path.invalid"

    const-string v2, "--add-modules ALL-MODULE-PATH can only be used when compiling the unnamed module"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.annotated"

    const-string v2, "{0} {1} has already been annotated"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined"

    const-string v2, "{0} {1} is already defined in {2} {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.in.clinit"

    const-string v2, "{0} {1} is already defined in {2} of {3} {4}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.single.import"

    const-string v2, "a type with the same simple name is already defined by the single-type-import of {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.static.single.import"

    const-string v2, "a type with the same simple name is already defined by the static single-type-import of {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "compiler.err.already.defined.this.unit"

    const-string v2, "{0} is already defined in this compilation unit"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.missing.default.value"

    const-string v2, "annotation @{0} is missing a default value for the element \'\'{1}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.missing.default.value.1"

    const-string v2, "annotation @{0} is missing default values for elements {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.not.valid.for.type"

    const-string v2, "annotation not valid for an element of type {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.type.not.applicable"

    const-string v2, "annotation type not applicable to this kind of declaration"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.type.not.applicable.to.type"

    const-string v2, "annotation @{0} not applicable in this type context"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.value.must.be.annotation"

    const-string v2, "annotation value must be an annotation"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.value.must.be.name.value"

    const-string v2, "annotation values must be of the form \'\'name=value\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotation.value.not.allowable.type"

    const-string v2, "annotation value not of an allowable type"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "compiler.err.annotations.after.type.params.not.supported.in.source"

    const-string v2, "annotations after method type parameters are not supported in -source {0}\n(use -source 8 or higher to enable annotations after method type parameters)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anon.class.impl.intf.no.args"

    const-string v2, "anonymous class implements interface; cannot have arguments"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anon.class.impl.intf.no.qual.for.new"

    const-string v2, "anonymous class implements interface; cannot have qualifier for new"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anon.class.impl.intf.no.typeargs"

    const-string v2, "anonymous class implements interface; cannot have type arguments"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "compiler.err.anonymous.diamond.method.does.not.override.superclass"

    const-string v2, "method does not override or implement a method from a supertype\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.and.receiver"

    const-string v2, "legacy array notation not allowed on receiver parameter"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.and.varargs"

    const-string v2, "cannot declare both {0} and {1} in {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.dimension.missing"

    const-string v2, "array dimension missing"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "compiler.err.array.req.but.found"

    const-string v2, "array required, but {0} found"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.assert.as.identifier"

    const-string v2, "as of release 1.4, \'\'assert\'\' is a keyword, and may not be used as an identifier"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.attribute.value.must.be.constant"

    const-string v2, "element value must be a constant expression"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.functional.intf.anno"

    const-string v2, "Unexpected @FunctionalInterface annotation"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.functional.intf.anno.1"

    const-string v2, "Unexpected @FunctionalInterface annotation\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.initializer"

    const-string v2, "bad initializer for {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "compiler.err.bad.name.for.option"

    const-string v2, "bad name in value for {0} option: \'\'{1}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22

    aput-object v1, v0, v3

    const-string v1, "compiler.err.break.outside.switch.loop"

    const-string v3, "break outside switch or loop"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23

    aput-object v1, v0, v3

    const-string v1, "compiler.err.call.must.be.first.stmt.in.ctor"

    const-string v3, "call to {0} must be first statement in constructor"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24

    aput-object v1, v0, v3

    const-string v1, "compiler.err.call.to.super.not.allowed.in.enum.ctor"

    const-string v3, "call to super not allowed in enum constructor"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25

    aput-object v1, v0, v3

    const-string v1, "compiler.err.cannot.create.array.with.diamond"

    const-string v3, "cannot create array with \'\'<>\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26

    aput-object v1, v0, v3

    const-string v1, "compiler.err.cannot.create.array.with.type.arguments"

    const-string v3, "cannot create array with type arguments"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27

    aput-object v1, v0, v3

    const-string v1, "compiler.err.cant.access"

    const-string v3, "cannot access {0}\n{1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x28

    aput-object v1, v0, v4

    const-string v1, "compiler.err.cant.apply.diamond"

    const-string v4, "cannot infer type arguments for {0}"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x29

    aput-object v1, v0, v4

    const-string v1, "compiler.err.cant.apply.diamond.1"

    const-string v4, "cannot infer type arguments for {0}\nreason: {1}"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x2a

    aput-object v1, v0, v5

    const-string v1, "compiler.err.cant.apply.symbol"

    const-string v5, "{0} {1} in {4} {5} cannot be applied to given types;\nrequired: {2}\nfound: {3}\nreason: {6}"

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x2b

    aput-object v1, v0, v5

    const-string v1, "compiler.err.cant.apply.symbols"

    const-string v5, "no suitable {0} found for {1}({2})"

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x2c

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.assign.val.to.final.var"

    const-string v6, "cannot assign a value to final variable {0}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x2d

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.assign.val.to.this"

    const-string v6, "cannot assign to \'\'this\'\'"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x2e

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.deref"

    const-string v6, "{0} cannot be dereferenced"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x2f

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.extend.intf.annotation"

    const-string v6, "\'\'extends\'\' not allowed for @interfaces"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x30

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.inherit.diff.arg"

    const-string v6, "{0} cannot be inherited with different arguments: <{1}> and <{2}>"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x31

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.inherit.from.anon"

    const-string v6, "cannot inherit from anonymous class"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x32

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.inherit.from.final"

    const-string v6, "cannot inherit from final {0}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x33

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.read.file"

    const-string v6, "cannot read: {0}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x34

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.ref.before.ctor.called"

    const-string v6, "cannot reference {0} before supertype constructor has been called"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x35

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.ref.non.effectively.final.var"

    const-string v6, "local variables referenced from {1} must be final or effectively final"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x36

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve"

    const-string v6, "cannot find symbol\nsymbol: {0} {1}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x37

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.args"

    const-string v6, "cannot find symbol\nsymbol: {0} {1}({3})"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x38

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.args.params"

    const-string v6, "cannot find symbol\nsymbol: {0} <{2}>{1}({3})"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x39

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.location"

    const-string v6, "cannot find symbol\nsymbol:   {0} {1}\nlocation: {4}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x3a

    aput-object v1, v0, v6

    const-string v1, "compiler.err.cant.resolve.location.args"

    const-string v6, "cannot find symbol\nsymbol:   {0} {1}({3})\nlocation: {4}"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v7, 0x3b

    aput-object v1, v0, v7

    const-string v1, "compiler.err.cant.resolve.location.args.params"

    const-string v7, "cannot find symbol\nsymbol:   {0} <{2}>{1}({3})\nlocation: {4}"

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x3c

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cant.select.static.class.from.param.type"

    const-string v8, "cannot select a static class from a parameterized type"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x3d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cant.type.annotate.scoping"

    const-string v8, "scoping construct cannot be annotated with type-use annotations: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x3e

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cant.type.annotate.scoping.1"

    const-string v8, "scoping construct cannot be annotated with type-use annotation: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x3f

    aput-object v1, v0, v8

    const-string v1, "compiler.err.catch.without.try"

    const-string v8, "\'\'catch\'\' without \'\'try\'\'"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x40

    aput-object v1, v0, v8

    const-string v1, "compiler.err.clash.with.pkg.of.same.name"

    const-string v8, "{0} {1} clashes with package of same name"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x41

    aput-object v1, v0, v8

    const-string v1, "compiler.err.class.cant.write"

    const-string v8, "error while writing {0}: {1}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x42

    aput-object v1, v0, v8

    const-string v1, "compiler.err.class.not.allowed"

    const-string v8, "class, interface or enum declaration not allowed here"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x43

    aput-object v1, v0, v8

    const-string v1, "compiler.err.class.public.should.be.in.file"

    const-string v8, "{0} {1} is public, should be declared in a file named {1}.java"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x44

    aput-object v1, v0, v8

    const-string v1, "compiler.err.concrete.inheritance.conflict"

    const-string v8, "methods {0} from {1} and {2} from {3} are inherited with the same signature"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x45

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.exports"

    const-string v8, "duplicate or conflicting exports: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x46

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.exports.to.module"

    const-string v8, "duplicate or conflicting exports to module: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x47

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.opens"

    const-string v8, "duplicate or conflicting opens: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x48

    aput-object v1, v0, v8

    const-string v1, "compiler.err.conflicting.opens.to.module"

    const-string v8, "duplicate or conflicting opens to module: {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x49

    aput-object v1, v0, v8

    const-string v1, "compiler.err.const.expr.req"

    const-string v8, "constant expression required"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4a

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cont.outside.loop"

    const-string v8, "continue outside of loop"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4b

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cyclic.annotation.element"

    const-string v8, "type of element {0} is cyclic"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4c

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cyclic.inheritance"

    const-string v8, "cyclic inheritance involving {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.cyclic.requires"

    const-string v8, "cyclic dependence involving {0}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4e

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.bad.entity"

    const-string v8, "bad HTML entity"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x4f

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.bad.gt"

    const-string v8, "bad use of \'\'>\'\'"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x50

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.bad.inline.tag"

    const-string v8, "incorrect use of inline tag"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x51

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.gt.expected"

    const-string v8, "\'\'>\'\' expected"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x52

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.identifier.expected"

    const-string v8, "identifier expected"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x53

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.malformed.html"

    const-string v8, "malformed HTML"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x54

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.missing.semicolon"

    const-string v8, "semicolon missing"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x55

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.no.content"

    const-string v8, "no content"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x56

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.no.tag.name"

    const-string v8, "no tag name after \'@\'"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x57

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.ref.bad.parens"

    const-string v8, "\'\')\'\' missing in reference"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x58

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.ref.syntax.error"

    const-string v8, "syntax error in reference"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x59

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.ref.unexpected.input"

    const-string v8, "unexpected text"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5a

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unexpected.content"

    const-string v8, "unexpected content"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5b

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unterminated.inline.tag"

    const-string v8, "unterminated inline tag"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5c

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unterminated.signature"

    const-string v8, "unterminated signature"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.dc.unterminated.string"

    const-string v8, "unterminated string"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5e

    aput-object v1, v0, v8

    const-string v1, "compiler.err.default.allowed.in.intf.annotation.member"

    const-string v8, "default value only allowed in an annotation type declaration"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x5f

    aput-object v1, v0, v8

    const-string v1, "compiler.err.default.methods.not.supported.in.source"

    const-string v8, "default methods are not supported in -source {0}\n(use -source 8 or higher to enable default methods)"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x60

    aput-object v1, v0, v8

    const-string v1, "compiler.err.default.overrides.object.member"

    const-string v8, "default method {0} in {1} {2} overrides a member of java.lang.Object"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x61

    aput-object v1, v0, v8

    const-string v1, "compiler.err.diamond.not.supported.in.source"

    const-string v8, "diamond operator is not supported in -source {0}\n(use -source 7 or higher to enable diamond operator)"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x62

    aput-object v1, v0, v8

    const-string v1, "compiler.err.does.not.override.abstract"

    const-string v8, "{0} is not abstract and does not override abstract method {1} in {2}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x63

    aput-object v1, v0, v8

    const-string v1, "compiler.err.doesnt.exist"

    const-string v8, "package {0} does not exist"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x64

    aput-object v1, v0, v9

    const-string v1, "compiler.err.dot.class.expected"

    const-string v9, "\'\'.class\'\' expected"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x65

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.annotation.invalid.repeated"

    const-string v9, "annotation {0} is not a valid repeatable annotation"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x66

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.annotation.member.value"

    const-string v9, "duplicate element \'\'{0}\'\' in annotation @{1}."

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x67

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.annotation.missing.container"

    const-string v9, "{0} is not a repeatable annotation type"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x68

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.case.label"

    const-string v9, "duplicate case label"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x69

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.class"

    const-string v9, "duplicate class: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.default.label"

    const-string v9, "duplicate default label"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.module"

    const-string v9, "duplicate module: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.module.on.path"

    const-string v9, "duplicate module on {0}\nmodule in {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.provides"

    const-string v9, "duplicate provides: service {0}, implementation {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.requires"

    const-string v9, "duplicate requires: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x6f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.duplicate.uses"

    const-string v9, "duplicate uses: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x70

    aput-object v1, v0, v9

    const-string v1, "compiler.err.else.without.if"

    const-string v9, "\'\'else\'\' without \'\'if\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x71

    aput-object v1, v0, v9

    const-string v1, "compiler.err.empty.char.lit"

    const-string v9, "empty character literal"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x72

    aput-object v1, v0, v9

    const-string v1, "compiler.err.encl.class.required"

    const-string v9, "an enclosing instance that contains {0} is required"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x73

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.annotation.must.be.enum.constant"

    const-string v9, "an enum annotation value must be an enum constant"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x74

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.as.identifier"

    const-string v9, "as of release 5, \'\'enum\'\' is a keyword, and may not be used as an identifier"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x75

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.cant.be.instantiated"

    const-string v9, "enum types may not be instantiated"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x76

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.label.must.be.unqualified.enum"

    const-string v9, "an enum switch case label must be the unqualified name of an enumeration constant"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x77

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.no.finalize"

    const-string v9, "enums cannot have finalize methods"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x78

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.no.subclassing"

    const-string v9, "classes cannot directly extend java.lang.Enum"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x79

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enum.types.not.extensible"

    const-string v9, "enum types are not extensible"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.enums.must.be.static"

    const-string v9, "enum declarations allowed only in static contexts"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.error"

    const-string v9, "error: "

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.error.reading.file"

    const-string v9, "error reading {0}; {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.except.already.caught"

    const-string v9, "exception {0} has already been caught"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.except.never.thrown.in.try"

    const-string v9, "exception {0} is never thrown in body of corresponding try statement"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x7f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected"

    const-string v9, "{0} expected"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x80

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected.module"

    const-string v9, "expected \'\'module\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x81

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected.module.or.open"

    const-string v9, "\'\'module\'\' or \'\'open\'\' expected"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x82

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected2"

    const-string v9, "{0} or {1} expected"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x83

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expected3"

    const-string v9, "{0}, {1}, or {2} expected"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x84

    aput-object v1, v0, v9

    const-string v1, "compiler.err.expression.not.allowable.as.annotation.value"

    const-string v9, "expression not allowed as annotation value"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x85

    aput-object v1, v0, v9

    const-string v1, "compiler.err.file.patched.and.msp"

    const-string v9, "file accessible from both --patch-module and --module-source-path, but belongs to a different module on each path: {0}, {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x86

    aput-object v1, v0, v9

    const-string v1, "compiler.err.file.sb.on.source.or.patch.path.for.module"

    const-string v9, "file should be on source path, or on patch path for module"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x87

    aput-object v1, v0, v9

    const-string v1, "compiler.err.final.parameter.may.not.be.assigned"

    const-string v9, "final parameter {0} may not be assigned"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x88

    aput-object v1, v0, v9

    const-string v1, "compiler.err.finally.without.try"

    const-string v9, "\'\'finally\'\' without \'\'try\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x89

    aput-object v1, v0, v9

    const-string v1, "compiler.err.foreach.not.applicable.to.type"

    const-string v9, "for-each not applicable to expression type\nrequired: {1}\nfound:    {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.fp.number.too.large"

    const-string v9, "floating point number too large"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.fp.number.too.small"

    const-string v9, "floating point number too small"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.generic.array.creation"

    const-string v9, "generic array creation"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.generic.throwable"

    const-string v9, "a generic class may not extend java.lang.Throwable"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.icls.cant.have.static.decl"

    const-string v9, "Illegal static declaration in inner class {0}\nmodifier \'\'static\'\' is only allowed in constant variable declarations"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.argument.for.option"

    const-string v9, "illegal argument for {0}: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x90

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.char"

    const-string v9, "illegal character: \'\'{0}\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x91

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.char.for.encoding"

    const-string v9, "unmappable character (0x{0}) for encoding {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x92

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.combination.of.modifiers"

    const-string v9, "illegal combination of modifiers: {0} and {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x93

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.default.super.call"

    const-string v9, "bad type qualifier {0} in default super call\n{1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x94

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.dot"

    const-string v9, "illegal \'\'.\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x95

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.enum.static.ref"

    const-string v9, "illegal reference to static field from initializer"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x96

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.esc.char"

    const-string v9, "illegal escape character"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x97

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.forward.ref"

    const-string v9, "illegal forward reference"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x98

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.generic.type.for.instof"

    const-string v9, "illegal generic type for instanceof"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x99

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.initializer.for.type"

    const-string v9, "illegal initializer for {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9a

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.line.end.in.char.lit"

    const-string v9, "illegal line end in character literal"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9b

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.nonascii.digit"

    const-string v9, "illegal non-ASCII digit"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9c

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.qual.not.icls"

    const-string v9, "illegal qualifier; {0} is not an inner class"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9d

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.self.ref"

    const-string v9, "self-reference in initializer"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9e

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.start.of.expr"

    const-string v9, "illegal start of expression"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x9f

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.start.of.stmt"

    const-string v9, "illegal start of statement"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa0

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.start.of.type"

    const-string v9, "illegal start of type"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa1

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.static.intf.meth.call"

    const-string v9, "illegal static interface method call\nthe receiver expression should be replaced with the type qualifier \'\'{0}\'\'"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa2

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.underscore"

    const-string v9, "illegal underscore"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa3

    aput-object v1, v0, v9

    const-string v1, "compiler.err.illegal.unicode.esc"

    const-string v9, "illegal unicode escape"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa4

    aput-object v1, v0, v9

    const-string v1, "compiler.err.import.requires.canonical"

    const-string v9, "import requires canonical name for {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa5

    aput-object v1, v0, v9

    const-string v1, "compiler.err.improperly.formed.type.inner.raw.param"

    const-string v9, "improperly formed type, type arguments given on a raw type"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa6

    aput-object v1, v0, v9

    const-string v1, "compiler.err.improperly.formed.type.param.missing"

    const-string v9, "improperly formed type, some parameters are missing"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa7

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incomparable.types"

    const-string v9, "incomparable types: {0} and {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa8

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incompatible.thrown.types.in.mref"

    const-string v9, "incompatible thrown types {0} in method reference"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xa9

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.constructor.receiver.name"

    const-string v9, "the receiver name does not match the enclosing outer class type\nrequired: {0}\nfound: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xaa

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.constructor.receiver.type"

    const-string v9, "the receiver type does not match the enclosing outer class type\nrequired: {0}\nfound: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xab

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.receiver.name"

    const-string v9, "the receiver name does not match the enclosing class type\nrequired: {0}\nfound: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xac

    aput-object v1, v0, v9

    const-string v1, "compiler.err.incorrect.receiver.type"

    const-string v9, "the receiver type does not match the enclosing class type\nrequired: {0}\nfound: {1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xad

    aput-object v1, v0, v9

    const-string v1, "compiler.err.initializer.must.be.able.to.complete.normally"

    const-string v9, "initializer must be able to complete normally"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xae

    aput-object v1, v0, v9

    const-string v1, "compiler.err.initializer.not.allowed"

    const-string v9, "initializers not allowed in interfaces"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xaf

    aput-object v1, v0, v9

    const-string v1, "compiler.err.int.number.too.large"

    const-string v9, "integer number too large: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb0

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intersection.types.in.cast.not.supported.in.source"

    const-string v9, "intersection types in cast are not supported in -source {0}\n(use -source 8 or higher to enable intersection types in cast)"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb1

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.cant.have.type.params"

    const-string v9, "annotation type {0} cannot be generic"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb2

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.member.clash"

    const-string v9, "annotation type {1} declares an element with the same name as method {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb3

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.members.cant.have.params"

    const-string v9, "elements in annotation type declarations cannot declare formal parameters"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb4

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.annotation.members.cant.have.type.params"

    const-string v9, "elements in annotation type declarations cannot be generic methods"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb5

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.expected.here"

    const-string v9, "interface expected here"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb6

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.meth.cant.have.body"

    const-string v9, "interface abstract methods cannot have body"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb7

    aput-object v1, v0, v9

    const-string v1, "compiler.err.intf.not.allowed.here"

    const-string v9, "interface not allowed here"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb8

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.annotation.member.type"

    const-string v9, "invalid type for element {0} of annotation type"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xb9

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.binary.number"

    const-string v9, "binary numbers must contain at least one binary digit"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xba

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.hex.number"

    const-string v9, "hexadecimal numbers must contain at least one hexadecimal digit"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbb

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.meth.decl.ret.type.req"

    const-string v9, "invalid method declaration; return type required"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbc

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.module.directive"

    const-string v9, "module directive keyword or \'\'}\'\' expected"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbd

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.module.specifier"

    const-string v9, "module specifier not allowed: {0}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0xbe

    aput-object v1, v0, v9

    const-string v1, "compiler.err.invalid.mref"

    const-string v9, "invalid {0} reference\n{1}"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xbf

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation"

    const-string v10, "duplicate annotation: {0} is annotated with an invalid @Repeatable annotation"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc0

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.elem.nondefault"

    const-string v10, "containing annotation type ({0}) does not have a default value for element {1}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc1

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.incompatible.target"

    const-string v10, "containing annotation type ({0}) is applicable to more targets than repeatable annotation type ({1})"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc2

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.invalid.value"

    const-string v10, "{0} is not a valid @Repeatable: invalid value element"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc3

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.multiple.values"

    const-string v10, "{0} is not a valid @Repeatable, {1} element methods named \'\'value\'\' declared"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc4

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.no.value"

    const-string v10, "{0} is not a valid @Repeatable, no value element method declared"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc5

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.applicable"

    const-string v10, "container {0} is not applicable to element {1}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc6

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.applicable.in.context"

    const-string v10, "container {0} is not applicable in this type context"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc7

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.documented"

    const-string v10, "repeatable annotation type ({1}) is @Documented while containing annotation type ({0}) is not"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc8

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.not.inherited"

    const-string v10, "repeatable annotation type ({1}) is @Inherited while containing annotation type ({0}) is not"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xc9

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.repeated.and.container.present"

    const-string v10, "container {0} must not be present at the same time as the element it contains"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xca

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.retention"

    const-string v10, "retention of containing annotation type ({0}) is shorter than the retention of repeatable annotation type ({2})"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcb

    aput-object v1, v0, v10

    const-string v1, "compiler.err.invalid.repeatable.annotation.value.return"

    const-string v10, "containing annotation type ({0}) must declare an element named \'\'value\'\' of type {2}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcc

    aput-object v1, v0, v10

    const-string v1, "compiler.err.io.exception"

    const-string v10, "error reading source file: {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcd

    aput-object v1, v0, v10

    const-string v1, "compiler.err.label.already.in.use"

    const-string v10, "label {0} already in use"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xce

    aput-object v1, v0, v10

    const-string v1, "compiler.err.lambda.body.neither.value.nor.void.compatible"

    const-string v10, "lambda body is neither value nor void compatible"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xcf

    aput-object v1, v0, v10

    const-string v1, "compiler.err.lambda.not.supported.in.source"

    const-string v10, "lambda expressions are not supported in -source {0}\n(use -source 8 or higher to enable lambda expressions)"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd0

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.code"

    const-string v10, "code too large"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd1

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.code.too.large.for.try.stmt"

    const-string v10, "code too large for try statement"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd2

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.dimensions"

    const-string v10, "array type has too many dimensions"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd3

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.locals"

    const-string v10, "too many local variables"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd4

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.parameters"

    const-string v10, "too many parameters"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd5

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.pool"

    const-string v10, "too many constants"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd6

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.pool.in.class"

    const-string v10, "too many constants in class {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd7

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.stack"

    const-string v10, "code requires too much stack"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd8

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.string"

    const-string v10, "constant string too long"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xd9

    aput-object v1, v0, v10

    const-string v1, "compiler.err.limit.string.overflow"

    const-string v10, "UTF8 representation for string \"{0}...\" is too long for the constant pool"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xda

    aput-object v1, v0, v10

    const-string v1, "compiler.err.local.enum"

    const-string v10, "enum types must not be local"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdb

    aput-object v1, v0, v10

    const-string v1, "compiler.err.local.var.accessed.from.icls.needs.final"

    const-string v10, "local variable {0} is accessed from within inner class; needs to be declared final"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdc

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.bad.module-info"

    const-string v10, "problem reading module-info.class in {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdd

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.cant.get.module.name.for.jar"

    const-string v10, "cannot determine module name for {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xde

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.cant.read.directory"

    const-string v10, "cannot read directory {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xdf

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.cant.read.file"

    const-string v10, "cannot read file {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe0

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.invalid.arg.for.xpatch"

    const-string v10, "invalid argument for --patch-module option: {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe1

    aput-object v1, v0, v10

    const-string v1, "compiler.err.locn.module-info.not.allowed.on.patch.path"

    const-string v10, "module-info.class not allowed on patch path: {0}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe2

    aput-object v1, v0, v10

    const-string v1, "compiler.err.malformed.fp.lit"

    const-string v10, "malformed floating point literal"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe3

    aput-object v1, v0, v10

    const-string v1, "compiler.err.method.does.not.override.superclass"

    const-string v10, "method does not override or implement a method from a supertype"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe4

    aput-object v1, v0, v10

    const-string v1, "compiler.err.method.invoked.with.incorrect.number.arguments"

    const-string v10, "method invoked with incorrect number of arguments; expected {0}, found {1}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe5

    aput-object v1, v0, v10

    const-string v1, "compiler.err.method.references.not.supported.in.source"

    const-string v10, "method references are not supported in -source {0}\n(use -source 8 or higher to enable method references)"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe6

    aput-object v1, v0, v10

    const-string v1, "compiler.err.missing.meth.body.or.decl.abstract"

    const-string v10, "missing method body, or declare abstract"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe7

    aput-object v1, v0, v10

    const-string v1, "compiler.err.missing.ret.stmt"

    const-string v10, "missing return statement"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe8

    aput-object v1, v0, v10

    const-string v1, "compiler.err.mod.not.allowed.here"

    const-string v10, "modifier {0} not allowed here"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xe9

    aput-object v1, v0, v10

    const-string v1, "compiler.err.module.decl.sb.in.module-info.java"

    const-string v10, "module declarations should be in a file named module-info.java"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0xea

    aput-object v1, v0, v10

    const-string v1, "compiler.err.module.name.mismatch"

    const-string v10, "module name {0} does not match expected name {1}"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v11, 0xeb

    aput-object v1, v0, v11

    const-string v1, "compiler.err.module.non.zero.opens"

    const-string v11, "open module {0} has non-zero opens_count"

    filled-new-array {v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0xec

    aput-object v1, v0, v12

    const-string v1, "compiler.err.module.not.found"

    const-string v12, "module not found: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xed

    aput-object v1, v0, v13

    const-string v1, "compiler.err.module.not.found.in.module.source.path"

    const-string v13, "module {0} not found in module source path"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xee

    aput-object v1, v0, v13

    const-string v1, "compiler.err.module.not.found.on.module.source.path"

    const-string v13, "module not found on module source path"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xef

    aput-object v1, v0, v13

    const-string v1, "compiler.err.modules.not.supported.in.source"

    const-string v13, "modules are not supported in -source {0}\n(use -source 9 or higher to enable modules)"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf0

    aput-object v1, v0, v13

    const-string v1, "compiler.err.modulesourcepath.must.be.specified.with.dash.m.option"

    const-string v13, "module source path must be specified if -m option is used"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf1

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multi-module.outdir.cannot.be.exploded.module"

    const-string v13, "in multi-module mode, the output directory cannot be an exploded module: {0}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf2

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multicatch.not.supported.in.source"

    const-string v13, "multi-catch statement is not supported in -source {0}\n(use -source 7 or higher to enable multi-catch statement)"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf3

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multicatch.parameter.may.not.be.assigned"

    const-string v13, "multi-catch parameter {0} may not be assigned"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf4

    aput-object v1, v0, v13

    const-string v1, "compiler.err.multicatch.types.must.be.disjoint"

    const-string v13, "Alternatives in a multi-catch statement cannot be related by subclassing\nAlternative {0} is a subclass of alternative {1}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf5

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure"

    const-string v13, "name clash: {0} and {1} have the same erasure"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf6

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure.no.hide"

    const-string v13, "name clash: {0} in {1} and {2} in {3} have the same erasure, yet neither hides the other"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf7

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure.no.override"

    const-string v13, "name clash: {0} in {1} and {2} in {3} have the same erasure, yet neither overrides the other"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf8

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.clash.same.erasure.no.override.1"

    const-string v13, "name clash: {0} in {1} overrides a method whose erasure is the same as another method, yet neither overrides the other\nfirst method:  {2} in {3}\nsecond method: {4} in {5}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xf9

    aput-object v1, v0, v13

    const-string v1, "compiler.err.name.reserved.for.internal.use"

    const-string v13, "{0} is reserved for internal use"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfa

    aput-object v1, v0, v13

    const-string v1, "compiler.err.native.meth.cant.have.body"

    const-string v13, "native methods cannot have a body"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfb

    aput-object v1, v0, v13

    const-string v1, "compiler.err.neither.conditional.subtype"

    const-string v13, "incompatible types for ?: neither is a subtype of the other\nsecond operand: {0}\nthird operand : {1}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfc

    aput-object v1, v0, v13

    const-string v1, "compiler.err.new.not.allowed.in.annotation"

    const-string v13, "\'\'new\'\' not allowed in an annotation"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfd

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.annotation.member"

    const-string v13, "no annotation member {0} in {1}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xfe

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.annotations.on.dot.class"

    const-string v13, "no annotations are allowed in the type of a class literal"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0xff

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.encl.instance.of.type.in.scope"

    const-string v13, "no enclosing instance of type {0} is in scope"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x100

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.intf.expected.here"

    const-string v13, "no interface expected here"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x101

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.match.entry"

    const-string v13, "{0} has no match in entry in {1}; required {2}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x102

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.opens.unless.strong"

    const-string v13, "\'\'opens\'\' only allowed in strong modules"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x103

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.output.dir"

    const-string v13, "no class output directory specified"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x104

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.pkg.in.module-info.java"

    const-string v13, "package declarations not allowed in file module-info.java"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x105

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.superclass"

    const-string v13, "{0} has no superclass."

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x106

    aput-object v1, v0, v13

    const-string v1, "compiler.err.no.zipfs.for.archive"

    const-string v13, "No file system provider is available to handle this file: {0}"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x107

    aput-object v1, v0, v13

    const-string v1, "compiler.err.non-static.cant.be.ref"

    const-string v13, "non-static {0} {1} cannot be referenced from a static context"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x108

    aput-object v1, v0, v13

    const-string v1, "compiler.err.not.annotation.type"

    const-string v13, "{0} is not an annotation type"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x109

    aput-object v1, v0, v13

    const-string v1, "compiler.err.not.def.access.class.intf.cant.access"

    const-string v13, "{1}.{0} is defined in an inaccessible class or interface"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v14, 0x10a

    aput-object v1, v0, v14

    const-string v1, "compiler.err.not.def.access.class.intf.cant.access.reason"

    const-string v14, "{1}.{0} in package {2} is not accessible\n({3})"

    filled-new-array {v1, v14}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v15, 0x10b

    aput-object v1, v0, v15

    const-string v1, "compiler.err.not.def.access.package.cant.access"

    const-string v15, "{0} is not visible\n({2})"

    filled-new-array {v1, v15}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v16, 0x10c

    aput-object v1, v0, v16

    const-string v1, "compiler.err.not.def.public"

    move-object/from16 v16, v8

    const-string v8, "{0} is not public in {1}"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0x10d

    aput-object v1, v0, v8

    const-string v1, "compiler.err.not.def.public.cant.access"

    const-string v8, "{0} is not public in {1}; cannot be accessed from outside package"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v17, 0x10e

    aput-object v1, v0, v17

    const-string v1, "compiler.err.not.encl.class"

    move-object/from16 v17, v12

    const-string v12, "not an enclosing class: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x10f

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.in.module.on.module.source.path"

    const-string v12, "not in a module on the module source path"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x110

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.in.profile"

    const-string v12, "{0} is not available in profile \'\'{1}\'\'"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x111

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.loop.label"

    const-string v12, "not a loop label: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x112

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.stmt"

    const-string v12, "not a statement"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x113

    aput-object v1, v0, v12

    const-string v1, "compiler.err.not.within.bounds"

    const-string v12, "type argument {0} is not within bounds of type-variable {1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x114

    aput-object v1, v0, v12

    const-string v1, "compiler.err.operator.cant.be.applied"

    const-string v12, "bad operand type {1} for unary operator \'\'{0}\'\'"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x115

    aput-object v1, v0, v12

    const-string v1, "compiler.err.operator.cant.be.applied.1"

    const-string v12, "bad operand types for binary operator \'\'{0}\'\'\nfirst type:  {1}\nsecond type: {2}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x116

    aput-object v1, v0, v12

    const-string v1, "compiler.err.option.removed.source"

    const-string v12, "Source option {0} is no longer supported. Use {1} or later."

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x117

    aput-object v1, v0, v12

    const-string v1, "compiler.err.option.removed.target"

    const-string v12, "Target option {0} is no longer supported. Use {1} or later."

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x118

    aput-object v1, v0, v12

    const-string v1, "compiler.err.orphaned"

    const-string v12, "orphaned {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x119

    aput-object v1, v0, v12

    const-string v1, "compiler.err.output.dir.must.be.specified.with.dash.m.option"

    const-string v12, "class output directory must be specified if -m option is used"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11a

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.incompatible.ret"

    const-string v12, "{0}\nreturn type {1} is not compatible with {2}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11b

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.meth"

    const-string v12, "{0}\noverridden method is {1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11c

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.meth.doesnt.throw"

    const-string v12, "{0}\noverridden method does not throw {1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v18, 0x11d

    aput-object v1, v0, v18

    const-string v1, "compiler.err.override.static"

    move-object/from16 v18, v12

    const-string v12, "{0}\noverriding method is static"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11e

    aput-object v1, v0, v12

    const-string v1, "compiler.err.override.weaker.access"

    const-string v12, "{0}\nattempting to assign weaker access privileges; was {1}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x11f

    aput-object v1, v0, v12

    const-string v1, "compiler.err.package.clash.from.requires"

    const-string v12, "module {0} reads package {1} from both {2} and {3}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x120

    aput-object v1, v0, v12

    const-string v1, "compiler.err.package.clash.from.requires.in.unnamed"

    const-string v12, "the unnamed module reads package {0} from both {1} and {2}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x121

    aput-object v1, v0, v12

    const-string v1, "compiler.err.package.empty.or.not.found"

    const-string v12, "package is empty or does not exist: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v19, 0x122

    aput-object v1, v0, v19

    const-string v1, "compiler.err.package.in.other.module"

    move-object/from16 v19, v12

    const-string v12, "package exists in another module: {0}"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0x123

    aput-object v1, v0, v12

    const-string v1, "compiler.err.package.not.visible"

    const-string v12, "package {0} is not visible\n({1})"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v20, 0x124

    aput-object v1, v0, v20

    const-string v1, "compiler.err.patch.module.with.release"

    move-object/from16 v20, v2

    const-string v2, "patching system module {0} is not allowed in combination with --release"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x125

    aput-object v1, v0, v2

    const-string v1, "compiler.err.pkg.annotations.sb.in.package-info.java"

    const-string v2, "package annotations should be in file package-info.java"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x126

    aput-object v1, v0, v2

    const-string v1, "compiler.err.pkg.clashes.with.class.of.same.name"

    const-string v2, "package {0} clashes with class of same name"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x127

    aput-object v1, v0, v2

    const-string v1, "compiler.err.plugin.not.found"

    const-string v2, "plug-in not found: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x128

    aput-object v1, v0, v2

    const-string v1, "compiler.err.premature.eof"

    const-string v2, "reached end of file while parsing"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x129

    aput-object v1, v0, v2

    const-string v1, "compiler.err.private.intf.methods.not.supported.in.source"

    const-string v2, "private interface methods are not supported in -source {0}\n(use -source 9 or higher to enable private interface methods)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    const-string v1, "compiler.err.prob.found.req"

    const-string v2, "incompatible types: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v21, 0x12b

    aput-object v1, v0, v21

    const-string v1, "compiler.err.proc.bad.config.file"

    move-object/from16 v21, v2

    const-string v2, "Bad service configuration file, or exception thrown while constructing Processor object: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.access"

    const-string v2, "cannot access {0}\n{1}\nConsult the following stack trace for details.\n{2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.access.1"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.create.loader"

    const-string v2, "Could not create class loader for annotation processors: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.cant.find.class"

    const-string v2, "Could not find class file for \'\'{0}\'\'."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x130

    aput-object v1, v0, v2

    const-string v1, "compiler.err.proc.messager"

    const-string v2, "{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x131

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.no.explicit.annotation.processing.requested"

    const-string v3, "Class names, \'\'{0}\'\', are only accepted if annotation processing is explicitly requested"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x132

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.no.service"

    const-string v3, "A ServiceLoader was not usable and is required for annotation processing."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x133

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.bad.option.name"

    const-string v3, "Bad option name \'\'{0}\'\' provided by processor \'\'{1}\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x134

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.cant.instantiate"

    const-string v3, "Could not instantiate an instance of processor \'\'{0}\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x135

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.not.found"

    const-string v3, "Annotation processor \'\'{0}\'\' not found"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x136

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.processor.wrong.type"

    const-string v3, "Annotation processor \'\'{0}\'\' does not implement javax.annotation.processing.Processor"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x137

    aput-object v1, v0, v3

    const-string v1, "compiler.err.proc.service.problem"

    const-string v3, "Error creating a service loader to load Processors."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x138

    aput-object v1, v0, v3

    const-string v1, "compiler.err.processorpath.no.processormodulepath"

    const-string v3, "illegal combination of -processorpath and --processor-module-path"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x139

    aput-object v1, v0, v3

    const-string v1, "compiler.err.qualified.new.of.static.class"

    const-string v3, "qualified new of static class"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13a

    aput-object v1, v0, v3

    const-string v1, "compiler.err.receiver.parameter.not.applicable.constructor.toplevel.class"

    const-string v3, "receiver parameter not applicable for constructor of top-level class"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13b

    aput-object v1, v0, v3

    const-string v1, "compiler.err.recursive.ctor.invocation"

    const-string v3, "recursive constructor invocation"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x13c

    aput-object v1, v0, v3

    const-string v1, "compiler.err.ref.ambiguous"

    const-string v3, "reference to {0} is ambiguous\nboth {1} {2} in {3} and {4} {5} in {6} match"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v22, 0x13d

    aput-object v1, v0, v22

    const-string v1, "compiler.err.repeatable.annotations.not.supported.in.source"

    move-object/from16 v22, v2

    const-string v2, "repeated annotations are not supported in -source {0}\n(use -source 8 or higher to enable repeated annotations)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.repeated.annotation.target"

    const-string v2, "repeated annotation target"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.repeated.interface"

    const-string v2, "repeated interface"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x140

    aput-object v1, v0, v2

    const-string v1, "compiler.err.repeated.modifier"

    const-string v2, "repeated modifier"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x141

    aput-object v1, v0, v2

    const-string v1, "compiler.err.repeated.provides.for.service"

    const-string v2, "multiple \'\'provides\'\' for service {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x142

    aput-object v1, v0, v2

    const-string v1, "compiler.err.report.access"

    const-string v2, "{0} has {1} access in {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x143

    aput-object v1, v0, v2

    const-string v1, "compiler.err.ret.outside.meth"

    const-string v2, "return outside method"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x144

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.definition.is.enum"

    const-string v2, "the service definition is an enum: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x145

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.implementation.doesnt.have.a.no.args.constructor"

    const-string v2, "the service implementation does not have a default constructor: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x146

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.implementation.is.abstract"

    const-string v2, "the service implementation is an abstract class: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x147

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.implementation.is.inner"

    const-string v2, "the service implementation is an inner class: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x148

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.implementation.must.be.subtype.of.service.interface"

    const-string v2, "the service implementation type must be a subtype of the service interface type, or have a public static no-args method named \"provider\" returning the service implementation"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x149

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.implementation.no.args.constructor.not.public"

    const-string v2, "the no arguments constructor of the service implementation is not public: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.implementation.not.in.right.module"

    const-string v2, "service implementation must be defined in the same module as the provides directive"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14b

    aput-object v1, v0, v2

    const-string v1, "compiler.err.service.implementation.provider.return.must.be.subtype.of.service.interface"

    const-string v2, "the \"provider\" method return type must be a subtype of the service interface type"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.signature.doesnt.match.intf"

    const-string v2, "signature does not match {0}; incompatible interfaces"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.signature.doesnt.match.supertype"

    const-string v2, "signature does not match {0}; incompatible supertype"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.source.cant.overwrite.input.file"

    const-string v2, "error writing source; cannot overwrite input file {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.stack.sim.error"

    const-string v2, "Internal error: stack sim error on {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x150

    aput-object v1, v0, v2

    const-string v1, "compiler.err.static.imp.only.classes.and.interfaces"

    const-string v2, "static import only from classes and interfaces"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x151

    aput-object v1, v0, v2

    const-string v1, "compiler.err.static.intf.method.invoke.not.supported.in.source"

    const-string v2, "static interface method invocations are not supported in -source {0}\n(use -source 8 or higher to enable static interface method invocations)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x152

    aput-object v1, v0, v2

    const-string v1, "compiler.err.static.intf.methods.not.supported.in.source"

    const-string v2, "static interface methods are not supported in -source {0}\n(use -source 8 or higher to enable static interface methods)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x153

    aput-object v1, v0, v2

    const-string v1, "compiler.err.string.const.req"

    const-string v2, "constant string expression required"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x154

    aput-object v1, v0, v2

    const-string v1, "compiler.err.string.switch.not.supported.in.source"

    const-string v2, "strings in switch are not supported in -source {0}\n(use -source 7 or higher to enable strings in switch)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x155

    aput-object v1, v0, v2

    const-string v1, "compiler.err.synthetic.name.conflict"

    const-string v2, "the symbol {0} conflicts with a compiler-synthesized symbol in {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x156

    aput-object v1, v0, v2

    const-string v1, "compiler.err.this.as.identifier"

    const-string v2, "as of release 8, \'\'this\'\' is allowed as the parameter name for the receiver type only, which has to be the first parameter"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x157

    aput-object v1, v0, v2

    const-string v1, "compiler.err.throws.not.allowed.in.intf.annotation"

    const-string v2, "throws clause not allowed in @interface members"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x158

    aput-object v1, v0, v2

    const-string v1, "compiler.err.too.many.modules"

    const-string v2, "too many module declarations found"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x159

    aput-object v1, v0, v2

    const-string v1, "compiler.err.too.many.patched.modules"

    const-string v2, "too many patched modules ({0}), use --module-source-path"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15a

    aput-object v1, v0, v2

    const-string v1, "compiler.err.try.resource.may.not.be.assigned"

    const-string v2, "auto-closeable resource {0} may not be assigned"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15b

    aput-object v1, v0, v2

    const-string v1, "compiler.err.try.with.resources.expr.effectively.final.var"

    const-string v2, "variable {0} used as a try-with-resources resource neither final nor effectively final"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.try.with.resources.expr.needs.var"

    const-string v2, "the try-with-resources resource must either be a variable declaration or an expression denoting a reference to a final or effectively final variable"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.try.with.resources.not.supported.in.source"

    const-string v2, "try-with-resources is not supported in -source {0}\n(use -source 7 or higher to enable try-with-resources)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.try.without.catch.finally.or.resource.decls"

    const-string v2, "\'\'try\'\' without \'\'catch\'\', \'\'finally\'\' or resource declarations"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.try.without.catch.or.finally"

    const-string v2, "\'\'try\'\' without \'\'catch\'\' or \'\'finally\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x160

    aput-object v1, v0, v2

    const-string v1, "compiler.err.type.annotations.not.supported.in.source"

    const-string v2, "type annotations are not supported in -source {0}\n(use -source 8 or higher to enable type annotations)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x161

    aput-object v1, v0, v2

    const-string v1, "compiler.err.type.doesnt.take.params"

    const-string v2, "type {0} does not take parameters"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x162

    aput-object v1, v0, v2

    const-string v1, "compiler.err.type.found.req"

    const-string v2, "unexpected type\nrequired: {1}\nfound:    {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x163

    aput-object v1, v0, v2

    const-string v1, "compiler.err.type.var.cant.be.deref"

    const-string v2, "cannot select from a type variable"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x164

    aput-object v1, v0, v2

    const-string v1, "compiler.err.type.var.may.not.be.followed.by.other.bounds"

    const-string v2, "a type variable may not be followed by other bounds"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x165

    aput-object v1, v0, v2

    const-string v1, "compiler.err.type.var.more.than.once"

    const-string v2, "type variable {0} occurs more than once in result type of {1}; cannot be left uninstantiated"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x166

    aput-object v1, v0, v2

    const-string v1, "compiler.err.type.var.more.than.once.in.result"

    const-string v2, "type variable {0} occurs more than once in type of {1}; cannot be left uninstantiated"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x167

    aput-object v1, v0, v2

    const-string v1, "compiler.err.types.incompatible.abstract.default"

    const-string v2, "{0} {1} inherits abstract and default for {2}({3}) from types {4} and {5}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x168

    aput-object v1, v0, v2

    const-string v1, "compiler.err.types.incompatible.diff.ret"

    const-string v2, "types {0} and {1} are incompatible; both define {2}, but with unrelated return types"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x169

    aput-object v1, v0, v2

    const-string v1, "compiler.err.types.incompatible.unrelated.defaults"

    const-string v2, "{0} {1} inherits unrelated defaults for {2}({3}) from types {4} and {5}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16a

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unclosed.char.lit"

    const-string v2, "unclosed character literal"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16b

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unclosed.comment"

    const-string v2, "unclosed comment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unclosed.str.lit"

    const-string v2, "unclosed string literal"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.undef.label"

    const-string v2, "undefined label: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.underscore.as.identifier"

    const-string v2, "as of release 9, \'\'_\'\' is a keyword, and may not be used as an identifier"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.underscore.as.identifier.in.lambda"

    const-string v2, "\'\'_\'\' used as an identifier\n(use of \'\'_\'\' as an identifier is forbidden for lambda parameters)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x170

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unexpected.lambda"

    const-string v2, "lambda expression not expected here"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x171

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unexpected.mref"

    const-string v2, "method reference not expected here"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x172

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unexpected.type"

    const-string v2, "unexpected type\nrequired: {0}\nfound:    {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x173

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unnamed.pkg.not.allowed.named.modules"

    const-string v2, "unnamed package is not allowed in named modules"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x174

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unreachable.stmt"

    const-string v2, "unreachable statement"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x175

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unreported.exception.default.constructor"

    const-string v2, "unreported exception {0} in default constructor"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x176

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unreported.exception.implicit.close"

    const-string v2, "unreported exception {0}; must be caught or declared to be thrown\nexception thrown from implicit call to close() on resource variable \'\'{1}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x177

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unreported.exception.need.to.catch.or.throw"

    const-string v2, "unreported exception {0}; must be caught or declared to be thrown"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x178

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unsupported.binary.lit"

    const-string v2, "binary literals are not supported in -source {0}\n(use -source 7 or higher to enable binary literals)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x179

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unsupported.cross.fp.lit"

    const-string v2, "hexadecimal floating-point literals are not supported on this VM"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17a

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unsupported.encoding"

    const-string v2, "unsupported encoding: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17b

    aput-object v1, v0, v2

    const-string v1, "compiler.err.unsupported.underscore.lit"

    const-string v2, "underscores in literals are not supported in -source {0}\n(use -source 7 or higher to enable underscores in literals)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17c

    aput-object v1, v0, v2

    const-string v1, "compiler.err.var.in.try.with.resources.not.supported.in.source"

    const-string v2, "variables in try-with-resources not supported in -source {0}\n(use -source 9 or higher to enable variables in try-with-resources)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17d

    aput-object v1, v0, v2

    const-string v1, "compiler.err.var.might.already.be.assigned"

    const-string v2, "variable {0} might already have been assigned"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17e

    aput-object v1, v0, v2

    const-string v1, "compiler.err.var.might.be.assigned.in.loop"

    const-string v2, "variable {0} might be assigned in loop"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17f

    aput-object v1, v0, v2

    const-string v1, "compiler.err.var.might.not.have.been.initialized"

    const-string v2, "variable {0} might not have been initialized"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x180

    aput-object v1, v0, v2

    const-string v1, "compiler.err.var.not.initialized.in.default.constructor"

    const-string v2, "variable {0} not initialized in the default constructor"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x181

    aput-object v1, v0, v2

    const-string v1, "compiler.err.varargs.and.old.array.syntax"

    const-string v2, "legacy array notation not allowed on variable-arity parameter"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x182

    aput-object v1, v0, v2

    const-string v1, "compiler.err.varargs.and.receiver"

    const-string v2, "varargs notation not allowed on receiver parameter"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x183

    aput-object v1, v0, v2

    const-string v1, "compiler.err.varargs.invalid.trustme.anno"

    const-string v2, "Invalid {0} annotation. {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x184

    aput-object v1, v0, v2

    const-string v1, "compiler.err.varargs.must.be.last"

    const-string v2, "varargs parameter must be the last parameter"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x185

    aput-object v1, v0, v2

    const-string v1, "compiler.err.variable.not.allowed"

    const-string v2, "variable declaration not allowed here"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x186

    aput-object v1, v0, v2

    const-string v1, "compiler.err.void.not.allowed.here"

    const-string v2, "\'\'void\'\' type not allowed here"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x187

    aput-object v1, v0, v2

    const-string v1, "compiler.err.warnings.and.werror"

    const-string v2, "warnings found and -Werror specified"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x188

    aput-object v1, v0, v2

    const-string v1, "compiler.err.wrong.number.type.args"

    const-string v2, "wrong number of type arguments; required {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x189

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.anachronistic.module.info"

    const-string v2, "module declaration found in version {0}.{1} classfile"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18a

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.anonymous.class"

    const-string v2, "<anonymous {0}>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18b

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.applicable.method.found"

    const-string v2, "#{0} applicable method found: {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18c

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.applicable.method.found.1"

    const-string v2, "#{0} applicable method found: {1}\n({2})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18d

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.arg.length.mismatch"

    const-string v2, "actual and formal argument lists differ in length"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18e

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.class.file"

    const-string v2, "class file is invalid for class {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18f

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.class.file.header"

    const-string v2, "bad class file: {0}\n{1}\nPlease remove or make sure it appears in the correct subdirectory of the classpath."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x190

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.class.signature"

    const-string v2, "bad class signature: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x191

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.const.pool.entry"

    const-string v2, "bad constant pool entry in {0}\nexpected {1} at index {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x192

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.const.pool.tag"

    const-string v2, "bad constant pool tag: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x193

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.const.pool.tag.at"

    const-string v2, "bad constant pool tag: {0} at {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x194

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.constant.range"

    const-string v2, "constant value \'\'{0}\'\' for {1} is outside the expected range for {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x195

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.constant.value"

    const-string v2, "bad constant value \'\'{0}\'\' for {1}, expected {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x196

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.enclosing.class"

    const-string v2, "bad enclosing class for {0}: {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x197

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.enclosing.method"

    const-string v2, "bad enclosing method attribute for class {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x198

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.instance.method.in.unbound.lookup"

    const-string v2, "unexpected instance {0} {1} found in unbound lookup"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x199

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.intersection.target.for.functional.expr"

    const-string v2, "bad intersection type target for lambda or method reference\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19a

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.module-info.name"

    const-string v2, "bad class name"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19b

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.runtime.invisible.param.annotations"

    const-string v2, "bad RuntimeInvisibleParameterAnnotations attribute: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19c

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.signature"

    const-string v2, "bad signature: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19d

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.source.file.header"

    const-string v2, "bad source file: {0}\n{1}\nPlease remove or make sure it appears in the correct subdirectory of the sourcepath."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19e

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.static.method.in.bound.lookup"

    const-string v2, "unexpected static {0} {1} found in bound lookup"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19f

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.static.method.in.unbound.lookup"

    const-string v2, "unexpected static {0} {1} found in unbound lookup"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a0

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.bad.type.annotation.value"

    const-string v2, "bad type annotation target type value: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a1

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.base.membership"

    const-string v2, "all your base class are belong to us"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a2

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.access.inner.cls.constr"

    const-string v2, "cannot access constructor {0}({1})\nan enclosing instance of type {2} is not in scope"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a3

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.apply.diamond.1"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a4

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.apply.symbol"

    const-string v2, "{0} {1} in {4} {5} cannot be applied to given types\nrequired: {2}\nfound: {3}\nreason: {6}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a5

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.apply.symbols"

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a6

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.hide"

    const-string v2, "{0} in {1} cannot hide {2} in {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a7

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.implement"

    const-string v2, "{0} in {1} cannot implement {2} in {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a8

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.override"

    const-string v2, "{0} in {1} cannot override {2} in {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a9

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.resolve.location.args"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1aa

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.resolve.location.args.params"

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ab

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.cant.resolve.modules"

    const-string v2, "cannot resolve modules"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ac

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.captured.type"

    const-string v2, "CAP#{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ad

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.clashes.with"

    const-string v2, "{0} in {1} clashes with {2} in {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ae

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.class.file.not.found"

    const-string v2, "class file for {0} not found"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1af

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.class.file.wrong.class"

    const-string v2, "class file contains wrong class: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b0

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.conditional.target.cant.be.void"

    const-string v2, "target-type for conditional expression cannot be void"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b1

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.count.error"

    const-string v2, "{0} error"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b2

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.count.error.plural"

    const-string v2, "{0} errors"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b3

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.count.warn"

    const-string v2, "{0} warning"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b4

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.count.warn.plural"

    const-string v2, "{0} warnings"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b5

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.descriptor"

    const-string v2, "descriptor: {2} {0}({1})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b6

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.descriptor.throws"

    const-string v2, "descriptor: {2} {0}({1}) throws {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b7

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.diamond"

    const-string v2, "{0}<>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b8

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.diamond.and.anon.class.not.supported.in.source"

    const-string v2, "cannot use \'\'<>\'\' with anonymous inner classes in -source {0}\n(use -source 9 or higher to enable \'\'<>\'\' with anonymous inner classes)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b9

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.diamond.and.explicit.params"

    const-string v2, "cannot use \'\'<>\'\' with explicit type parameters for constructor"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ba

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.diamond.anonymous.methods.implicitly.override"

    const-string v2, "(due to <>, every non-private method declared in this anonymous class must override or implement a method from a supertype)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1bb

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.diamond.invalid.arg"

    const-string v2, "type argument {0} inferred for {1} is not allowed in this context\ninferred argument is not expressible in the Signature attribute"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1bc

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.diamond.invalid.args"

    const-string v2, "type arguments {0} inferred for {1} are not allowed in this context\ninferred arguments are not expressible in the Signature attribute"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1bd

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.diamond.non.generic"

    const-string v2, "cannot use \'\'<>\'\' with non-generic class {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1be

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.explicit.param.do.not.conform.to.bounds"

    const-string v2, "explicit type argument {0} does not conform to declared bound(s) {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1bf

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.fatal.err.cant.close"

    const-string v2, "Fatal Error: Cannot close compiler resources"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c0

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.fatal.err.cant.locate.ctor"

    const-string v2, "Fatal Error: Unable to find constructor for {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c1

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.fatal.err.cant.locate.field"

    const-string v2, "Fatal Error: Unable to find field {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c2

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.fatal.err.cant.locate.meth"

    const-string v2, "Fatal Error: Unable to find method {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c3

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.fatal.err.no.java.lang"

    const-string v2, "Fatal Error: Unable to find package java.lang in classpath or bootclasspath"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c4

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.file.does.not.contain.module"

    const-string v2, "file does not contain module declaration"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c5

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.file.does.not.contain.package"

    const-string v2, "file does not contain package {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c6

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.file.doesnt.contain.class"

    const-string v2, "file does not contain class {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c7

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.illegal.start.of.class.file"

    const-string v2, "illegal start of class file"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c8

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.inaccessible.varargs.type"

    const-string v2, "formal varargs element type {0} is not accessible from {1} {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c9

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.inapplicable.method"

    const-string v2, "{0} {1}.{2} is not applicable\n({3})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ca

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.abstracts"

    const-string v2, "multiple non-overriding abstract methods found in {0} {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1cb

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.arg.types.in.lambda"

    const-string v2, "incompatible parameter types in lambda expression"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1cc

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.arg.types.in.mref"

    const-string v2, "incompatible parameter types in method reference"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1cd

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.descs.in.functional.intf"

    const-string v2, "incompatible function descriptors found in {0} {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ce

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.eq.bounds"

    const-string v2, "inference variable {0} has incompatible equality constraints {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1cf

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.eq.lower.bounds"

    const-string v2, "inference variable {0} has incompatible bounds\nequality constraints: {1}\nlower bounds: {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d0

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.eq.upper.bounds"

    const-string v2, "inference variable {0} has incompatible bounds\nequality constraints: {1}\nupper bounds: {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d1

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.ret.type.in.lambda"

    const-string v2, "bad return type in lambda expression\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d2

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.ret.type.in.mref"

    const-string v2, "bad return type in method reference\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d3

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.type.in.conditional"

    const-string v2, "bad type in conditional expression\n{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d4

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.upper.bounds"

    const-string v2, "inference variable {0} has incompatible upper bounds {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d5

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.incompatible.upper.lower.bounds"

    const-string v2, "inference variable {0} has incompatible bounds\nupper bounds: {1}\nlower bounds: {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d6

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.inconvertible.types"

    const-string v2, "{0} cannot be converted to {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d7

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.infer.arg.length.mismatch"

    const-string v2, "cannot infer type-variable(s) {0}\n(actual and formal argument lists differ in length)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d8

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.infer.no.conforming.assignment.exists"

    const-string v2, "cannot infer type-variable(s) {0}\n(argument mismatch; {1})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d9

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.infer.no.conforming.instance.exists"

    const-string v2, "no instance(s) of type variable(s) {0} exist so that {1} conforms to {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1da

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.infer.varargs.argument.mismatch"

    const-string v2, "cannot infer type-variable(s) {0}\n(varargs mismatch; {1})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1db

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.inferred.do.not.conform.to.eq.bounds"

    const-string v2, "inferred type does not conform to equality constraint(s)\ninferred: {0}\nequality constraints(s): {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1dc

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.inferred.do.not.conform.to.lower.bounds"

    const-string v2, "inferred type does not conform to lower bound(s)\ninferred: {0}\nlower bound(s): {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1dd

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.inferred.do.not.conform.to.upper.bounds"

    const-string v2, "inferred type does not conform to upper bound(s)\ninferred: {0}\nupper bound(s): {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1de

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.inner.cls"

    const-string v2, "an inner class"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1df

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.intersection.type"

    const-string v2, "INT#{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e0

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.invalid.default.interface"

    const-string v2, "default method found in version {0}.{1} classfile"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e1

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.invalid.generic.lambda.target"

    const-string v2, "invalid functional descriptor for lambda expression\nmethod {0} in {1} {2} is generic"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e2

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.invalid.mref"

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e3

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.invalid.static.interface"

    const-string v2, "static method found in version {0}.{1} classfile"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e4

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.annotation"

    const-string v2, "@interface"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e5

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.class"

    const-string v2, "class"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e6

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.constructor"

    const-string v2, "constructor"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e7

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.enum"

    const-string v2, "enum"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e8

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.instance.init"

    const-string v2, "instance initializer"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e9

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.interface"

    const-string v2, "interface"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ea

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.method"

    const-string v2, "method"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1eb

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.module"

    const-string v2, "module"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ec

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.package"

    const-string v2, "package"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ed

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.static"

    const-string v2, "static"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ee

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.static.init"

    const-string v2, "static initializer"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ef

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.type.variable"

    const-string v2, "type variable"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f0

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.type.variable.bound"

    const-string v2, "bound of type variable"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f1

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.value"

    const-string v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f2

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.kindname.variable"

    const-string v2, "variable"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f3

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.lambda"

    const-string v2, "a lambda expression"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f4

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.location"

    const-string v2, "{0} {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f5

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.location.1"

    const-string v2, "{0} {1} of type {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f6

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.locn.module_path"

    const-string v2, "application module path"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f7

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.locn.module_source_path"

    const-string v2, "module source path"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f8

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.locn.system_modules"

    const-string v2, "system modules"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f9

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.locn.upgrade_module_path"

    const-string v2, "upgrade module path"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1fa

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.malformed.vararg.method"

    const-string v2, "class file contains malformed variable arity method: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1fb

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.missing.ret.val"

    const-string v2, "missing return value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1fc

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.module.info.invalid.super.class"

    const-string v2, "module-info with invalid super class"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1fd

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.module.name.mismatch"

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1fe

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.module.non.zero.opens"

    filled-new-array {v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1ff

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.mref.infer.and.explicit.params"

    const-string v2, "cannot use raw constructor reference with explicit type parameters for constructor"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x200

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.no.abstracts"

    const-string v2, "no abstract method found in {0} {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x201

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.no.args"

    const-string v2, "no arguments"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x202

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.no.conforming.assignment.exists"

    const-string v2, "argument mismatch; {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x203

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.no.suitable.functional.intf.inst"

    const-string v2, "cannot infer functional interface descriptor for {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x204

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.no.unique.maximal.instance.exists"

    const-string v2, "no unique maximal instance exists for type variable {0} with upper bounds {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x205

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.no.unique.minimal.instance.exists"

    const-string v2, "no unique minimal instance exists for type variable {0} with lower bounds {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x206

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.a.functional.intf"

    const-string v2, "{0} is not a functional interface"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x207

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.a.functional.intf.1"

    const-string v2, "{0} is not a functional interface\n{1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x208

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.an.intf.component"

    const-string v2, "component type {0} is not an interface"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x209

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.applicable.method.found"

    const-string v2, "#{0} not applicable method found: {1}\n({2})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20a

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.class.intf.cant.access"

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20b

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.class.intf.cant.access.reason"

    filled-new-array {v1, v14}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20c

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.does.not.read"

    const-string v2, "package {1} is declared in module {2}, but module {0} does not read it"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20d

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.does.not.read.from.unnamed"

    const-string v2, "package {0} is declared in module {1}, which is not in the module graph"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20e

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.does.not.read.unnamed"

    const-string v2, "package {0} is declared in the unnamed module, but module {0} does not read it"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20f

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.not.exported"

    const-string v2, "package {0} is declared in module {1}, which does not export it"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x210

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.not.exported.from.unnamed"

    const-string v2, "package {0} is declared in module {1}, which does not export it"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x211

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.not.exported.to.module"

    const-string v2, "package {0} is declared in module {1}, which does not export it to module {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x212

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.not.exported.to.module.from.unnamed"

    const-string v2, "package {0} is declared in module {1}, which does not export it to the unnamed module"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x213

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.access.package.cant.access"

    filled-new-array {v1, v15}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x214

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.not.def.public.cant.access"

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x215

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.overridden.default"

    const-string v2, "method {0} is overridden in {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x216

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.package.not.visible"

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x217

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.partial.inst.sig"

    const-string v2, "partially instantiated to: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x218

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.possible.loss.of.precision"

    const-string v2, "possible lossy conversion from {0} to {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x219

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.prob.found.req"

    move-object/from16 v2, v21

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21a

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.redundant.supertype"

    const-string v2, "redundant interface {0} is extended by {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21b

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.ref.ambiguous"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21c

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.report.access"

    const-string v2, "{0} has {1} access in {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21d

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.resume.abort"

    const-string v2, "R)esume, A)bort>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21e

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.source.unavailable"

    const-string v2, "(source unavailable)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21f

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.stat.expr.expected"

    const-string v2, "lambda body is not compatible with a void functional interface\n(consider using a block lambda body, or use a statement expression instead)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x220

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.static.mref.with.targs"

    const-string v2, "parameterized qualifier on static method reference"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x221

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.bad-symbol"

    const-string v2, "<bad symbol>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x222

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.character"

    const-string v2, "<character>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x223

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.double"

    const-string v2, "<double>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x224

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.end-of-input"

    const-string v2, "<end of input>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x225

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.float"

    const-string v2, "<float>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x226

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.identifier"

    const-string v2, "<identifier>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x227

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.integer"

    const-string v2, "<integer>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x228

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.long-integer"

    const-string v2, "<long integer>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x229

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.token.string"

    const-string v2, "<string>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22a

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.try.not.applicable.to.type"

    const-string v2, "try-with-resources not applicable to variable type\n({0})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22b

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.captureof"

    const-string v2, "capture#{0} of {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22c

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.captureof.1"

    const-string v2, "capture#{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22d

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.none"

    const-string v2, "<none>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22e

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.null"

    const-string v2, "<null>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22f

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.parameter"

    const-string v2, "type parameter {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x230

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.req.array.or.iterable"

    const-string v2, "array or java.lang.Iterable"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x231

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.req.class"

    const-string v2, "class"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x232

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.req.class.array"

    const-string v2, "class or array"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x233

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.req.exact"

    const-string v2, "class or interface without bounds"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x234

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.req.ref"

    const-string v2, "reference"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x235

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.type.var"

    const-string v2, "{0}#{1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x236

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.unable.to.access.file"

    const-string v2, "unable to access file: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x237

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.unchecked.assign"

    const-string v2, "unchecked conversion"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x238

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.unchecked.cast.to.type"

    const-string v2, "unchecked cast"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x239

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.unchecked.clash.with"

    const-string v2, "{0} in {1} overrides {2} in {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23a

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unchecked.implement"

    const-string v3, "{0} in {1} implements {2} in {3}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23b

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unchecked.override"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23c

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.undecl.type.var"

    const-string v3, "undeclared type variable: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23d

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unexpected.ret.val"

    const-string v3, "unexpected return value"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23e

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unicode.str.not.supported"

    const-string v3, "unicode string in class file not supported"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23f

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unnamed.module"

    const-string v3, "unnamed module"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x240

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.unnamed.package"

    const-string v3, "unnamed package"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x241

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.argument.mismatch"

    const-string v3, "varargs mismatch; {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x242

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.clash.with"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x243

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.implement"

    const-string v3, "{0} in {1} implements {2} in {3}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x244

    aput-object v1, v0, v3

    const-string v1, "compiler.misc.varargs.override"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x245

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.varargs.trustme.on.non.varargs.meth"

    const-string v2, "Method {0} is not a varargs method."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x246

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.varargs.trustme.on.reifiable.varargs"

    const-string v2, "Varargs element type {0} is reifiable."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x247

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.varargs.trustme.on.virtual.varargs"

    const-string v2, "Instance method {0} is neither final nor private."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x248

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.varargs.trustme.on.virtual.varargs.final.only"

    const-string v2, "Instance method {0} is not final."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x249

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.checking.attribution"

    const-string v2, "[checking {0}]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24a

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.classpath"

    const-string v2, "[search path for class files: {0}]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24b

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.loading"

    const-string v2, "[loading {0}]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24c

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.parsing.done"

    const-string v2, "[parsing completed {0}ms]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24d

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.parsing.started"

    const-string v2, "[parsing started {0}]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24e

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.sourcepath"

    const-string v2, "[search path for source files: {0}]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24f

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.total"

    const-string v2, "[total {0}ms]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x250

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.verbose.wrote.file"

    const-string v2, "[wrote {0}]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x251

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.version.not.available"

    const-string v2, "(version info not available)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x252

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.captured"

    const-string v2, "{0} extends {1} super: {2} from capture of {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x253

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.captured.1"

    const-string v2, "{0} extends {1} from capture of {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x254

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.description.captured"

    const-string v2, "where {0} is a fresh type-variable:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x255

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.description.captured.1"

    const-string v2, "where {0} are fresh type-variables:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x256

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.description.intersection"

    const-string v2, "where {0} is an intersection type:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x257

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.description.intersection.1"

    const-string v2, "where {0} are intersection types:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x258

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.description.typevar"

    const-string v2, "where {0} is a type-variable:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x259

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.description.typevar.1"

    const-string v2, "where {0} are type-variables:"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25a

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.fresh.typevar"

    const-string v2, "{0} extends {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25b

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.intersection"

    const-string v2, "{0} extends {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25c

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.typevar"

    const-string v2, "{0} extends {1} declared in {2} {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25d

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.where.typevar.1"

    const-string v2, "{0} declared in {2} {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25e

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.wrong.number.type.args"

    const-string v2, "wrong number of type arguments; required {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25f

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.wrong.version"

    const-string v2, "class file has wrong version {0}.{1}, should be {2}.{3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x260

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.x.print.processor.info"

    const-string v2, "Processor {0} matches {1} and returns {2}."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x261

    aput-object v1, v0, v2

    const-string v1, "compiler.misc.x.print.rounds"

    const-string v2, "Round {0}:\n\tinput files: {1}\n\tannotations: {2}\n\tlast round: {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x262

    aput-object v1, v0, v2

    const-string v1, "compiler.note.compressed.diags"

    const-string v2, "Some messages have been simplified; recompile with -Xdiags:verbose to get full output"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x263

    aput-object v1, v0, v2

    const-string v1, "compiler.note.deferred.method.inst"

    const-string v2, "Deferred instantiation of method {0}\ninstantiated signature: {1}\ntarget-type: {2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x264

    aput-object v1, v0, v2

    const-string v1, "compiler.note.deprecated.filename"

    const-string v2, "{0} uses or overrides a deprecated API."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x265

    aput-object v1, v0, v2

    const-string v1, "compiler.note.deprecated.filename.additional"

    const-string v2, "{0} has additional uses or overrides of a deprecated API."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x266

    aput-object v1, v0, v2

    const-string v1, "compiler.note.deprecated.plural"

    const-string v2, "Some input files use or override a deprecated API."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x267

    aput-object v1, v0, v2

    const-string v1, "compiler.note.deprecated.plural.additional"

    const-string v2, "Some input files additionally use or override a deprecated API."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x268

    aput-object v1, v0, v2

    const-string v1, "compiler.note.deprecated.recompile"

    const-string v2, "Recompile with -Xlint:deprecation for details."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x269

    aput-object v1, v0, v2

    const-string v1, "compiler.note.lambda.stat"

    const-string v2, "Translating lambda expression\nalternate metafactory = {0}\nsynthetic method = {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26a

    aput-object v1, v0, v2

    const-string v1, "compiler.note.mref.stat"

    const-string v2, "Translating method reference\nalternate metafactory = {0}\n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26b

    aput-object v1, v0, v2

    const-string v1, "compiler.note.mref.stat.1"

    const-string v2, "Translating method reference\nalternate metafactory = {0}\nbridge method = {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26c

    aput-object v1, v0, v2

    const-string v1, "compiler.note.multiple.elements"

    const-string v2, "Multiple elements named \'\'{1}\'\' in modules \'\'{2}\'\' were found by javax.lang.model.util.Elements.{0}."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26d

    aput-object v1, v0, v2

    const-string v1, "compiler.note.note"

    const-string v2, "Note: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26e

    aput-object v1, v0, v2

    const-string v1, "compiler.note.proc.messager"

    move-object/from16 v2, v22

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26f

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.filename"

    const-string v3, "{0} uses or overrides a deprecated API that is marked for removal."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x270

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.filename.additional"

    const-string v3, "{0} has additional uses or overrides of a deprecated API that is marked for removal."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x271

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.plural"

    const-string v3, "Some input files use or override a deprecated API that is marked for removal."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x272

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.plural.additional"

    const-string v3, "Some input files additionally use or override a deprecated API that is marked for removal."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x273

    aput-object v1, v0, v3

    const-string v1, "compiler.note.removal.recompile"

    const-string v3, "Recompile with -Xlint:removal for details."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x274

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.filename"

    const-string v3, "{0} uses unchecked or unsafe operations."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x275

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.filename.additional"

    const-string v3, "{0} has additional unchecked or unsafe operations."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x276

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.plural"

    const-string v3, "Some input files use unchecked or unsafe operations."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x277

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.plural.additional"

    const-string v3, "Some input files additionally use unchecked or unsafe operations."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x278

    aput-object v1, v0, v3

    const-string v1, "compiler.note.unchecked.recompile"

    const-string v3, "Recompile with -Xlint:unchecked for details."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x279

    aput-object v1, v0, v3

    const-string v1, "compiler.note.verbose.resolve.multi"

    const-string v3, "resolving method {0} in type {1} to candidate {2}\nphase: {3}\nwith actuals: {4}\nwith type-args: {5}\ncandidates:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27a

    aput-object v1, v0, v3

    const-string v1, "compiler.note.verbose.resolve.multi.1"

    const-string v3, "erroneous resolution for method {0} in type {1}\nphase: {3}\nwith actuals: {4}\nwith type-args: {5}\ncandidates:"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27b

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.access.to.member.from.serializable.element"

    const-string v3, "access to member {0} from serializable element can be publicly accessible to untrusted code"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27c

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.access.to.member.from.serializable.lambda"

    const-string v3, "access to member {0} from serializable lambda can be publicly accessible to untrusted code"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27d

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.addopens.ignored"

    const-string v3, "--add-opens has no effect at compile time"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27e

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.annotation.method.not.found"

    const-string v3, "Cannot find annotation method \'\'{1}()\'\' in type \'\'{0}\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27f

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.annotation.method.not.found.reason"

    const-string v3, "Cannot find annotation method \'\'{1}()\'\' in type \'\'{0}\'\': {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x280

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.auxiliary.class.accessed.from.outside.of.its.source.file"

    const-string v3, "auxiliary class {0} in {1} should not be accessed from outside its own source file"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x281

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.bad.name.for.option"

    move-object/from16 v3, v20

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x282

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.big.major.version"

    const-string v3, "{0}: major version {1} is newer than {2}, the highest major version supported by this compiler.\nIt is recommended that the compiler be upgraded."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x283

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.constant.SVUID"

    const-string v3, "serialVersionUID must be constant in class {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x284

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.deprecated.annotation.has.no.effect"

    const-string v3, "@Deprecated annotation has no effect on this {0} declaration"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x285

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.diamond.redundant.args"

    const-string v3, "Redundant type arguments in new expression (use diamond operator instead)."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x286

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.dir.path.element.not.directory"

    const-string v3, "bad path element \"{0}\": not a directory"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x287

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.dir.path.element.not.found"

    const-string v3, "bad path element \"{0}\": no such directory"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x288

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.div.zero"

    const-string v3, "division by zero"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x289

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.empty.if"

    const-string v3, "empty statement after if"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28a

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.file.from.future"

    const-string v3, "Modification date is in the future for file {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28b

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.finally.cannot.complete"

    const-string v3, "finally clause cannot complete normally"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28c

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.forward.ref"

    const-string v3, "reference to variable \'\'{0}\'\' before it has been initialized"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28d

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.future.attr"

    const-string v3, "{0} attribute introduced in version {1}.{2} class files is ignored in version {3}.{4} class files"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28e

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated"

    const-string v3, "{0} in {1} has been deprecated"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28f

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated.for.removal"

    const-string v3, "{0} in {1} has been deprecated and marked for removal"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x290

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated.for.removal.module"

    const-string v3, "module {0} has been deprecated and marked for removal"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x291

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.has.been.deprecated.module"

    const-string v3, "module {0} has been deprecated"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x292

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.illegal.char.for.encoding"

    const-string v3, "unmappable character for encoding {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x293

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.improper.SVUID"

    const-string v3, "serialVersionUID must be declared static final in class {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x294

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.incubating.modules"

    const-string v3, "using incubating module(s): {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x295

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.inexact.non-varargs.call"

    const-string v3, "non-varargs call of varargs method with inexact argument type for last parameter;\ncast to {0} for a varargs call\ncast to {1} for a non-varargs call and to suppress this warning"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x296

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.invalid.archive.file"

    const-string v3, "Unexpected file on path: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x297

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.invalid.path"

    const-string v3, "Invalid filename: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x298

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible"

    const-string v3, "{0} {1} in module {2} is not accessible to clients that require this module"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x299

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible.not.required.transitive"

    const-string v3, "{0} {1} in module {2} is not indirectly exported using \'requires transitive\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29a

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible.unexported"

    const-string v3, "{0} {1} in module {2} is not exported"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29b

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.leaks.not.accessible.unexported.qualified"

    const-string v3, "{0} {1} in module {2} may not be visible to all clients that require this module"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29c

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.lintOption"

    const-string v3, "[{0}] "

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29d

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.locn.unknown.file.on.module.path"

    const-string v3, "unknown file on module path: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29e

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.long.SVUID"

    const-string v3, "serialVersionUID must be of type long in class {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29f

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.method.redundant.typeargs"

    const-string v3, "Redundant type arguments in method call."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a0

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.missing.SVUID"

    const-string v3, "serializable class {0} has no definition of serialVersionUID"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a1

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.missing.deprecated.annotation"

    const-string v3, "deprecated item is not annotated with @Deprecated"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a2

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.module.for.option.not.found"

    const-string v3, "module name in {0} option not found: {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a3

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.module.not.found"

    move-object/from16 v3, v17

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a4

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.option.obsolete.source"

    const-string v3, "source value {0} is obsolete and will be removed in a future release"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a5

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.option.obsolete.suppression"

    const-string v3, "To suppress warnings about obsolete options, use -Xlint:-options."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a6

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.option.obsolete.target"

    const-string v3, "target value {0} is obsolete and will be removed in a future release"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a7

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.outdir.is.in.exploded.module"

    const-string v3, "the output directory is within an exploded module: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a8

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.bridge"

    const-string v3, "{0}; overridden method is a bridge method"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2a9

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.equals.but.not.hashcode"

    const-string v3, "Class {0} overrides equals, but neither it nor any superclass overrides hashCode method"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2aa

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.unchecked.ret"

    const-string v3, "{0}\nreturn type requires unchecked conversion from {1} to {2}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ab

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.unchecked.thrown"

    move-object/from16 v3, v18

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ac

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.varargs.extra"

    const-string v3, "{0}; overriding method is missing \'\'...\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ad

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.override.varargs.missing"

    const-string v3, "{0}; overridden method has no \'\'...\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ae

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.package.empty.or.not.found"

    move-object/from16 v3, v19

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2af

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.path.element.not.found"

    const-string v3, "bad path element \"{0}\": no such file or directory"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b0

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.pkg-info.already.seen"

    const-string v3, "a package-info.java file has already been seen for package {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b1

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.poor.choice.for.module.name"

    const-string v3, "module name component {0} should avoid terminal digits"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b2

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.position.overflow"

    const-string v3, "Position encoding overflows at line {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b3

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.possible.fall-through.into.case"

    const-string v3, "possible fall-through into case"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b4

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.potential.lambda.found"

    const-string v3, "This anonymous inner class creation can be turned into a lambda expression."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b5

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.potentially.ambiguous.overload"

    const-string v3, "{0} in {1} is potentially ambiguous with {2} in {3}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b6

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.prob.found.req"

    const-string v3, "{0}\nrequired: {2}\nfound:    {1}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b7

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.annotations.without.processors"

    const-string v3, "No processor claimed any of these annotations: {0}"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b8

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.file.create.last.round"

    const-string v3, "File for type \'\'{0}\'\' created in the last round will not be subject to annotation processing."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2b9

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.file.reopening"

    const-string v3, "Attempt to create a file for \'\'{0}\'\' multiple times"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2ba

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.illegal.file.name"

    const-string v3, "Cannot create file for illegal name \'\'{0}\'\'."

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2bb

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.malformed.supported.string"

    const-string v3, "Malformed string \'\'{0}\'\' for a supported annotation type returned by processor \'\'{1}\'\'"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2bc

    aput-object v1, v0, v3

    const-string v1, "compiler.warn.proc.messager"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2bd

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.package.does.not.exist"

    move-object/from16 v2, v16

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2be

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.proc-only.requested.no.procs"

    const-string v2, "Annotation processing without compilation requested but no processors were found."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2bf

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.processor.incompatible.source.version"

    const-string v2, "Supported source version \'\'{0}\'\' from annotation processor \'\'{1}\'\' less than -source \'\'{2}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c0

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.suspicious.class.name"

    const-string v2, "Creating file for a type whose name ends in {1}: \'\'{0}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c1

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.type.already.exists"

    const-string v2, "A file for type \'\'{0}\'\' already exists on the sourcepath or classpath"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c2

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.type.recreate"

    const-string v2, "Attempt to create a file for type \'\'{0}\'\' multiple times"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c3

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.unclosed.type.files"

    const-string v2, "Unclosed files for the types \'\'{0}\'\'; these types will not undergo annotation processing"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c4

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.unmatched.processor.options"

    const-string v2, "The following options were not recognized by any processor: \'\'{0}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c5

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.use.implicit"

    const-string v2, "Implicitly compiled files were not subject to annotation processing.\nUse -implicit to specify a policy for implicit compilation."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c6

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.proc.use.proc.or.implicit"

    const-string v2, "Implicitly compiled files were not subject to annotation processing.\nUse -proc:none to disable annotation processing or -implicit to specify a policy for implicit compilation."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c7

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.raw.class.use"

    const-string v2, "found raw type: {0}\nmissing type arguments for generic class {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c8

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.redundant.cast"

    const-string v2, "redundant cast to {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c9

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.requires.automatic"

    const-string v2, "requires directive for an automatic module"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2ca

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.requires.transitive.automatic"

    const-string v2, "requires transitive directive for an automatic module"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cb

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.self.ref"

    const-string v2, "self-reference in initializer of variable \'\'{0}\'\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cc

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.service.provided.but.not.exported.or.used"

    const-string v2, "service interface provided but not exported or used"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cd

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.source.no.bootclasspath"

    const-string v2, "bootstrap class path not set in conjunction with -source {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2ce

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.static.not.qualified.by.type"

    const-string v2, "static {0} should be qualified by type name, {1}, instead of by an expression"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2cf

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.sun.proprietary"

    const-string v2, "{0} is internal proprietary API and may be removed in a future release"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d0

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.try.explicit.close.call"

    const-string v2, "explicit call to close() on an auto-closeable resource"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d1

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.try.resource.not.referenced"

    const-string v2, "auto-closeable resource {0} is never referenced in body of corresponding try statement"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d2

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.try.resource.throws.interrupted.exc"

    const-string v2, "auto-closeable resource {0} has a member method close() that could throw InterruptedException"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d3

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.assign"

    const-string v2, "unchecked assignment: {0} to {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d4

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.assign.to.var"

    const-string v2, "unchecked assignment to variable {0} as member of raw type {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d5

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.call.mbr.of.raw.type"

    const-string v2, "unchecked call to {0} as a member of the raw type {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d6

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.cast.to.type"

    const-string v2, "unchecked cast to type {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d7

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.generic.array.creation"

    const-string v2, "unchecked generic array creation for varargs parameter of type {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d8

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.meth.invocation.applied"

    const-string v2, "unchecked method invocation: {0} {1} in {4} {5} is applied to given types\nrequired: {2}\nfound: {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d9

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unchecked.varargs.non.reifiable.type"

    const-string v2, "Possible heap pollution from parameterized vararg type {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2da

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.underscore.as.identifier"

    const-string v2, "as of release 9, \'\'_\'\' is a keyword, and may not be used as an identifier"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2db

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unexpected.archive.file"

    const-string v2, "Unexpected extension for archive file: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2dc

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unknown.enum.constant"

    const-string v2, "unknown enum constant {1}.{2}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2dd

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unknown.enum.constant.reason"

    const-string v2, "unknown enum constant {1}.{2}\nreason: {3}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2de

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unreachable.catch"

    const-string v2, "unreachable catch clause\nthrown type {0} has already been caught"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2df

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.unreachable.catch.1"

    const-string v2, "unreachable catch clause\nthrown types {0} have already been caught"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e0

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.varargs.redundant.trustme.anno"

    const-string v2, "Redundant {0} annotation. {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e1

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.varargs.unsafe.use.varargs.param"

    const-string v2, "Varargs method could cause heap pollution from non-reifiable varargs parameter {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e2

    aput-object v1, v0, v2

    const-string v1, "compiler.warn.warning"

    const-string v2, "warning: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e3

    aput-object v1, v0, v2

    return-object v0
.end method
