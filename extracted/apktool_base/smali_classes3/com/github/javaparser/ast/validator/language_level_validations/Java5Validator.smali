.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java1_4Validator;
.source "SourceFile"


# instance fields
.field final enumNotAllowed:Lcom/github/javaparser/ast/validator/Validator;

.field final forEachStmt:Lcom/github/javaparser/ast/validator/Validator;

.field final genericsWithoutDiamondOperator:Lcom/github/javaparser/ast/validator/Validator;

.field protected final noPrimitiveGenericArguments:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_4Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/Z;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/Z;-><init>()V

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lcom/github/javaparser/ast/validator/Validator;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->genericsWithoutDiamondOperator:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v1, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/a0;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/a0;-><init>()V

    invoke-direct {v1, v2}, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lcom/github/javaparser/ast/validator/Validator;)V

    iput-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->noPrimitiveGenericArguments:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v2, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v3, Lcom/github/javaparser/ast/validator/language_level_validations/b0;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/language_level_validations/b0;-><init>()V

    const-class v4, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    invoke-direct {v2, v4, v3}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->forEachStmt:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v3, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;

    const-string v4, "enum"

    invoke-direct {v3, v4}, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->enumNotAllowed:Lcom/github/javaparser/ast/validator/Validator;

    iget-object v4, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noGenerics:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v4, v0}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {p0, v3}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {p0, v2}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noAnnotations:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noEnums:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noVarargs:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noForEach:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noStaticImports:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method

.method public static synthetic S(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/type/Type;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->lambda$null$1(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method

.method public static synthetic T(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->lambda$new$4(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic U(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->lambda$null$2(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public static synthetic V(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->lambda$new$3(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic W(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->lambda$new$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    instance-of v0, p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "The diamond operator is not supported."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_7:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$3(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
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

    instance-of v0, p0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;

    invoke-interface {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/Y;

    invoke-direct {v1, p1, p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Y;-><init>(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$4(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A foreach statement\'s variable declaration must have exactly one variable declarator. Given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$null$1(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/type/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "ty"
        }
    .end annotation

    instance-of p2, p2, Lcom/github/javaparser/ast/type/PrimitiveType;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Type arguments may not be primitive."

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$null$2(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "node",
            "types"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/c0;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/c0;-><init>(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {p2, v0}, Lcom/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
