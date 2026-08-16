.class Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;
.super Lorg/openjdk/tools/javac/jvm/Pool$Method;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsValue;,
        Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsKey;
    }
.end annotation


# instance fields
.field public uniqueStaticArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Pool$Method;-><init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Types;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->staticArgs:[Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->getUniqueTypeArray([Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Types;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->uniqueStaticArgs:[Ljava/lang/Object;

    return-void
.end method

.method private getUniqueTypeArray([Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Types;)[Ljava/lang/Object;
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v3, v2, p2}, Lorg/openjdk/tools/javac/code/Types$UniqueType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    aput-object v3, v0, v1

    goto :goto_1

    :cond_0
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->equalsImpl(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public equalsImpl(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/jvm/Pool$Method;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    instance-of p2, p1, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;

    if-nez p2, :cond_1

    return v0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    check-cast p1, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsm:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsm:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v2, v3, :cond_2

    iget p2, p2, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsmKind:I

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsmKind:I

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->uniqueStaticArgs:[Ljava/lang/Object;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->uniqueStaticArgs:[Ljava/lang/Object;

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->hashCodeImpl(Z)I

    move-result v0

    return v0
.end method

.method public hashCodeImpl(Z)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/openjdk/tools/javac/jvm/Pool$Method;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    iget v2, v1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsmKind:I

    mul-int/lit8 v2, v2, 0x7

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsm:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0xb

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    :goto_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->staticArgs:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->uniqueStaticArgs:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x17

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method
