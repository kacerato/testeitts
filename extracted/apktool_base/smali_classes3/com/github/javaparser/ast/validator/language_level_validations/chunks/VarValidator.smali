.class public Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/validator/TypedValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/validator/TypedValidator<",
        "Lcom/github/javaparser/ast/type/VarType;",
        ">;"
    }
.end annotation


# instance fields
.field private varAllowedInLambdaParameters:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "varAllowedInLambdaParameters"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->varAllowedInLambdaParameters:Z

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->lambda$null$1(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->lambda$accept$0(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->lambda$null$3(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->lambda$accept$4(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->lambda$null$2(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$accept$0(Lcom/github/javaparser/ast/Node;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$accept$4(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "vd"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\"var\" cannot have extra array brackets."

    invoke-virtual {p1, p3, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->reportIllegalPosition(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void

    :cond_1
    new-instance v1, Lb0/q;

    invoke-direct {v1, p0, p2, p1, p3}, Lb0/q;-><init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$null$1(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "initializer"
        }
    .end annotation

    instance-of v0, p2, Lcom/github/javaparser/ast/expr/NullLiteralExpr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\"var\" cannot infer type from just null."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    instance-of p2, p2, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-eqz p2, :cond_1

    const-string p2, "\"var\" cannot infer array types."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$null$2(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "reporter",
            "vd",
            "c"
        }
    .end annotation

    instance-of v0, p4, Lcom/github/javaparser/ast/stmt/ForStmt;

    if-nez v0, :cond_1

    instance-of v0, p4, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    if-nez v0, :cond_1

    instance-of v0, p4, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    if-nez v0, :cond_1

    instance-of v0, p4, Lcom/github/javaparser/ast/stmt/TryStmt;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->reportIllegalPosition(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    :cond_1
    :goto_0
    instance-of p4, p4, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "\"var\" needs an initializer."

    invoke-virtual {p2, p1, v0, p4}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lb0/u;

    invoke-direct {p4, p2, p1}, Lb0/u;-><init>(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$null$3(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "reporter",
            "vd",
            "vdeNode"
        }
    .end annotation

    instance-of v0, p4, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->reportIllegalPosition(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void

    :cond_0
    move-object v0, p4

    check-cast v0, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\"var\" only takes a single variable."

    invoke-virtual {p2, v0, v2, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p4}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->reportIllegalPosition(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void

    :cond_2
    new-instance v0, Lb0/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lb0/p;-><init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-virtual {p4, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private reportIllegalPosition(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\"var\" is not allowed here."

    invoke-virtual {p2, p1, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/type/VarType;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->accept(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public accept(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lcom/github/javaparser/HasParentNode;->hasParentNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/expr/TypePatternExpr;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    const-class v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->varAllowedInLambdaParameters:Z

    if-eqz v0, :cond_1

    .line 7
    const-class v0, Lcom/github/javaparser/ast/body/Parameter;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lb0/r;

    invoke-direct {v1}, Lb0/r;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lb0/s;

    invoke-direct {v1}, Lb0/s;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 10
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->reportIllegalPosition(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void

    .line 12
    :cond_2
    new-instance v1, Lb0/t;

    invoke-direct {v1, p0, p2, p1}, Lb0/t;-><init>(Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/type/VarType;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "reporter"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/github/javaparser/ast/type/VarType;

    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/VarValidator;->accept(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
