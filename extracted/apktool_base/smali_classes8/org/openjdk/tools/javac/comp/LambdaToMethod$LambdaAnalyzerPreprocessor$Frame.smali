.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Frame"
.end annotation


# instance fields
.field locals:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

.field final tree:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public addLocal(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->locals:Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->locals:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->locals:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->locals:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method
