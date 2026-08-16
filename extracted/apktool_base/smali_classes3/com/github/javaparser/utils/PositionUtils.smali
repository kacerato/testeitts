.class public final Lcom/github/javaparser/utils/PositionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/utils/PositionUtils;->lambda$sortByBeginPosition$0(ZLcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)I

    move-result p0

    return p0
.end method

.method public static areInOrder(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/github/javaparser/utils/PositionUtils;->areInOrder(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Z)Z

    move-result p0

    return p0
.end method

.method public static areInOrder(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "ignoringAnnotations"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/github/javaparser/utils/PositionUtils;->compare(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Z)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->lambda$firstNonAnnotationNode$2(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method private static beginColumnWithoutConsideringAnnotation(Lcom/github/javaparser/ast/Node;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->firstNonAnnotationNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget p0, p0, Lcom/github/javaparser/Position;->column:I

    return p0
.end method

.method private static beginLineWithoutConsideringAnnotation(Lcom/github/javaparser/ast/Node;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->firstNonAnnotationNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget p0, p0, Lcom/github/javaparser/Position;->line:I

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->lambda$firstNonAnnotationNode$6(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method private static compare(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "ignoringAnnotations"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->beginLineWithoutConsideringAnnotation(Lcom/github/javaparser/ast/Node;)I

    move-result p2

    invoke-static {p1}, Lcom/github/javaparser/utils/PositionUtils;->beginLineWithoutConsideringAnnotation(Lcom/github/javaparser/ast/Node;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->beginColumnWithoutConsideringAnnotation(Lcom/github/javaparser/ast/Node;)I

    move-result p0

    invoke-static {p1}, Lcom/github/javaparser/utils/PositionUtils;->beginColumnWithoutConsideringAnnotation(Lcom/github/javaparser/ast/Node;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0

    :cond_3
    return p2

    :cond_4
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getBegin()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Position;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getBegin()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Position;

    iget p2, p0, Lcom/github/javaparser/Position;->line:I

    iget v0, p1, Lcom/github/javaparser/Position;->line:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    if-nez p2, :cond_5

    iget p0, p0, Lcom/github/javaparser/Position;->column:I

    iget p1, p1, Lcom/github/javaparser/Position;->column:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0

    :cond_5
    return p2
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->lambda$firstNonAnnotationNode$3(Lcom/github/javaparser/ast/Modifier;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->lambda$firstNonAnnotationNode$4(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->lambda$firstNonAnnotationNode$1(Lcom/github/javaparser/ast/Modifier;)Z

    move-result p0

    return p0
.end method

.method private static firstNonAnnotationNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/utils/r;

    invoke-direct {v2}, Lcom/github/javaparser/utils/r;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/utils/s;

    invoke-direct {v2}, Lcom/github/javaparser/utils/s;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Modifier;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/utils/t;

    invoke-direct {v2}, Lcom/github/javaparser/utils/t;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/utils/u;

    invoke-direct {v2}, Lcom/github/javaparser/utils/u;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Modifier;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/utils/v;

    invoke-direct {v2}, Lcom/github/javaparser/utils/v;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/utils/w;

    invoke-direct {v2}, Lcom/github/javaparser/utils/w;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Modifier;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariable(I)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    return-object p0
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->lambda$firstNonAnnotationNode$5(Lcom/github/javaparser/ast/Modifier;)Z

    move-result p0

    return p0
.end method

.method public static getLastAnnotation(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/expr/AnnotationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/ast/NodeList;->nodeList(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Lcom/github/javaparser/ast/NodeList;)V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static synthetic lambda$firstNonAnnotationNode$1(Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "modifier"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$firstNonAnnotationNode$2(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    return-object p0
.end method

.method private static synthetic lambda$firstNonAnnotationNode$3(Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "modifier"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$firstNonAnnotationNode$4(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    return-object p0
.end method

.method private static synthetic lambda$firstNonAnnotationNode$5(Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "modifier"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$firstNonAnnotationNode$6(Lcom/github/javaparser/ast/Modifier;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    return-object p0
.end method

.method private static synthetic lambda$sortByBeginPosition$0(ZLcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "ignoringAnnotations",
            "o1",
            "o2"
        }
    .end annotation

    invoke-static {p1, p2, p0}, Lcom/github/javaparser/utils/PositionUtils;->compare(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Z)I

    move-result p0

    return p0
.end method

.method public static nodeContains(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "other",
            "ignoringAnnotations"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithAnnotations;

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->getLastAnnotation(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/expr/AnnotationExpr;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->containsWithinRange(Lcom/github/javaparser/ast/Node;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {p0}, Lcom/github/javaparser/utils/PositionUtils;->firstNonAnnotationNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getBegin()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/Position;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/Range;->withBegin(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Range;->strictlyContains(Lcom/github/javaparser/Range;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->containsWithinRange(Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot compare the positions of nodes if contained node does not have a range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot compare the positions of nodes if container node does not have a range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sortByBeginPosition(Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;Z)V

    return-void
.end method

.method public static sortByBeginPosition(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;Z)V

    return-void
.end method

.method public static sortByBeginPosition(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "nodes",
            "ignoringAnnotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/utils/x;

    invoke-direct {v0, p1}, Lcom/github/javaparser/utils/x;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method
