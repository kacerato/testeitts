.class Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Analyzer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->LAMBDA:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method

.method private decls(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getModifiers()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    iget-wide v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v4, 0x1000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public map(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;
    .locals 1

    .line 2
    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->decls(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    .line 3
    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    .line 4
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Analyzer;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Lambda(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->map(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    return-object p1
.end method

.method public match(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Z
    .locals 2

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 3
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 4
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Analyzer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 5
    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 6
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->decls(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic match(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->match(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Z

    move-result p1

    return p1
.end method

.method public process(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Z)V
    .locals 1

    if-nez p3, :cond_0

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Analyzer;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "potential.lambda.found"

    invoke-virtual {p2, p1, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic process(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;->process(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Z)V

    return-void
.end method
