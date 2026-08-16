.class public Lorg/openjdk/tools/javac/util/ListBuffer;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private count:I

.field private elems:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field private last:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field private shared:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/ListBuffer;->clear()V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method private copy()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TA;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->shared:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/ListBuffer;->copy()V

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    iget p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    return-object p0
.end method

.method public appendArray([Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TA;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TA;>;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendList(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TA;>;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->shared:Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TA;>;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/ListBuffer$1;-><init>(Lorg/openjdk/tools/javac/util/ListBuffer;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    :cond_1
    return-object v1
.end method

.method public nonEmpty()Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->last:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    iget p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->count:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toList()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "TA;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->shared:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ListBuffer;->elems:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method
