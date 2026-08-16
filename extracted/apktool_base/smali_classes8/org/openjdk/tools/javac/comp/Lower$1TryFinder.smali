.class Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Lower;->shouldUseCloseResourceMethod()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TryFinder"
.end annotation


# instance fields
.field closeCount:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Lower;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;->useCloseResourceMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public useCloseResourceMethod()Z
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;->closeCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    iget v2, p0, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;->closeCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    :goto_1
    add-int/2addr v2, v0

    iput v2, p0, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;->closeCount:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V

    return-void
.end method
