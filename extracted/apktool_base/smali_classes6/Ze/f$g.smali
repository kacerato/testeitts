.class public final LZe/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZe/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LZe/f$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Throwable;

.field public volatile c:Z

.field public volatile d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, LHe/b;->h(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LZe/f$g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget v0, p0, LZe/f$g;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    aput-object v1, p1, v2

    :cond_0
    return-object p1

    :cond_1
    iget-object v3, p0, LZe/f$g;->a:Ljava/util/List;

    array-length v4, p1

    if-ge v4, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_2
    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    array-length v2, p1

    if-le v2, v0, :cond_4

    aput-object v1, p1, v0

    :cond_4
    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LZe/f$g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, LZe/f$g;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LZe/f$g;->d:I

    return-void
.end method

.method public complete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LZe/f$g;->c:Z

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LZe/f$g;->b:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LZe/f$g;->c:Z

    return-void
.end method

.method public e(LZe/f$c;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/f$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LZe/f$g;->a:Ljava/util/List;

    iget-object v1, p1, LZe/f$c;->b:Lhn/c;

    iget-object v2, p1, LZe/f$c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, LZe/f$c;->d:Ljava/lang/Object;

    :goto_0
    iget-wide v3, p1, LZe/f$c;->g:J

    const/4 v5, 0x1

    move v6, v5

    :cond_2
    iget-object v7, p1, LZe/f$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    :goto_1
    cmp-long v9, v3, v7

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    iget-boolean v11, p1, LZe/f$c;->f:Z

    if-eqz v11, :cond_3

    iput-object v10, p1, LZe/f$c;->d:Ljava/lang/Object;

    return-void

    :cond_3
    iget-boolean v11, p0, LZe/f$g;->c:Z

    iget v12, p0, LZe/f$g;->d:I

    if-eqz v11, :cond_5

    if-ne v2, v12, :cond_5

    iput-object v10, p1, LZe/f$c;->d:Ljava/lang/Object;

    iput-boolean v5, p1, LZe/f$c;->f:Z

    iget-object p1, p0, LZe/f$g;->b:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    invoke-interface {v1}, Lhn/c;->a()V

    goto :goto_2

    :cond_4
    invoke-interface {v1, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_5
    if-ne v2, v12, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lhn/c;->h(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    goto :goto_1

    :cond_7
    :goto_3
    if-nez v9, :cond_a

    iget-boolean v7, p1, LZe/f$c;->f:Z

    if-eqz v7, :cond_8

    iput-object v10, p1, LZe/f$c;->d:Ljava/lang/Object;

    return-void

    :cond_8
    iget-boolean v7, p0, LZe/f$g;->c:Z

    iget v8, p0, LZe/f$g;->d:I

    if-eqz v7, :cond_a

    if-ne v2, v8, :cond_a

    iput-object v10, p1, LZe/f$c;->d:Ljava/lang/Object;

    iput-boolean v5, p1, LZe/f$c;->f:Z

    iget-object p1, p0, LZe/f$g;->b:Ljava/lang/Throwable;

    if-nez p1, :cond_9

    invoke-interface {v1}, Lhn/c;->a()V

    goto :goto_4

    :cond_9
    invoke-interface {v1, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p1, LZe/f$c;->d:Ljava/lang/Object;

    iput-wide v3, p1, LZe/f$c;->g:J

    neg-int v6, v6

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_2

    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, LZe/f$g;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, LZe/f$g;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, LZe/f$g;->a:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, LZe/f$g;->c:Z

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, LZe/f$g;->d:I

    return v0
.end method
