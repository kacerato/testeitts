.class public Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;
.super Lcom/github/javaparser/ast/validator/VisitorValidator;
.source "SourceFile"


# instance fields
.field private final error:Ljava/lang/String;

.field private final keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/VisitorValidator;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->keyword:Ljava/lang/String;

    const-string v0, "\'%s\' cannot be used as an identifier as it is a keyword."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    .line 3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->error:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    .line 6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->error:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/ReservedKeywordValidator;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
