.class public Lorg/openjdk/tools/javac/code/Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Flags$Flag;
    }
.end annotation


# static fields
.field public static final ABSTRACT:I = 0x400

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_MODULE:I = 0x8000

.field public static final ACC_SUPER:I = 0x20

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACYCLIC:I = 0x40000000

.field public static final ACYCLIC_ANN:J = 0x800000000L

.field public static final ANNOTATION:I = 0x2000

.field public static final ANONCONSTR:I = 0x20000000

.field public static final AUTOMATIC_MODULE:J = 0x10000000000000L

.field public static final AUXILIARY:J = 0x100000000000L

.field public static final AccessFlags:I = 0x7

.field public static final AnnotationTypeElementMask:J = 0x401L

.field public static final BAD_OVERRIDE:J = 0x200000000000L

.field public static final BLOCK:I = 0x100000

.field public static final BRIDGE:J = 0x80000000L

.field public static final CLASH:J = 0x40000000000L

.field public static final CLASS_SEEN:I = 0x2000000

.field public static final COMPOUND:I = 0x1000000

.field public static final ClassFlags:I = 0x7e11

.field public static final ConstructorFlags:I = 0x7

.field public static final DEFAULT:J = 0x80000000000L

.field public static final DEPRECATED:I = 0x20000

.field public static final DEPRECATED_ANNOTATION:J = 0x40000000000000L

.field public static final DEPRECATED_REMOVAL:J = 0x80000000000000L

.field public static final EFFECTIVELY_FINAL:J = 0x20000000000L

.field public static final ENUM:I = 0x4000

.field public static final EXISTS:I = 0x800000

.field public static final ExtendedStandardFlags:J = 0x80000000fffL

.field public static final FINAL:I = 0x10

.field public static final GENERATEDCONSTR:J = 0x1000000000L

.field public static final HASINIT:I = 0x40000

.field public static final HAS_RESOURCE:J = 0x100000000000000L

.field public static final HYPOTHETICAL:J = 0x2000000000L

.field public static final INTERFACE:I = 0x200

.field public static final InterfaceMethodFlags:I = 0x401

.field public static final InterfaceMethodMask:J = 0x80000000c0bL

.field public static final InterfaceVarFlags:I = 0x19

.field public static final LAMBDA_METHOD:J = 0x2000000000000L

.field public static final LOCKED:I = 0x8000000

.field public static final LocalClassFlags:I = 0x5c10

.field public static final LocalVarFlags:J = 0x200000010L

.field public static final MANDATED:I = 0x8000

.field public static final MODULE:J = 0x8000000000000L

.field public static final MemberClassFlags:I = 0x5e17

.field public static final MethodFlags:I = 0xd3f

.field public static final ModifierFlags:J = 0x80000000dffL

.field public static final NATIVE:I = 0x100

.field public static final NOOUTERTHIS:I = 0x400000

.field public static final NOT_IN_PROFILE:J = 0x200000000000L

.field public static final PARAMETER:J = 0x200000000L

.field public static final POTENTIALLY_AMBIGUOUS:J = 0x1000000000000L

.field public static final PRIVATE:I = 0x2

.field public static final PROPRIETARY:J = 0x4000000000L

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final ReceiverParamFlags:J = 0x200000000L

.field public static final SIGNATURE_POLYMORPHIC:J = 0x400000000000L

.field public static final SOURCE_SEEN:I = 0x4000000

.field public static final STATIC:I = 0x8

.field public static final STRICTFP:I = 0x800

.field public static final SYNCHRONIZED:I = 0x20

.field public static final SYNTHETIC:I = 0x1000

.field public static final SYSTEM_MODULE:J = 0x20000000000000L

.field public static final StandardFlags:I = 0xfff

.field public static final THROWS:J = 0x800000000000L

.field public static final TRANSIENT:I = 0x80

.field public static final TYPE_TRANSLATED:J = 0x4000000000000L

.field public static final UNATTRIBUTED:I = 0x10000000

.field public static final UNION:J = 0x8000000000L

.field public static final VARARGS:J = 0x400000000L

.field public static final VOLATILE:I = 0x40

.field public static final VarFlags:I = 0x40df

.field private static final modifierSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags;->modifierSets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFlagSet(J)Ljava/util/EnumSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Flags$Flag;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/code/Flags$Flag;->values()[Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    iget-wide v8, v7, Lorg/openjdk/tools/javac/code/Flags$Flag;->value:J

    and-long/2addr v8, p0

    cmp-long v5, v8, v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-wide v5, v7, Lorg/openjdk/tools/javac/code/Flags$Flag;->value:J

    not-long v5, v5

    and-long/2addr p0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, p0, v5

    if-nez p0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-object v0
.end method

.method public static asModifierSet(J)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/Flags;->modifierSets:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_c

    const-class v1, Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->PUBLIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->PROTECTED:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->PRIVATE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v2, 0x400

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->ABSTRACT:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v2, 0x8

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->FINAL:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const-wide/16 v2, 0x80

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_6

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->TRANSIENT:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide/16 v2, 0x40

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_7

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->VOLATILE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/16 v2, 0x20

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->SYNCHRONIZED:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_9

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->NATIVE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    const-wide/16 v2, 0x800

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_a

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->STRICTFP:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    const-wide v2, 0x80000000000L

    and-long/2addr v2, p0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_b

    sget-object v2, Lorg/openjdk/javax/lang/model/element/Modifier;->DEFAULT:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v1
.end method

.method public static isConstant(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnum(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStatic(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Flags$Flag;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
