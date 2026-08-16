.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic J(Ljava/lang/String;Lcom/github/javaparser/ast/expr/AnnotationExpr;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->lambda$getAnnotationByName$1(Ljava/lang/String;Lcom/github/javaparser/ast/expr/AnnotationExpr;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAnnotationByName$1(Ljava/lang/String;Lcom/github/javaparser/ast/expr/AnnotationExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "annotationName",
            "a"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isAnnotationPresent$0(Ljava/lang/String;Lcom/github/javaparser/ast/expr/AnnotationExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "annotationName",
            "a"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Ljava/lang/String;Lcom/github/javaparser/ast/expr/AnnotationExpr;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->lambda$isAnnotationPresent$0(Ljava/lang/String;Lcom/github/javaparser/ast/expr/AnnotationExpr;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addAndGetAnnotation(Ljava/lang/Class;)Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;"
        }
    .end annotation

    .line 3
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAndGetAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;

    move-result-object p1

    return-object p1
.end method

.method public addAndGetAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    new-instance v1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/NodeList;)V

    .line 2
    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lcom/github/javaparser/ast/expr/AnnotationExpr;)Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public addAnnotation(Lcom/github/javaparser/ast/expr/AnnotationExpr;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ")TN;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    .line 2
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addAnnotation(Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TN;"
        }
    .end annotation

    .line 6
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    new-instance v1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/NodeList;)V

    .line 4
    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lcom/github/javaparser/ast/expr/AnnotationExpr;)Lcom/github/javaparser/ast/Node;

    .line 5
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addMarkerAnnotation(Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TN;"
        }
    .end annotation

    .line 4
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addMarkerAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addMarkerAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;-><init>(Lcom/github/javaparser/ast/expr/Name;)V

    .line 2
    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lcom/github/javaparser/ast/expr/AnnotationExpr;)Lcom/github/javaparser/ast/Node;

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addSingleMemberAnnotation(Ljava/lang/Class;Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 4
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addSingleMemberAnnotation(Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addSingleMemberAnnotation(Ljava/lang/Class;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 7
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addSingleMemberAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addSingleMemberAnnotation(Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;-><init>(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 3
    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lcom/github/javaparser/ast/expr/AnnotationExpr;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addSingleMemberAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 6
    invoke-static {p2}, Lcom/github/javaparser/StaticJavaParser;->parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addSingleMemberAnnotation(Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotation(I)Lcom/github/javaparser/ast/expr/AnnotationExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    return-object p1
.end method

.method public getAnnotationByClass(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotationByName(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotationByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/a;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAnnotations()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->isAnnotationPresent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isAnnotationPresent(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationName"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/b;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public setAnnotation(ILcom/github/javaparser/ast/expr/AnnotationExpr;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public abstract setAnnotations(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)TN;"
        }
    .end annotation
.end method

.method public abstract tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
