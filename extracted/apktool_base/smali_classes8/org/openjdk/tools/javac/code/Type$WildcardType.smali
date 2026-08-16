.class public Lorg/openjdk/tools/javac/code/Type$WildcardType;
.super Lorg/openjdk/tools/javac/code/Type;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/type/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildcardType"
.end annotation


# instance fields
.field public bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

.field isPrintingBound:Z

.field public kind:Lorg/openjdk/tools/javac/code/BoundKind;

.field public type:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 6

    const/4 v4, 0x0

    .line 1
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;)V
    .locals 6

    .line 3
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    .line 4
    invoke-direct {p0, p3, p5}, Lorg/openjdk/tools/javac/code/Type;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isPrintingBound:Z

    .line 6
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 7
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    .line 8
    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/type/TypeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visitWildcard(Lorg/openjdk/javax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Type$Visitor<",
            "TR;TS;>;TS;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$WildcardType;
    .locals 8

    .line 2
    new-instance v7, Lorg/openjdk/tools/javac/code/Type$WildcardType$1;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Type$WildcardType$1;-><init>(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v7
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-result-object p1

    return-object p1
.end method

.method public contains(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExtendsBound()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getExtendsBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getExtendsBound()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->EXTENDS:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->WILDCARD:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public bridge synthetic getSuperBound()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getSuperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSuperBound()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->SUPER:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object v0
.end method

.method public isExtendsBound()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->EXTENDS:Lorg/openjdk/tools/javac/code/BoundKind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNullOrReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSuperBound()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->SUPER:Lorg/openjdk/tools/javac/code/BoundKind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUnbound()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->appendAnnotationsString(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/BoundKind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v2, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    sget-boolean v1, Lorg/openjdk/tools/javac/code/Type;->moreInfo:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isPrintingBound:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isPrintingBound:Z

    const-string v1, "{:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isPrintingBound:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->isPrintingBound:Z

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withTypeVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    return-object p0
.end method
