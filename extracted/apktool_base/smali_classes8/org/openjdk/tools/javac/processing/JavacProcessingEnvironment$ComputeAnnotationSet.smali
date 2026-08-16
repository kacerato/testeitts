.class public Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;
.super Lorg/openjdk/javax/lang/model/util/ElementScanner9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComputeAnnotationSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/lang/model/util/ElementScanner9<",
        "Ljava/util/Set<",
        "Lorg/openjdk/javax/lang/model/element/TypeElement;",
        ">;",
        "Ljava/util/Set<",
        "Lorg/openjdk/javax/lang/model/element/TypeElement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final elements:Lorg/openjdk/javax/lang/model/util/Elements;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/util/Elements;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/ElementScanner9;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->elements:Lorg/openjdk/javax/lang/model/util/Elements;

    return-void
.end method


# virtual methods
.method public addAnnotations(Lorg/openjdk/javax/lang/model/element/Element;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->elements:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getAllAnnotationMirrors(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/AnnotationMirror;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/AnnotationMirror;->getAnnotationType()Lorg/openjdk/javax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/type/DeclaredType;->asElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->addAnnotations(Lorg/openjdk/javax/lang/model/element/Element;Ljava/util/Set;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/PackageElement;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 1
    return-object p2
.end method

.method public bridge synthetic visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
