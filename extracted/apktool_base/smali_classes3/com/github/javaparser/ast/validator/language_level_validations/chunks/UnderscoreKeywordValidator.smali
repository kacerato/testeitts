.class public Lcom/github/javaparser/ast/validator/language_level_validations/chunks/UnderscoreKeywordValidator;
.super Lcom/github/javaparser/ast/validator/VisitorValidator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/VisitorValidator;-><init>()V

    return-void
.end method

.method private static validateIdentifier(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "id",
            "arg"
        }
    .end annotation

    const-string v0, "_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "\'_\' is a reserved keyword."

    invoke-virtual {p2, p0, v0, p1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
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

    .line 3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/UnderscoreKeywordValidator;->validateIdentifier(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
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

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/UnderscoreKeywordValidator;->visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
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

    .line 5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/UnderscoreKeywordValidator;->validateIdentifier(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
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

    .line 2
    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/UnderscoreKeywordValidator;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
