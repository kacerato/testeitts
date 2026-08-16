.class public Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/validator/TypedValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/validator/TypedValidator<",
        "Lcom/github/javaparser/ast/body/RecordDeclaration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->lambda$null$1(Lcom/github/javaparser/ast/body/MethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->lambda$validateRecordComponentAccessorMethods$3(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/body/FieldDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->lambda$forbidNonStaticFieldsInRecords$0(Lcom/github/javaparser/ast/body/FieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->lambda$null$2(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    return-void
.end method

.method private forbidAbstractModifier(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/ast/Modifier;->abstractModifier()Lcom/github/javaparser/ast/Modifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->contains(Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Record Declarations must not be declared as abstract."

    invoke-virtual {p2, p1, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private forbidNonStaticFieldsInRecords(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 4
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

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lb0/n;

    invoke-direct {v1}, Lb0/n;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Record Declarations must have zero non-static fields."

    invoke-virtual {p2, p1, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$forbidNonStaticFieldsInRecords$0(Lcom/github/javaparser/ast/body/FieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fieldDeclaration"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/FieldDeclaration;->isStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$null$1(Lcom/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$null$2(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "parameter",
            "reporter",
            "n",
            "methodDeclaration"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithType;->getTypeAsString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithType;->getTypeAsString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p3, "Incorrect component accessor return type. Expected: \'%s\', found: \'%s\'."

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p0, p3}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$validateRecordComponentAccessorMethods$3(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/Parameter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "n",
            "reporter",
            "parameter"
        }
    .end annotation

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethodsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lb0/l;

    invoke-direct {v1}, Lb0/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lb0/m;

    invoke-direct {v1, p2, p1, p0}, Lb0/m;-><init>(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/RecordDeclaration;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private validateRecordComponentAccessorMethods(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lb0/o;

    invoke-direct {v1, p1, p2}, Lb0/o;-><init>(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

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
    check-cast p1, Lcom/github/javaparser/ast/body/RecordDeclaration;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->accept(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public accept(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->forbidAbstractModifier(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->forbidNonStaticFieldsInRecords(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->validateRecordComponentAccessorMethods(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

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
    check-cast p1, Lcom/github/javaparser/ast/body/RecordDeclaration;

    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/RecordDeclarationValidator;->accept(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
