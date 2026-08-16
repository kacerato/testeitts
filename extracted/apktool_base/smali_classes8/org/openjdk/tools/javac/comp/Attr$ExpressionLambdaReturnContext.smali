.class Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;
.super Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpressionLambdaReturnContext"
.end annotation


# instance fields
.field expStmtExpected:Z

.field expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0, p1, p3}, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;->expStmtExpected:Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isExpressionStatement(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;->compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1
.end method

.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;->expStmtExpected:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    sget-object v1, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->StatExprExpected:Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :goto_0
    return-void
.end method
