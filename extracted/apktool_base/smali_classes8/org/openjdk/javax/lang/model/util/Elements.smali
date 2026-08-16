.class public interface abstract Lorg/openjdk/javax/lang/model/util/Elements;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    }
.end annotation


# virtual methods
.method public abstract getAllAnnotationMirrors(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMembers(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public getAllModuleElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllPackageElements(Ljava/lang/CharSequence;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/PackageElement;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openjdk/javax/lang/model/util/Elements;->getAllModuleElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getPackageElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/PackageElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/ModuleElement;

    invoke-interface {p0, v2, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/PackageElement;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getAllTypeElements(Ljava/lang/CharSequence;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openjdk/javax/lang/model/util/Elements;->getAllModuleElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/ModuleElement;

    invoke-interface {p0, v2, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBinaryName(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract getConstantExpression(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getDocComment(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/String;
.end method

.method public abstract getElementValuesWithDefaults(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/Map<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            "+",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation
.end method

.method public getModuleElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/ModuleElement;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleOf(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/ModuleElement;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getName(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public getOrigin(Lorg/openjdk/javax/lang/model/AnnotatedConstruct;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 0

    .line 2
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1
.end method

.method public getOrigin(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 0

    .line 1
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1
.end method

.method public getOrigin(Lorg/openjdk/javax/lang/model/element/ModuleElement;Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;)Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 0

    .line 3
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1
.end method

.method public abstract getPackageElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/PackageElement;
.end method

.method public getPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/PackageElement;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getPackageOf(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/PackageElement;
.end method

.method public abstract getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;
.end method

.method public getTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract hides(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/Element;)Z
.end method

.method public isBridge(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract isDeprecated(Lorg/openjdk/javax/lang/model/element/Element;)Z
.end method

.method public abstract isFunctionalInterface(Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
.end method

.method public abstract overrides(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
.end method

.method public varargs abstract printElements(Ljava/io/Writer;[Lorg/openjdk/javax/lang/model/element/Element;)V
.end method
