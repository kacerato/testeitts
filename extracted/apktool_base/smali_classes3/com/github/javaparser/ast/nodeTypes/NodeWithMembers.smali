.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public static synthetic A(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getMethods$2(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getMethods$1(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic F(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getConstructors$7(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getFields$17(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic O(Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getDefaultConstructor$10(Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getFieldByName$13(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getConstructors$6(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getMethodsByName$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getDefaultConstructor$9(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h([Ljava/lang/String;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getConstructorByParameterTypes$11([Ljava/lang/String;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getMethodsByParameterTypes$3([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getFieldByName$14(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getConstructorByParameterTypes$11([Ljava/lang/String;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->hasParametersOfType([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getConstructorByParameterTypes$12([Ljava/lang/Class;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->hasParametersOfType([Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getConstructors$6(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    return p0
.end method

.method private static synthetic lambda$getConstructors$7(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getDefaultConstructor$10(Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cd"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDefaultConstructor$8(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    return p0
.end method

.method private static synthetic lambda$getDefaultConstructor$9(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getFieldByName$13(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    return p0
.end method

.method private static synthetic lambda$getFieldByName$14(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "f"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getFieldByName$16(Ljava/lang/String;Lcom/github/javaparser/ast/body/FieldDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/nodeTypes/j;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/nodeTypes/j;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getFields$17(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    return p0
.end method

.method private static synthetic lambda$getFields$18(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getMethods$1(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return p0
.end method

.method private static synthetic lambda$getMethods$2(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getMethodsByName$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "m"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getMethodsByParameterTypes$3([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->hasParametersOfType([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getMethodsByParameterTypes$5([Ljava/lang/Class;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->hasParametersOfType([Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getMethodsBySignature$4([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;->hasParametersOfType([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$null$15(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "var"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getDefaultConstructor$8(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/lang/String;Lcom/github/javaparser/ast/body/FieldDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getFieldByName$16(Ljava/lang/String;Lcom/github/javaparser/ast/body/FieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o([Ljava/lang/Class;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getMethodsByParameterTypes$5([Ljava/lang/Class;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p([Ljava/lang/Class;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getConstructorByParameterTypes$12([Ljava/lang/Class;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getMethodsBySignature$4([Ljava/lang/String;Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getFields$18(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$null$15(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs addConstructor([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-direct {v0}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;-><init>()V

    invoke-static {p1}, Lcom/github/javaparser/ast/Modifier;->createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public varargs addField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "modifiers"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    invoke-direct {v0}, Lcom/github/javaparser/ast/body/FieldDeclaration;-><init>()V

    .line 5
    new-instance v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-direct {v1, p1, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    .line 7
    invoke-static {p3}, Lcom/github/javaparser/ast/Modifier;->createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    .line 8
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public varargs addField(Ljava/lang/Class;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name",
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addField(Ljava/lang/String;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "modifiers"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addFieldWithInitializer(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "initializer",
            "modifiers"
        }
    .end annotation

    .line 4
    invoke-interface {p0, p1, p2, p4}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p2, p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    return-object p1
.end method

.method public varargs addFieldWithInitializer(Ljava/lang/Class;Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name",
            "initializer",
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "[",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addFieldWithInitializer(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addFieldWithInitializer(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "initializer",
            "modifiers"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addFieldWithInitializer(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addInitializer()Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 3

    new-instance v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/body/InitializerDeclaration;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/body/InitializerDeclaration;-><init>(ZLcom/github/javaparser/ast/stmt/BlockStmt;)V

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public addMember(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "member"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public varargs addMethod(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "methodName",
            "modifiers"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-direct {v0}, Lcom/github/javaparser/ast/body/MethodDeclaration;-><init>()V

    invoke-interface {v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->setName(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    new-instance p1, Lcom/github/javaparser/ast/type/VoidType;

    invoke-direct {p1}, Lcom/github/javaparser/ast/type/VoidType;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-static {p2}, Lcom/github/javaparser/ast/Modifier;->createModifierList([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public addPrivateField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addPrivateField(Ljava/lang/Class;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/Class;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addPrivateField(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addProtectedField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addProtectedField(Ljava/lang/Class;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/Class;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addProtectedField(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addPublicField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addPublicField(Ljava/lang/Class;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/Class;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addPublicField(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addStaticInitializer()Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 3

    new-instance v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/body/InitializerDeclaration;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/body/InitializerDeclaration;-><init>(ZLcom/github/javaparser/ast/stmt/BlockStmt;)V

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object v0
.end method

.method public varargs getConstructorByParameterTypes([Ljava/lang/Class;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/z;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/z;-><init>([Ljava/lang/Class;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public varargs getConstructorByParameterTypes([Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/h;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/h;-><init>([Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getConstructors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/k;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/k;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/l;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultConstructor()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/u;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/u;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/v;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/v;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/w;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getFieldByName(Ljava/lang/String;)Ljava/util/Optional;
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/m;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/n;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/n;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/o;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/s;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/s;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/t;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/t;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMember(I)Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/BodyDeclaration;

    return-object p1
.end method

.method public abstract getMembers()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation
.end method

.method public getMethods()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/x;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/x;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/y;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/y;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsByName(Ljava/lang/String;)Ljava/util/List;
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
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/q;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/q;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs getMethodsByParameterTypes([Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/r;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/r;-><init>([Ljava/lang/Class;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs getMethodsByParameterTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/i;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/i;-><init>([Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs getMethodsBySignature(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethodsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/nodeTypes/p;

    invoke-direct {v0, p2}, Lcom/github/javaparser/ast/nodeTypes/p;-><init>([Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setMember(ILcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "member"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public abstract setMembers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "members"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)TN;"
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
