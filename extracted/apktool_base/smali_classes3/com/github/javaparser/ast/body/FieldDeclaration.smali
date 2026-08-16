.class public Lcom/github/javaparser/ast/body/FieldDeclaration;
.super Lcom/github/javaparser/ast/body/BodyDeclaration;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier;
.implements Lcom/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/body/BodyDeclaration<",
        "Lcom/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lcom/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables<",
        "Lcom/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "Lcom/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "Lcom/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier<",
        "Lcom/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lcom/github/javaparser/resolution/Resolvable<",
        "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private modifiers:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private variables:Lcom/github/javaparser/ast/NodeList;
    .annotation runtime Lcom/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/github/javaparser/ast/body/FieldDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "annotations",
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/github/javaparser/ast/body/BodyDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/FieldDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/body/FieldDeclaration;->setVariables(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    .line 8
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/github/javaparser/ast/body/FieldDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/body/FieldDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    filled-new-array {p2}, [Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object p2

    invoke-static {p2}, Lcom/github/javaparser/ast/NodeList;->nodeList([Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/github/javaparser/ast/body/FieldDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Lcom/github/javaparser/ast/type/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    new-instance v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-static {p3}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {v0, p2, p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/body/FieldDeclaration;-><init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    return-void
.end method

.method private isDeclaredInInterface()Z
    .locals 2

    const-class v0, Lcom/github/javaparser/ast/body/TypeDeclaration;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/f;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/f;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/g;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/h;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/h;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic j0(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->lambda$createSetter$2(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->lambda$createGetter$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Ljava/util/Optional;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->lambda$createGetter$1(Ljava/util/Optional;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createGetter$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "fieldNameUpper",
            "clazz"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addMethod(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createGetter$1(Ljava/util/Optional;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "parentEnum",
            "fieldNameUpper"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/EnumDeclaration;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addMethod(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createSetter$2(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "fieldNameUpper",
            "clazz"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addMethod(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createSetter$3(Ljava/util/Optional;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "parentEnum",
            "fieldNameUpper"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/EnumDeclaration;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    filled-new-array {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->addMethod(Ljava/lang/String;[Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Ljava/util/Optional;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->lambda$createSetter$3(Ljava/util/Optional;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V

    return-void
.end method

.method public asFieldDeclaration()Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->clone()Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->clone()Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/FieldDeclaration;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->clone()Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public createGetter()Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 8

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-class v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-class v2, Lcom/github/javaparser/ast/body/EnumDeclaration;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can use this only when the field is attached to a class or an enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariable(I)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/github/javaparser/ast/body/i;

    invoke-direct {v3, v1}, Lcom/github/javaparser/ast/body/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/github/javaparser/ast/body/j;

    invoke-direct {v3, v2, v1}, Lcom/github/javaparser/ast/body/j;-><init>(Ljava/util/Optional;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {v4}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    new-instance v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v1}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    new-instance v2, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v2, v5}, Lcom/github/javaparser/ast/stmt/ReturnStmt;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can use this only when the field declares only 1 variable name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetter()Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 8

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-class v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-class v2, Lcom/github/javaparser/ast/body/EnumDeclaration;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can use this only when the field is attached to a class or an enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariable(I)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/github/javaparser/ast/body/k;

    invoke-direct {v3, v1}, Lcom/github/javaparser/ast/body/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/github/javaparser/ast/body/l;

    invoke-direct {v3, v2, v1}, Lcom/github/javaparser/ast/body/l;-><init>(Ljava/util/Optional;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    new-instance v1, Lcom/github/javaparser/ast/type/VoidType;

    invoke-direct {v1}, Lcom/github/javaparser/ast/type/VoidType;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {v4}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/github/javaparser/ast/body/Parameter;-><init>(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    new-instance v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v1}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    new-instance v2, Lcom/github/javaparser/ast/expr/AssignExpr;

    new-instance v3, Lcom/github/javaparser/ast/expr/NameExpr;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v4, v5}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/github/javaparser/ast/expr/AssignExpr$Operator;->ASSIGN:Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-direct {v2, v3, v4, v5}, Lcom/github/javaparser/ast/expr/AssignExpr;-><init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)V

    invoke-interface {v1, v2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can use this only when the field declares only 1 variable name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/FieldDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/FieldDeclarationMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->fieldDeclarationMetaModel:Lcom/github/javaparser/metamodel/FieldDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/FieldDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getVariables()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifFieldDeclaration(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isFieldDeclaration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFinal()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->isDeclaredInInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPublic()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->isDeclaredInInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStatic()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->isDeclaredInInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTransient()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public resolve()Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;)",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setTransient(Z)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/FieldDeclaration;

    return-object p1
.end method

.method public bridge synthetic setVariables(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "variables"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->setVariables(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setVariables(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;)",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->VARIABLES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/FieldDeclaration;->variables:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setVolatile(Z)Lcom/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/FieldDeclaration;

    return-object p1
.end method

.method public toFieldDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/FieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
