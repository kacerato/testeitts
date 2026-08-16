.class public Lorg/openjdk/tools/sjavac/pubapi/PubVar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5094f5c8848af16fL


# instance fields
.field private final constValue:Ljava/lang/String;

.field public final identifier:Ljava/lang/String;

.field public final modifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    iput-object p4, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->constValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getConstValue()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->constValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->getConstValue()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->modifiers:Ljava/util/Set;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->type:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->identifier:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/pubapi/PubVar;->constValue:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[modifiers: %s, type: %s, identifier: %s, constValue: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
