.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaBodyStructChecker"
.end annotation


# instance fields
.field isPotentiallyValueCompatible:Z

.field isVoidCompatible:Z

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;->isVoidCompatible:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;->isPotentiallyValueCompatible:Z

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 0

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 0

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;->isVoidCompatible:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;->isPotentiallyValueCompatible:Z

    :goto_0
    return-void
.end method
