.class public Lorg/openjdk/tools/javac/code/Attribute$Compound;
.super Lorg/openjdk/tools/javac/code/Attribute;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/AnnotationMirror;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field public position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

.field private synthesized:Z

.field public final values:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;>;",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Attribute;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->synthesized:Z

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    return-void
.end method

.method private getElemPair(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFirstEmbeddedTC()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    instance-of v2, v0, Lorg/openjdk/tools/javac/code/Attribute$Array;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$Array;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v2, v0

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/AnnotationValueVisitor;->visitAnnotation(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/openjdk/tools/javac/code/Attribute$Visitor;->visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    return-void
.end method

.method public getAnnotationType()Lorg/openjdk/javax/lang/model/type/DeclaredType;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/javax/lang/model/type/DeclaredType;

    return-object v0
.end method

.method public getElementValues()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPosition()Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->hasUnknownPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getElemPair(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Attribute;->getPosition()Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getValue()Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 0

    .line 1
    return-object p0
.end method

.method public hasUnknownPosition()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContainerTypeCompound()Z
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->isSynthesized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getFirstEmbeddedTC()Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isSynthesized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->synthesized:Z

    return v0
.end method

.method public member(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Attribute;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getElemPair(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute;

    :goto_0
    return-object p1
.end method

.method public setSynthesized(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->synthesized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/Pair;

    if-nez v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, v5, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-gt v1, v3, :cond_1

    iget-object v6, v4, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v4, v5, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryFixPosition()Z
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->isContainerTypeCompound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getFirstEmbeddedTC()Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    sget-object v3, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    if-eq v2, v3, :cond_1

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
