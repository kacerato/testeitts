.class public Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/LambdaExpressionTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCLambda"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;
    }
.end annotation


# instance fields
.field public body:Lorg/openjdk/tools/javac/tree/JCTree;

.field public canCompleteNormally:Z

.field public paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

.field public params:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->canCompleteNormally:Z

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->IMPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->EXPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    return-void
.end method

.method public bridge synthetic getBody()Lorg/openjdk/source/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBody()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0
.end method

.method public getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->STATEMENT:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    :goto_0
    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/VariableTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public bridge synthetic setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p0
.end method

.method public bridge synthetic setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    return-object p1
.end method
