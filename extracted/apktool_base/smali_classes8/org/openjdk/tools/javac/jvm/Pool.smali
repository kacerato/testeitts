.class public Lorg/openjdk/tools/javac/jvm/Pool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;,
        Lorg/openjdk/tools/javac/jvm/Pool$Variable;,
        Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;,
        Lorg/openjdk/tools/javac/jvm/Pool$Method;
    }
.end annotation


# static fields
.field public static final MAX_ENTRIES:I = 0xffff

.field public static final MAX_STRING_LENGTH:I = 0xffff


# instance fields
.field indices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pool:[Ljava/lang/Object;

.field pp:I

.field types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Pool;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 5
    new-instance p3, Ljava/util/HashMap;

    array-length v0, p2

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    const/4 p3, 0x1

    :goto_0
    if-ge p3, p1, :cond_1

    .line 6
    aget-object v0, p2, p3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 2

    const/16 v0, 0x40

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/openjdk/tools/javac/jvm/Pool;-><init>(I[Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Types;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public makePoolValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;-><init>(Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;Lorg/openjdk/tools/javac/code/Types;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Pool$Method;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Pool$Method;-><init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Types;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Pool$Variable;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Pool$Variable;-><init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/code/Types;)V

    return-object v0

    :cond_2
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object p1

    :cond_3
    new-instance v0, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types$UniqueType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    return-object v0

    :cond_4
    return-object p1
.end method

.method public numEntries()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    return v0
.end method

.method public put(Ljava/lang/Object;)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Pool;->makePoolValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    instance-of v0, v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    aput-object p1, v1, v2

    instance-of v2, p1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of p1, p1, Ljava/lang/Double;

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {v1, v3}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Pool;->pp:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
