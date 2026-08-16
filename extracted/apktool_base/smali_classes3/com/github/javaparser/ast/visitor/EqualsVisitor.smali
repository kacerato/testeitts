.class public Lcom/github/javaparser/ast/visitor/EqualsVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
        "Ljava/lang/Boolean;",
        "Lcom/github/javaparser/ast/visitor/Visitable;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Lcom/github/javaparser/ast/visitor/EqualsVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/ast/visitor/EqualsVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->SINGLETON:Lcom/github/javaparser/ast/visitor/EqualsVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private commonNodeEquality(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public static equals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->SINGLETON:Lcom/github/javaparser/ast/visitor/EqualsVisitor;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method

.method private nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(TT;TT;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->commonNodeEquality(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 3
    :cond_3
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;",
            "Ljava/util/Optional<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method private nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    invoke-virtual {p2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 6
    invoke-virtual {p1, v2}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {p2, v2}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private nodesEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nodes1",
            "nodes2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    return v1

    .line 1
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v1

    .line 2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/Node;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/ast/Node;

    invoke-direct {p0, v3, v4}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;>;",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/NodeList<",
            "TT;>;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    return p1
.end method

.method private objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "n2"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 243
    check-cast p2, Lcom/github/javaparser/ast/ArrayCreationLevel;

    .line 244
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 246
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 247
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 102
    check-cast p2, Lcom/github/javaparser/ast/CompilationUnit;

    .line 103
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 107
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 108
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 550
    check-cast p2, Lcom/github/javaparser/ast/ImportDeclaration;

    .line 551
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 552
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 553
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 554
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 555
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 601
    check-cast p2, Lcom/github/javaparser/ast/Modifier;

    .line 602
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 604
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 556
    check-cast p2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 109
    check-cast p2, Lcom/github/javaparser/ast/PackageDeclaration;

    .line 110
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 113
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 156
    check-cast p2, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    .line 157
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 160
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 161
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 162
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 163
    check-cast p2, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 164
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 167
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 169
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 170
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 128
    check-cast p2, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 129
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 133
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 134
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 135
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 136
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 137
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 138
    :cond_8
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 139
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 635
    check-cast p2, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 636
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 637
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 638
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 639
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 640
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 641
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 642
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 643
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 183
    check-cast p2, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    .line 184
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 187
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 188
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 189
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 190
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 191
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 192
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 193
    :cond_8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 149
    check-cast p2, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 150
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 154
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 155
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 140
    check-cast p2, Lcom/github/javaparser/ast/body/EnumDeclaration;

    .line 141
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 144
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 146
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 147
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 148
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 171
    check-cast p2, Lcom/github/javaparser/ast/body/FieldDeclaration;

    .line 172
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 176
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/github/javaparser/ast/body/InitializerDeclaration;

    .line 216
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 219
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 220
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 194
    check-cast p2, Lcom/github/javaparser/ast/body/MethodDeclaration;

    .line 195
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 199
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 200
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 201
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 202
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 203
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 204
    :cond_8
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 205
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 206
    check-cast p2, Lcom/github/javaparser/ast/body/Parameter;

    .line 207
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 210
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 211
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 212
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 213
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 214
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 591
    check-cast p2, Lcom/github/javaparser/ast/body/ReceiverParameter;

    .line 592
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 594
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 595
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 596
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 624
    check-cast p2, Lcom/github/javaparser/ast/body/RecordDeclaration;

    .line 625
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 627
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 628
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 629
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 630
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 631
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 632
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 633
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 634
    :cond_8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 177
    check-cast p2, Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 178
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 181
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 182
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 124
    check-cast p2, Lcom/github/javaparser/ast/comments/BlockComment;

    .line 125
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 127
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 221
    check-cast p2, Lcom/github/javaparser/ast/comments/JavadocComment;

    .line 222
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 224
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 120
    check-cast p2, Lcom/github/javaparser/ast/comments/LineComment;

    .line 121
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 123
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 272
    check-cast p2, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;

    .line 273
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 276
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 277
    check-cast p2, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 278
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 280
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 281
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 282
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 283
    check-cast p2, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 284
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 286
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 287
    check-cast p2, Lcom/github/javaparser/ast/expr/AssignExpr;

    .line 288
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 291
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 292
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 293
    check-cast p2, Lcom/github/javaparser/ast/expr/BinaryExpr;

    .line 294
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 297
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 298
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 350
    check-cast p2, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;

    .line 351
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 353
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 299
    check-cast p2, Lcom/github/javaparser/ast/expr/CastExpr;

    .line 300
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 303
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 342
    check-cast p2, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    .line 343
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 345
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 304
    check-cast p2, Lcom/github/javaparser/ast/expr/ClassExpr;

    .line 305
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 307
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 308
    check-cast p2, Lcom/github/javaparser/ast/expr/ConditionalExpr;

    .line 309
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 312
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 313
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 346
    check-cast p2, Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;

    .line 347
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 349
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 314
    check-cast p2, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    .line 315
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 317
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 318
    check-cast p2, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    .line 319
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 322
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 323
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 324
    check-cast p2, Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    .line 325
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 328
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 329
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 334
    check-cast p2, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    .line 335
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 337
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 534
    check-cast p2, Lcom/github/javaparser/ast/expr/LambdaExpr;

    .line 535
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 536
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 537
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 538
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 539
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 338
    check-cast p2, Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    .line 339
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 341
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 404
    check-cast p2, Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;

    .line 405
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 407
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 418
    check-cast p2, Lcom/github/javaparser/ast/expr/MemberValuePair;

    .line 419
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 421
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 422
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 357
    check-cast p2, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    .line 358
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 360
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 361
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 362
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 363
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 540
    check-cast p2, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;

    .line 541
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 543
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 544
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 545
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 376
    check-cast p2, Lcom/github/javaparser/ast/expr/Name;

    .line 377
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 380
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 364
    check-cast p2, Lcom/github/javaparser/ast/expr/NameExpr;

    .line 365
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 367
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 413
    check-cast p2, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 414
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 416
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 417
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 354
    check-cast p2, Lcom/github/javaparser/ast/expr/NullLiteralExpr;

    .line 355
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 356
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 368
    check-cast p2, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 369
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 371
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 372
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 373
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 374
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 375
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 644
    check-cast p2, Lcom/github/javaparser/ast/expr/RecordPatternExpr;

    .line 645
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 647
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 648
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 649
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 381
    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 382
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 383
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 384
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 408
    check-cast p2, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 409
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 411
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 412
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 330
    check-cast p2, Lcom/github/javaparser/ast/expr/StringLiteralExpr;

    .line 331
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 333
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 389
    check-cast p2, Lcom/github/javaparser/ast/expr/SuperExpr;

    .line 390
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 392
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 605
    check-cast p2, Lcom/github/javaparser/ast/expr/SwitchExpr;

    .line 606
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 607
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 608
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 609
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 614
    check-cast p2, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    .line 615
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 616
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 617
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 385
    check-cast p2, Lcom/github/javaparser/ast/expr/ThisExpr;

    .line 386
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 388
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 546
    check-cast p2, Lcom/github/javaparser/ast/expr/TypeExpr;

    .line 547
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 548
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 549
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 618
    check-cast p2, Lcom/github/javaparser/ast/expr/TypePatternExpr;

    .line 619
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 620
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 621
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 622
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 623
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 393
    check-cast p2, Lcom/github/javaparser/ast/expr/UnaryExpr;

    .line 394
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 397
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 398
    check-cast p2, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 399
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 401
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 402
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 403
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 557
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 558
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 559
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 560
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 561
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 562
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 563
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 569
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;

    .line 570
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 572
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 573
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 583
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 584
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 586
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 587
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 574
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;

    .line 575
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 576
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 577
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 578
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 564
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 565
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 566
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 567
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 568
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 579
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;

    .line 580
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 582
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 438
    check-cast p2, Lcom/github/javaparser/ast/stmt/AssertStmt;

    .line 439
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 441
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 442
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 443
    check-cast p2, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 444
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 446
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 472
    check-cast p2, Lcom/github/javaparser/ast/stmt/BreakStmt;

    .line 473
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 475
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 529
    check-cast p2, Lcom/github/javaparser/ast/stmt/CatchClause;

    .line 530
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 533
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 491
    check-cast p2, Lcom/github/javaparser/ast/stmt/ContinueStmt;

    .line 492
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 494
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 495
    check-cast p2, Lcom/github/javaparser/ast/stmt/DoStmt;

    .line 496
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 497
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 498
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 499
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 452
    check-cast p2, Lcom/github/javaparser/ast/stmt/EmptyStmt;

    .line 453
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 454
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 423
    check-cast p2, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 424
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 425
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 426
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 427
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 428
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 429
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 455
    check-cast p2, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    .line 456
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 458
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 500
    check-cast p2, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    .line 501
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 502
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 504
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 505
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 506
    check-cast p2, Lcom/github/javaparser/ast/stmt/ForStmt;

    .line 507
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 509
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 510
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 511
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 512
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 480
    check-cast p2, Lcom/github/javaparser/ast/stmt/IfStmt;

    .line 481
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 483
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 484
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 485
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 447
    check-cast p2, Lcom/github/javaparser/ast/stmt/LabeledStmt;

    .line 448
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 451
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 430
    check-cast p2, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    .line 431
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 432
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 433
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 434
    check-cast p2, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;

    .line 435
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 436
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 437
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 476
    check-cast p2, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    .line 477
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 479
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 464
    check-cast p2, Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 465
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 467
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 468
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 469
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 470
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 471
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 459
    check-cast p2, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    .line 460
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 461
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 462
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 463
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 517
    check-cast p2, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;

    .line 518
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 519
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 520
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 521
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 513
    check-cast p2, Lcom/github/javaparser/ast/stmt/ThrowStmt;

    .line 514
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 516
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 522
    check-cast p2, Lcom/github/javaparser/ast/stmt/TryStmt;

    .line 523
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 524
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 525
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 526
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 527
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 528
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 588
    check-cast p2, Lcom/github/javaparser/ast/stmt/UnparsableStmt;

    .line 589
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 590
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 486
    check-cast p2, Lcom/github/javaparser/ast/stmt/WhileStmt;

    .line 487
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 488
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 489
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 490
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 610
    check-cast p2, Lcom/github/javaparser/ast/stmt/YieldStmt;

    .line 611
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 613
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 237
    check-cast p2, Lcom/github/javaparser/ast/type/ArrayType;

    .line 238
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ArrayType;->getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 241
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 242
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 225
    check-cast p2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 226
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 229
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 230
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 231
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 248
    check-cast p2, Lcom/github/javaparser/ast/type/IntersectionType;

    .line 249
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 250
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 252
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 232
    check-cast p2, Lcom/github/javaparser/ast/type/PrimitiveType;

    .line 233
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 236
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 114
    check-cast p2, Lcom/github/javaparser/ast/type/TypeParameter;

    .line 115
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 119
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 253
    check-cast p2, Lcom/github/javaparser/ast/type/UnionType;

    .line 254
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 256
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 257
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 268
    check-cast p2, Lcom/github/javaparser/ast/type/UnknownType;

    .line 269
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 271
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 597
    check-cast p2, Lcom/github/javaparser/ast/type/VarType;

    .line 598
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 600
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 258
    check-cast p2, Lcom/github/javaparser/ast/type/VoidType;

    .line 259
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 261
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 262
    check-cast p2, Lcom/github/javaparser/ast/type/WildcardType;

    .line 263
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 266
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 267
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 3
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 4
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 5
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 6
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 8
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 9
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 10
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 11
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 12
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 13
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 14
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 15
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 16
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 17
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 18
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 19
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 20
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 21
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 22
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 23
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 24
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 25
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 26
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 27
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 28
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 29
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 30
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 31
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 32
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 33
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 34
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 35
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 36
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 38
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 39
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 41
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 42
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 43
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 44
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 45
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 46
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 47
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 48
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 49
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 50
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 51
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 53
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 54
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 55
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 56
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 57
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 58
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 59
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 60
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 61
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 62
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 63
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 64
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 65
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 66
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 67
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 68
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 69
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 70
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 71
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 72
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 73
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 74
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 75
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 76
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 77
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 78
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 79
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 80
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 81
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 82
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 83
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 84
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 85
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 86
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 87
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 88
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 89
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 90
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 91
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 92
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 93
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 94
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 95
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 96
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 97
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 98
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 99
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 100
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 101
    check-cast p2, Lcom/github/javaparser/ast/visitor/Visitable;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->visit(Lcom/github/javaparser/ast/type/WildcardType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
