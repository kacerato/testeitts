.class public final Lcom/github/javaparser/resolution/Navigator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->lambda$demandVariableDeclaration$4(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->lambda$demandClassOrInterface$2(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/lang/IllegalStateException;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->lambda$null$0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/lang/IllegalStateException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/IllegalStateException;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/resolution/Navigator;->lambda$demandParentNode$3()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method public static demandClass(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "qualifiedName"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->demandClassOrInterface(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Type is not a class"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static demandClassOrInterface(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compilationUnit",
            "qualifiedName"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->findType(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg0/j;

    invoke-direct {v0}, Lg0/j;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg0/k;

    invoke-direct {v0, p1}, Lg0/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    return-object p0
.end method

.method public static demandConstructor(Lcom/github/javaparser/ast/body/TypeDeclaration;I)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "td",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;I)",
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/BodyDeclaration;

    instance-of v2, v1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No constructor with index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static demandEnum(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Lcom/github/javaparser/ast/body/EnumDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "qualifiedName"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->findType(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/github/javaparser/ast/body/EnumDeclaration;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/EnumDeclaration;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Type is not an enum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No type found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static demandField(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/String;)Lcom/github/javaparser/ast/body/VariableDeclarator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cd",
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/BodyDeclaration;

    instance-of v1, v0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No field with given name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static demandInterface(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "qualifiedName"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->demandClassOrInterface(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Type is not an interface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static demandMethod(Lcom/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cd",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/BodyDeclaration;

    instance-of v2, v1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ambiguous getName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No method called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static demandNodeOfGivenClass(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/Class<",
            "TN;>;)TN;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lg0/f;

    invoke-direct {p1}, Lg0/f;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    return-object p0
.end method

.method public static demandParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg0/m;

    invoke-direct {v0}, Lg0/m;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    return-object p0
.end method

.method public static demandParentNode(Lcom/github/javaparser/ast/Node;Ljava/util/function/Predicate;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "isAcceptedParentNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/util/function/Predicate<",
            "Lcom/github/javaparser/ast/Node;",
            ">;)",
            "Lcom/github/javaparser/ast/Node;"
        }
    .end annotation

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->demandParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    .line 4
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0
.end method

.method public static demandReturnStmt(Lcom/github/javaparser/ast/body/MethodDeclaration;)Lcom/github/javaparser/ast/stmt/ReturnStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-static {p0, v0}, Lcom/github/javaparser/resolution/Navigator;->demandNodeOfGivenClass(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    return-object p0
.end method

.method public static demandSwitch(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/stmt/SwitchStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->findSwitchHelper(Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lg0/f;

    invoke-direct {v0}, Lg0/f;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    return-object p0
.end method

.method public static demandVariableDeclaration(Lcom/github/javaparser/ast/Node;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg0/e;

    invoke-direct {v0, p1}, Lg0/e;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/github/javaparser/ast/expr/NameExpr;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->lambda$findNameExpression$6(Ljava/lang/String;Lcom/github/javaparser/ast/expr/NameExpr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->lambda$demandClassOrInterface$1(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static findMethodCall(Lcom/github/javaparser/ast/Node;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "methodName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/MethodCallExpr;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg0/n;

    invoke-direct {v0, p1}, Lg0/n;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static findNameExpression(Lcom/github/javaparser/ast/Node;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/NameExpr;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg0/i;

    invoke-direct {v0, p1}, Lg0/i;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static findNodeOfGivenClass(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/Class<",
            "TN;>;)TN;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->demandNodeOfGivenClass(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method public static findReturnStmt(Lcom/github/javaparser/ast/body/MethodDeclaration;)Lcom/github/javaparser/ast/stmt/ReturnStmt;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->demandReturnStmt(Lcom/github/javaparser/ast/body/MethodDeclaration;)Lcom/github/javaparser/ast/stmt/ReturnStmt;

    move-result-object p0

    return-object p0
.end method

.method public static findSimpleName(Lcom/github/javaparser/ast/Node;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg0/g;

    invoke-direct {v0, p1}, Lg0/g;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static findSwitch(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/stmt/SwitchStmt;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->demandSwitch(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/stmt/SwitchStmt;

    move-result-object p0

    return-object p0
.end method

.method private static findSwitchHelper(Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/SwitchStmt;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static findType(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "qualifiedName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/github/javaparser/resolution/Navigator;->getOuterTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lg0/l;

    invoke-direct {v1, v0}, Lg0/l;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 7
    invoke-static {p1}, Lcom/github/javaparser/resolution/Navigator;->getInnerTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->findType(Lcom/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static findType(Lcom/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "td",
            "qualifiedName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/github/javaparser/resolution/Navigator;->getOuterTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/Node;

    .line 13
    instance-of v3, v2, Lcom/github/javaparser/ast/body/TypeDeclaration;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/github/javaparser/ast/body/TypeDeclaration;

    .line 14
    invoke-virtual {v2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/github/javaparser/resolution/Navigator;->getInnerTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-static {p1, p0}, Lcom/github/javaparser/resolution/Navigator;->findType(Lcom/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/github/javaparser/ast/expr/MethodCallExpr;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->lambda$findMethodCall$5(Ljava/lang/String;Lcom/github/javaparser/ast/expr/MethodCallExpr;)Z

    move-result p0

    return p0
.end method

.method private static getInnerTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getOuterTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->lambda$findType$8(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/github/javaparser/ast/expr/SimpleName;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Navigator;->lambda$findSimpleName$7(Ljava/lang/String;Lcom/github/javaparser/ast/expr/SimpleName;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$demandClassOrInterface$1(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "res"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/BodyDeclaration;->toClassOrInterfaceDeclaration()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lg0/h;

    invoke-direct {v1, p0}, Lg0/h;-><init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$demandClassOrInterface$2(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No type named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$demandParentNode$3()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent not found, the node does not appear to be inserted in a correct AST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$demandVariableDeclaration$4(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "n"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findMethodCall$5(Ljava/lang/String;Lcom/github/javaparser/ast/expr/MethodCallExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "methodName",
            "n"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findNameExpression$6(Ljava/lang/String;Lcom/github/javaparser/ast/expr/NameExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "n"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findSimpleName$7(Ljava/lang/String;Lcom/github/javaparser/ast/expr/SimpleName;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "n"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findType$8(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "typeName",
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/lang/IllegalStateException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "res"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is not a class or an interface, it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static requireParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/resolution/Navigator;->demandParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method
