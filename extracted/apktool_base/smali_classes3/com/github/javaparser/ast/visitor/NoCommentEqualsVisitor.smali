.class public Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;
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
.field private static final SINGLETON:Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->SINGLETON:Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    sget-object v0, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->SINGLETON:Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

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

    if-eqz p1, :cond_3

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
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

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

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

    .line 1
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    invoke-virtual {p2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3
    invoke-virtual {p1, v2}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {p2, v2}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

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

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

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

    .line 217
    check-cast p2, Lcom/github/javaparser/ast/ArrayCreationLevel;

    .line 218
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 220
    :cond_1
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

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

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

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

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

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 107
    :cond_3
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

    .line 460
    check-cast p2, Lcom/github/javaparser/ast/ImportDeclaration;

    .line 461
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 462
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 463
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 464
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 500
    check-cast p2, Lcom/github/javaparser/ast/Modifier;

    .line 501
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 502
    :cond_0
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

    .line 465
    check-cast p2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

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

    .line 108
    check-cast p2, Lcom/github/javaparser/ast/PackageDeclaration;

    .line 109
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 111
    :cond_1
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

    .line 144
    check-cast p2, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    .line 145
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 149
    :cond_3
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

    .line 150
    check-cast p2, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 151
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 156
    :cond_4
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

    .line 119
    check-cast p2, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 120
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 124
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 125
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 126
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 127
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 128
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 129
    :cond_8
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

    .line 528
    check-cast p2, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 529
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 531
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 533
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 534
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 535
    :cond_5
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

    .line 167
    check-cast p2, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    .line 168
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 171
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 172
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 173
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 174
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 175
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 176
    :cond_7
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

    .line 138
    check-cast p2, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 139
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 143
    :cond_3
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

    .line 130
    check-cast p2, Lcom/github/javaparser/ast/body/EnumDeclaration;

    .line 131
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 134
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 135
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 136
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 137
    :cond_5
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

    .line 157
    check-cast p2, Lcom/github/javaparser/ast/body/FieldDeclaration;

    .line 158
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 161
    :cond_2
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

    .line 196
    check-cast p2, Lcom/github/javaparser/ast/body/InitializerDeclaration;

    .line 197
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 200
    :cond_2
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

    .line 177
    check-cast p2, Lcom/github/javaparser/ast/body/MethodDeclaration;

    .line 178
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 181
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 182
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 183
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 184
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 185
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 186
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 187
    :cond_8
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

    .line 188
    check-cast p2, Lcom/github/javaparser/ast/body/Parameter;

    .line 189
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 192
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 193
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 194
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 195
    :cond_5
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

    .line 492
    check-cast p2, Lcom/github/javaparser/ast/body/ReceiverParameter;

    .line 493
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 495
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 496
    :cond_2
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

    .line 518
    check-cast p2, Lcom/github/javaparser/ast/body/RecordDeclaration;

    .line 519
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 520
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 521
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 522
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 523
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 524
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 525
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 526
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 527
    :cond_7
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

    .line 162
    check-cast p2, Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 163
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 166
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 118
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 201
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 117
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

    .line 240
    check-cast p2, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;

    .line 241
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 243
    :cond_1
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

    .line 244
    check-cast p2, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 245
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 247
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 248
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 249
    check-cast p2, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 250
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 251
    :cond_0
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

    .line 252
    check-cast p2, Lcom/github/javaparser/ast/expr/AssignExpr;

    .line 253
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 255
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 256
    :cond_2
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

    .line 257
    check-cast p2, Lcom/github/javaparser/ast/expr/BinaryExpr;

    .line 258
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 260
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 261
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 302
    check-cast p2, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;

    .line 303
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 304
    :cond_0
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

    .line 262
    check-cast p2, Lcom/github/javaparser/ast/expr/CastExpr;

    .line 263
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 265
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 296
    check-cast p2, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    .line 297
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 298
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 266
    check-cast p2, Lcom/github/javaparser/ast/expr/ClassExpr;

    .line 267
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 268
    :cond_0
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

    .line 269
    check-cast p2, Lcom/github/javaparser/ast/expr/ConditionalExpr;

    .line 270
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 273
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 299
    check-cast p2, Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;

    .line 300
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 301
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 274
    check-cast p2, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    .line 275
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 276
    :cond_0
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

    .line 277
    check-cast p2, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    .line 278
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 280
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 281
    :cond_2
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

    .line 282
    check-cast p2, Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    .line 283
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 286
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 290
    check-cast p2, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    .line 291
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 292
    :cond_0
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

    .line 447
    check-cast p2, Lcom/github/javaparser/ast/expr/LambdaExpr;

    .line 448
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 451
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 293
    check-cast p2, Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    .line 294
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 295
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 344
    check-cast p2, Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;

    .line 345
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 346
    :cond_0
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

    .line 355
    check-cast p2, Lcom/github/javaparser/ast/expr/MemberValuePair;

    .line 356
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 357
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 358
    :cond_1
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

    .line 306
    check-cast p2, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    .line 307
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 308
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 310
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 311
    :cond_3
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

    .line 452
    check-cast p2, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;

    .line 453
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 454
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 455
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 456
    :cond_2
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

    .line 322
    check-cast p2, Lcom/github/javaparser/ast/expr/Name;

    .line 323
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 325
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 312
    check-cast p2, Lcom/github/javaparser/ast/expr/NameExpr;

    .line 313
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 314
    :cond_0
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

    .line 351
    check-cast p2, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 352
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 354
    :cond_1
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

    .line 305
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

    .line 315
    check-cast p2, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 316
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 317
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 318
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 319
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 320
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 321
    :cond_4
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

    .line 536
    check-cast p2, Lcom/github/javaparser/ast/expr/RecordPatternExpr;

    .line 537
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 539
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 540
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 326
    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 327
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 328
    :cond_0
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

    .line 347
    check-cast p2, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 348
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 350
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 287
    check-cast p2, Lcom/github/javaparser/ast/expr/StringLiteralExpr;

    .line 288
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 289
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 332
    check-cast p2, Lcom/github/javaparser/ast/expr/SuperExpr;

    .line 333
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 334
    :cond_0
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

    .line 503
    check-cast p2, Lcom/github/javaparser/ast/expr/SwitchExpr;

    .line 504
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 506
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 510
    check-cast p2, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    .line 511
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 512
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 329
    check-cast p2, Lcom/github/javaparser/ast/expr/ThisExpr;

    .line 330
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 331
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 457
    check-cast p2, Lcom/github/javaparser/ast/expr/TypeExpr;

    .line 458
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 459
    :cond_0
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

    .line 513
    check-cast p2, Lcom/github/javaparser/ast/expr/TypePatternExpr;

    .line 514
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 516
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 517
    :cond_2
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

    .line 335
    check-cast p2, Lcom/github/javaparser/ast/expr/UnaryExpr;

    .line 336
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 338
    :cond_1
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

    .line 339
    check-cast p2, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 340
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 342
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 343
    :cond_2
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

    .line 466
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 467
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 468
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 469
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 470
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 471
    :cond_3
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

    .line 476
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;

    .line 477
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 479
    :cond_1
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

    .line 487
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 488
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 489
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 490
    :cond_1
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

    .line 480
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;

    .line 481
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 483
    :cond_1
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

    .line 472
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 473
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 475
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 484
    check-cast p2, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;

    .line 485
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 486
    :cond_0
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

    .line 371
    check-cast p2, Lcom/github/javaparser/ast/stmt/AssertStmt;

    .line 372
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 374
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 375
    check-cast p2, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 376
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 377
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 397
    check-cast p2, Lcom/github/javaparser/ast/stmt/BreakStmt;

    .line 398
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 399
    :cond_0
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

    .line 443
    check-cast p2, Lcom/github/javaparser/ast/stmt/CatchClause;

    .line 444
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 446
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 412
    check-cast p2, Lcom/github/javaparser/ast/stmt/ContinueStmt;

    .line 413
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 414
    :cond_0
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

    .line 415
    check-cast p2, Lcom/github/javaparser/ast/stmt/DoStmt;

    .line 416
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 418
    :cond_1
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

    .line 382
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

    .line 359
    check-cast p2, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 360
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 364
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 383
    check-cast p2, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    .line 384
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 385
    :cond_0
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

    .line 419
    check-cast p2, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    .line 420
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 422
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 423
    :cond_2
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

    .line 424
    check-cast p2, Lcom/github/javaparser/ast/stmt/ForStmt;

    .line 425
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 427
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 428
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 429
    :cond_3
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

    .line 403
    check-cast p2, Lcom/github/javaparser/ast/stmt/IfStmt;

    .line 404
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 405
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 406
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 407
    :cond_2
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

    .line 378
    check-cast p2, Lcom/github/javaparser/ast/stmt/LabeledStmt;

    .line 379
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 380
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 381
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 365
    check-cast p2, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    .line 366
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 367
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 368
    check-cast p2, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;

    .line 369
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 370
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 400
    check-cast p2, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    .line 401
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 402
    :cond_0
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

    .line 390
    check-cast p2, Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 391
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 393
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 394
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 395
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 396
    :cond_4
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

    .line 386
    check-cast p2, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    .line 387
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 389
    :cond_1
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

    .line 433
    check-cast p2, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;

    .line 434
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 436
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 430
    check-cast p2, Lcom/github/javaparser/ast/stmt/ThrowStmt;

    .line 431
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 432
    :cond_0
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

    .line 437
    check-cast p2, Lcom/github/javaparser/ast/stmt/TryStmt;

    .line 438
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 440
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 441
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 442
    :cond_3
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

    .line 491
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

    .line 408
    check-cast p2, Lcom/github/javaparser/ast/stmt/WhileStmt;

    .line 409
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 411
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 507
    check-cast p2, Lcom/github/javaparser/ast/stmt/YieldStmt;

    .line 508
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 509
    :cond_0
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

    .line 212
    check-cast p2, Lcom/github/javaparser/ast/type/ArrayType;

    .line 213
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ArrayType;->getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 216
    :cond_2
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

    .line 202
    check-cast p2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 203
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 206
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 207
    :cond_3
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

    .line 221
    check-cast p2, Lcom/github/javaparser/ast/type/IntersectionType;

    .line 222
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 224
    :cond_1
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

    .line 208
    check-cast p2, Lcom/github/javaparser/ast/type/PrimitiveType;

    .line 209
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->objEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 211
    :cond_1
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

    .line 112
    check-cast p2, Lcom/github/javaparser/ast/type/TypeParameter;

    .line 113
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 116
    :cond_2
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

    .line 225
    check-cast p2, Lcom/github/javaparser/ast/type/UnionType;

    .line 226
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 228
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 237
    check-cast p2, Lcom/github/javaparser/ast/type/UnknownType;

    .line 238
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 239
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 497
    check-cast p2, Lcom/github/javaparser/ast/type/VarType;

    .line 498
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 499
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;
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

    .line 229
    check-cast p2, Lcom/github/javaparser/ast/type/VoidType;

    .line 230
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 231
    :cond_0
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

    .line 232
    check-cast p2, Lcom/github/javaparser/ast/type/WildcardType;

    .line 233
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodeEquals(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->nodesEquals(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 236
    :cond_2
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NoCommentEqualsVisitor;->visit(Lcom/github/javaparser/ast/type/WildcardType;Lcom/github/javaparser/ast/visitor/Visitable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
