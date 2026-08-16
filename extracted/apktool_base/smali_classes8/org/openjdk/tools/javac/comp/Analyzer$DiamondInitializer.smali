.class Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;
.super Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiamondInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Analyzer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->DIAMOND:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method


# virtual methods
.method public map(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;
    .locals 1

    .line 2
    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    return-object p2
.end method

.method public bridge synthetic map(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;->map(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p1

    return-object p1
.end method

.method public match(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Z
    .locals 2

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    .line 4
    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Analyzer;->access$000(Lorg/openjdk/tools/javac/comp/Analyzer;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic match(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;->match(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Z

    move-result p1

    return p1
.end method

.method public process(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Z)V
    .locals 4

    if-nez p3, :cond_5

    .line 2
    iget-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    .line 4
    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 6
    :goto_0
    iget-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    .line 7
    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    goto :goto_1

    :cond_1
    iget-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 8
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 10
    iget-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    .line 11
    :goto_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 12
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Analyzer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 13
    :cond_3
    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    .line 14
    :cond_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Analyzer;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const-string p3, "diamond.redundant.args"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic process(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;->process(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Z)V

    return-void
.end method
