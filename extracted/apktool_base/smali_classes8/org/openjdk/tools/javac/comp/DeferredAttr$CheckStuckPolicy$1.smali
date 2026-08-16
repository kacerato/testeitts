.class Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->scanLambdaBody(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;

.field final synthetic val$pt:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;->val$pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 3

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;->val$pt:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;

    iput-object v1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->pt:Lorg/openjdk/tools/javac/code/Type;

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
