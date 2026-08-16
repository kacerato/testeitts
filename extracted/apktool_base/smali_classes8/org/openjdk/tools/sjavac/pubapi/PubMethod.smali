.class public Lorg/openjdk/tools/sjavac/pubapi/PubMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6c6d87c1b2a79f63L


# instance fields
.field identifier:Ljava/lang/String;

.field modifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field paramTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            ">;"
        }
    .end annotation
.end field

.field returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

.field throwDecls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            ">;"
        }
    .end annotation
.end field

.field typeParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/List;Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApiTypeParam;",
            ">;",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            ">;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iput-object p4, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->identifier:Ljava/lang/String;

    iput-object p5, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->paramTypes:Ljava/util/List;

    iput-object p6, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public asSignatureString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ","

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/sjavac/pubapi/i;

    invoke-direct {v3}, Lorg/openjdk/tools/sjavac/pubapi/i;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v3, "<"

    const-string v4, "> "

    invoke-static {v2, v3, v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->encodeAsString(Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->paramTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/sjavac/pubapi/a;

    invoke-direct {v3}, Lorg/openjdk/tools/sjavac/pubapi/a;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->paramTypes:Ljava/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->paramTypes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->paramTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->modifiers:Ljava/util/Set;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->typeParams:Ljava/util/List;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->returnType:Lorg/openjdk/tools/sjavac/pubapi/TypeDesc;

    iget-object v5, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->identifier:Ljava/lang/String;

    iget-object v6, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->paramTypes:Ljava/util/List;

    iget-object v7, p0, Lorg/openjdk/tools/sjavac/pubapi/PubMethod;->throwDecls:Ljava/util/List;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[modifiers: %s, typeParams: %s, retType: %s, identifier: %s, params: %s, throws: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
