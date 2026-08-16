.class Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;
.super Lorg/openjdk/tools/javac/tree/TreeCopier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/tree/TreeCopier<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Analyzer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Analyzer;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeCopier;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->lambda$visitLambdaExpression$0(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    return-void
.end method

.method private static synthetic lambda$visitLambdaExpression$0(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TZ;",
            "Ljava/lang/Void;",
            ")TZ;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->treesToAnalyzer:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->map(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->context:Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->treeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public bridge synthetic visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;->visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 3
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    .line 4
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    .line 5
    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->IMPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne p2, v0, :cond_0

    .line 6
    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    .line 7
    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/comp/g;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/g;-><init>()V

    invoke-interface {p2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-object p1
.end method
