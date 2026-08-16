.class public Lorg/openjdk/tools/javac/code/Types$UniqueType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniqueType"
.end annotation


# instance fields
.field public final type:Lorg/openjdk/tools/javac/code/Type;

.field final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->types:Lorg/openjdk/tools/javac/code/Types;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->hashCode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
