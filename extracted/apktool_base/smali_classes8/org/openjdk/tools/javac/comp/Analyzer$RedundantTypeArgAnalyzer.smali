.class Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RedundantTypeArgAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Analyzer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->METHOD:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method


# virtual methods
.method public map(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .locals 0

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    return-object p2
.end method

.method public bridge synthetic map(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;->map(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method public match(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic match(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;->match(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)Z

    move-result p1

    return p1
.end method

.method public process(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Z)V
    .locals 1

    if-nez p3, :cond_0

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Analyzer;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "method.redundant.typeargs"

    invoke-virtual {p2, p1, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic process(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;->process(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Z)V

    return-void
.end method
