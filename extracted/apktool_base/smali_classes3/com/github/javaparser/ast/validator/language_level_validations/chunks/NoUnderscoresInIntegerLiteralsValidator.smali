.class public Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoUnderscoresInIntegerLiteralsValidator;
.super Lcom/github/javaparser/ast/validator/VisitorValidator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/VisitorValidator;-><init>()V

    return-void
.end method

.method private static validate(Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Underscores in literal values are not supported."

    invoke-virtual {p1, p0, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
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
    invoke-static {p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoUnderscoresInIntegerLiteralsValidator;->validate(Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoUnderscoresInIntegerLiteralsValidator;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
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
    invoke-static {p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoUnderscoresInIntegerLiteralsValidator;->validate(Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/NoUnderscoresInIntegerLiteralsValidator;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
