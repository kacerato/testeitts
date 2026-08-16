.class public Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/TypeParameterElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeVariableSymbol"
.end annotation


# direct methods
.method public constructor <init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 7

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;-><init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ElementVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ElementVisitor;->visitTypeParameter(Lorg/openjdk/javax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getTypeParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    .line 6
    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;->isCurrentSymbolsAnnotation(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getTypeParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;->isCurrentSymbolsAnnotation(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getBounds()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;->getBounds()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    .line 7
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isInterface()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getGenericElement()Lorg/openjdk/javax/lang/model/element/Element;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;->getGenericElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getGenericElement()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->TYPE_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public isCurrentSymbolsAnnotation(Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;I)Z
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget p1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
