.class Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker$1;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->lambdaResults(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Lorg/openjdk/tools/javac/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;

.field final synthetic val$buffer:Lorg/openjdk/tools/javac/util/ListBuffer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker$1;->this$3:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker$1;->val$buffer:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker$1;->val$buffer:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker$1;->this$3:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->access$700(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_0
    return-void
.end method
