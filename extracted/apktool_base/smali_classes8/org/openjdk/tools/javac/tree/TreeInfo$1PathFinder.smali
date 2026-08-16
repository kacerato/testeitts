.class Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/tree/TreeInfo;->pathFor(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PathFinder"
.end annotation


# instance fields
.field path:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$node:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->val$node:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->path:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->path:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->path:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->val$node:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->path:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->path:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/tree/TreeInfo$1Result;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->path:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo$1Result;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
