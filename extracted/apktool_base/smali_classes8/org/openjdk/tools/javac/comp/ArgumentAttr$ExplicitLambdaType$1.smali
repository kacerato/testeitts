.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType$1;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->lambda$returnExpressions$1()Lorg/openjdk/tools/javac/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;

.field final synthetic val$returnExpressions:Lorg/openjdk/tools/javac/util/ListBuffer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType$1;->this$1:Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType$1;->val$returnExpressions:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType$1;->val$returnExpressions:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    return-void
.end method
