.class public Lorg/openjdk/tools/javac/model/JavacTypes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/util/Types;


# static fields
.field private static final EXEC_OR_PKG_OR_MOD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/type/TypeKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->EXECUTABLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->PACKAGE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    sget-object v2, Lorg/openjdk/javax/lang/model/type/TypeKind;->MODULE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/model/JavacTypes;->EXEC_OR_PKG_OR_MOD:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/openjdk/tools/javac/model/JavacTypes;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    return-void
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs getDeclaredType0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;
    .locals 5

    array-length v0, p3

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    instance-of v4, v3, Lorg/openjdk/javax/lang/model/type/ReferenceType;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/openjdk/javax/lang/model/type/WildcardType;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v3}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p3, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p3, p1, v0, p2}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object p3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incorrect number of type arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacTypes;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/model/JavacTypes;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/model/JavacTypes;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/model/JavacTypes;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/model/JavacTypes;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/type/TypeKind;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacTypes;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object p1

    return-object p1
.end method

.method public asMemberOf(Lorg/openjdk/javax/lang/model/type/DeclaredType;Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 2

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public boxedClass(Lorg/openjdk/javax/lang/model/type/PrimitiveType;)Lorg/openjdk/javax/lang/model/element/TypeElement;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public capture(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes;->EXEC_OR_PKG_OR_MOD:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->stripMetadataIfNeeded()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public contains(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes;->EXEC_OR_PKG_OR_MOD:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->containsType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public directSupertypes(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes;->EXEC_OR_PKG_OR_MOD:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->directSupertypes(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/model/d;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/model/d;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->PACKAGE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->MODULE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->stripMetadataIfNeeded()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArrayType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/ArrayType;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public varargs getDeclaredType(Lorg/openjdk/javax/lang/model/element/TypeElement;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;
    .locals 1

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/type/DeclaredType;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/model/JavacTypes;->getDeclaredType0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs getDeclaredType(Lorg/openjdk/javax/lang/model/type/DeclaredType;Lorg/openjdk/javax/lang/model/element/TypeElement;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;
    .locals 4

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/model/JavacTypes;->getDeclaredType(Lorg/openjdk/javax/lang/model/element/TypeElement;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 9
    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 10
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 11
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/model/JavacTypes;->getDeclaredType(Lorg/openjdk/javax/lang/model/element/TypeElement;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-direct {p0, v1, v0, p3}, Lorg/openjdk/tools/javac/model/JavacTypes;->getDeclaredType0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getNoType(Lorg/openjdk/javax/lang/model/type/TypeKind;)Lorg/openjdk/javax/lang/model/type/NoType;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    return-object p1
.end method

.method public getNullType()Lorg/openjdk/javax/lang/model/type/NullType;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/javax/lang/model/type/NullType;

    return-object v0
.end method

.method public getOverriddenMethods(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/Modifier;->PRIVATE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->closure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, v4, :cond_1

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v6, 0x1

    invoke-virtual {p1, v4, v0, v5, v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getPrimitiveType(Lorg/openjdk/javax/lang/model/type/TypeKind;)Lorg/openjdk/javax/lang/model/type/PrimitiveType;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWildcardType(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/WildcardType;
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object p2, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/openjdk/tools/javac/code/BoundKind;->EXTENDS:Lorg/openjdk/tools/javac/code/BoundKind;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_4

    sget-object p1, Lorg/openjdk/tools/javac/code/BoundKind;->SUPER:Lorg/openjdk/tools/javac/code/BoundKind;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p2, p1, v1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Extends and super bounds cannot both be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes;->EXEC_OR_PKG_OR_MOD:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isAssignable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public isSameType(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->WILDCARD:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSubsignature(Lorg/openjdk/javax/lang/model/type/ExecutableType;Lorg/openjdk/javax/lang/model/type/ExecutableType;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubSignature(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public isSubtype(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacTypes;->EXEC_OR_PKG_OR_MOD:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->validateTypeNotIn(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public unboxedType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/PrimitiveType;
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->DECLARED:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacTypes;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/javax/lang/model/type/PrimitiveType;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
