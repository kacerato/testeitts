.class public abstract Lcom/github/javaparser/ast/body/TypeDeclaration;
.super Lcom/github/javaparser/ast/body/BodyDeclaration;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/javaparser/ast/body/TypeDeclaration<",
        "*>;>",
        "Lcom/github/javaparser/ast/body/BodyDeclaration<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "TT;>;",
        "Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private members:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation
.end field

.field private modifiers:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lcom/github/javaparser/ast/expr/SimpleName;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/body/TypeDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "annotations",
            "name",
            "members"
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
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/github/javaparser/ast/body/BodyDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    .line 6
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/body/TypeDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    .line 7
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/body/TypeDeclaration;->setMembers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    .line 8
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V
    .locals 6
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "name",
            "members"
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
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/body/TypeDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v4, p2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/body/TypeDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public static synthetic j0(Lcom/github/javaparser/ast/body/TypeDeclaration;Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$getFullyQualifiedName$10(Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$getFullyQualifiedName$8(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/github/javaparser/ast/body/TypeDeclaration;Lcom/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$getFullyQualifiedName$7(Lcom/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getCallablesWithSignature$1(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/body/CallableDeclaration;

    return p0
.end method

.method private static synthetic lambda$getCallablesWithSignature$2(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/body/CallableDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$getCallablesWithSignature$3(Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;Lcom/github/javaparser/ast/body/CallableDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "signature",
            "m"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getSignature()Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getFullyQualifiedName$10(Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "td"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getFullyQualifiedName()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/body/q;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/body/q;-><init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getFullyQualifiedName$7(Lcom/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cu"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/body/t;

    invoke-direct {v0}, Lcom/github/javaparser/ast/body/t;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/body/u;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/body/u;-><init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/body/v;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/body/v;-><init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private static synthetic lambda$getFullyQualifiedName$8(Lcom/github/javaparser/ast/body/TypeDeclaration;)Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "td"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$isNestedType$11(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isTopLevelType$0(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$4(Lcom/github/javaparser/ast/PackageDeclaration;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pd"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithName;->getNameAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$null$5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pkg"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$null$6()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$null$9(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fqn"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic m0(Lcom/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$null$5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Lcom/github/javaparser/ast/body/TypeDeclaration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$null$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;Lcom/github/javaparser/ast/body/CallableDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$getCallablesWithSignature$3(Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;Lcom/github/javaparser/ast/body/CallableDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p0(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$isTopLevelType$0(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$getCallablesWithSignature$1(Lcom/github/javaparser/ast/body/BodyDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$null$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$isNestedType$11(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lcom/github/javaparser/ast/PackageDeclaration;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$null$4(Lcom/github/javaparser/ast/PackageDeclaration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/CallableDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->lambda$getCallablesWithSignature$2(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/CallableDeclaration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addMember(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "decl"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->addMember(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public addMember(Lcom/github/javaparser/ast/body/BodyDeclaration;)Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object p0
.end method

.method public asTypeDeclaration()Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->clone()Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->clone()Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/TypeDeclaration;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->clone()Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getCallablesWithSignature(Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/CallableDeclaration<",
            "*>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/w;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/x;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/x;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/y;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/body/y;-><init>(Lcom/github/javaparser/ast/body/CallableDeclaration$Signature;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getFullyQualifiedName()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->findCompilationUnit()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/z;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/body/z;-><init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lcom/github/javaparser/ast/body/TypeDeclaration;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/A;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/A;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/B;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/body/B;-><init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMembers()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/TypeDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMetaModel()Lcom/github/javaparser/metamodel/TypeDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/TypeDeclarationMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->typeDeclarationMetaModel:Lcom/github/javaparser/metamodel/TypeDeclarationMetaModel;

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

    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public ifTypeDeclaration(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/body/TypeDeclaration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isNestedType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/s;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/s;-><init>()V

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

.method public isTopLevelType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/body/r;

    invoke-direct {v1}, Lcom/github/javaparser/ast/body/r;-><init>()V

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

.method public isTypeDeclaration()Z
    .locals 1

    const/4 v0, 0x1

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
    iget-object v2, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

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
    iget-object v2, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/body/BodyDeclaration;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_5

    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/TypeDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    return v3

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/body/BodyDeclaration;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public abstract resolve()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.end method

.method public bridge synthetic setMembers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "members"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->setMembers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setMembers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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
            "*>;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->MEMBERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->members:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/body/TypeDeclaration;
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
            ">;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->modifiers:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public bridge synthetic setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/TypeDeclaration;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toTypeDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
