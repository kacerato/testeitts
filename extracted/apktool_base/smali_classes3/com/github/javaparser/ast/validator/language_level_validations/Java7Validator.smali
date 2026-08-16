.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java6Validator;
.source "SourceFile"


# instance fields
.field private final multiCatch:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lcom/github/javaparser/ast/type/UnionType;",
            ">;"
        }
    .end annotation
.end field

.field final tryWithLimitedResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lcom/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java6Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/d0;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/d0;-><init>()V

    const-class v2, Lcom/github/javaparser/ast/stmt/TryStmt;

    invoke-direct {v0, v2, v1}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;->tryWithLimitedResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/e0;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/e0;-><init>()V

    const-class v3, Lcom/github/javaparser/ast/type/UnionType;

    invoke-direct {v1, v3, v2}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;->multiCatch:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    iget-object v2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;->genericsWithoutDiamondOperator:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v2}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->tryWithoutResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    invoke-virtual {p0, v2, v0}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noBinaryIntegerLiterals:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noUnderscoresInIntegerLiterals:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noMultiCatch:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method

.method public static synthetic X(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;->lambda$new$0(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic Y(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;->lambda$new$1(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Try has no finally, no catch, and no resources."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/expr/Expression;->isVariableDeclarationExpr()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Try with resources only supports variable declarations."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2, v3}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Union type (multi catch) must have at least two elements."

    invoke-virtual {p1, p0, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
