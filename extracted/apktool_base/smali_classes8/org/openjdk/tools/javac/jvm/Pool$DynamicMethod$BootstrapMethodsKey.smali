.class Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod$BootstrapMethodsKey;
.super Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapMethodsKey"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;-><init>(Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;Lorg/openjdk/tools/javac/code/Types;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->equalsImpl(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public getUniqueArgs()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->uniqueStaticArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Pool$DynamicMethod;->hashCodeImpl(Z)I

    move-result v0

    return v0
.end method
