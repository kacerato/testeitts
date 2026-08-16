.class Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tarjan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "N:",
        "Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode<",
        "TD;TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field index:I

.field sccs:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/util/List<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field stack:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->index:I

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->sccs:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->stack:Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/GraphUtils$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->findSCC(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private addSCC(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->stack:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->active:Z

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->sccs:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private findSCC(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/util/List<",
            "+TN;>;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;

    .line 2
    iget v1, v0, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->findSCC(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->sccs:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private findSCC(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)V

    .line 6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->getAllDependencies()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;

    .line 7
    iget v2, v1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 8
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->findSCC(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)V

    .line 9
    iget v2, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->lowlink:I

    iget v1, v1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->lowlink:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->lowlink:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->stack:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iget v2, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->lowlink:I

    iget v1, v1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->lowlink:I

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->lowlink:I

    iget v1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    if-ne v0, v1, :cond_3

    .line 13
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->addSCC(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)V

    :cond_3
    return-void
.end method

.method private visitNode(Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->index:I

    iput v0, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->index:I

    iput v0, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->lowlink:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->index:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/GraphUtils$Tarjan;->stack:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-boolean v1, p1, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;->active:Z

    return-void
.end method
