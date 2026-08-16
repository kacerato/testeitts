.class Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatementScanner"
.end annotation


# instance fields
.field context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Analyzer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzers:[Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->tag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->match(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->treesToAnalyzer:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 0

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->getCondition()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->getInitializer()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->getCondition()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->getUpdate()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->getCondition()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 0

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->getCondition()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method
