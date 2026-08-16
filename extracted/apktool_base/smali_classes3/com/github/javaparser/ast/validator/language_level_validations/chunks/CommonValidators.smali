.class public Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;
.super Lcom/github/javaparser/ast/validator/Validators;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    new-instance v0, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v1, Lb0/a;

    invoke-direct {v1}, Lb0/a;-><init>()V

    new-instance v2, Lb0/b;

    invoke-direct {v2}, Lb0/b;-><init>()V

    const-class v3, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {v0, v3, v1, v2}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    new-instance v1, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v2, Lb0/c;

    invoke-direct {v2}, Lb0/c;-><init>()V

    new-instance v4, Lb0/d;

    invoke-direct {v4}, Lb0/d;-><init>()V

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    new-instance v2, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v4, Lb0/e;

    invoke-direct {v4}, Lb0/e;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    new-instance v3, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v4, Lb0/f;

    invoke-direct {v4}, Lb0/f;-><init>()V

    const-class v5, Lcom/github/javaparser/ast/expr/AssignExpr;

    invoke-direct {v3, v5, v4}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    new-instance v4, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v5, Lb0/g;

    invoke-direct {v5}, Lb0/g;-><init>()V

    invoke-direct {v4, v5}, Lcom/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lcom/github/javaparser/ast/validator/Validator;)V

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/github/javaparser/ast/validator/Validator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-direct {p0, v5}, Lcom/github/javaparser/ast/validator/Validators;-><init>([Lcom/github/javaparser/ast/validator/Validator;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$new$3(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$new$0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$new$5(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic f(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/BodyDeclaration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$null$4(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/BodyDeclaration;)V

    return-void
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$new$6(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic h(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$new$2(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/CommonValidators;->lambda$new$7(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithExtends;->getExtendedTypes(I)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "A class cannot extend more than one other class."

    invoke-virtual {p1, p0, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$2(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$3(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->getImplementedTypes(I)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p0

    const-string v1, "An interface cannot implement other interfaces."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$5(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    new-instance v0, Lb0/h;

    invoke-direct {v0, p1}, Lb0/h;-><init>(Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$6(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/github/javaparser/ast/expr/NameExpr;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Illegal left hand side of an assignment."

    invoke-virtual {p1, p0, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$new$7(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/metamodel/PropertyMetaModel;

    invoke-virtual {v2}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNonEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNodeList()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.%s can not be empty."

    invoke-virtual {p1, p0, v3, v2}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$null$4(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/BodyDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "mem"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/body/InitializerDeclaration;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "An interface cannot have initializers."

    invoke-virtual {p0, p1, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
