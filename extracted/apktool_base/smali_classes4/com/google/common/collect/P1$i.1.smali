.class public abstract Lcom/google/common/collect/P1$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Lcom/google/common/collect/P1$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$o<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public f:Lcom/google/common/collect/P1$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public g:Lcom/google/common/collect/P1$J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1<",
            "TK;TV;TE;TS;>.J;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public h:Lcom/google/common/collect/P1$J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1<",
            "TK;TV;TE;TS;>.J;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic i:Lcom/google/common/collect/P1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/P1$i;->i:Lcom/google/common/collect/P1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/P1$i;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/P1$i;->c:I

    invoke-virtual {p0}, Lcom/google/common/collect/P1$i;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/P1$i;->g:Lcom/google/common/collect/P1$J;

    invoke-virtual {p0}, Lcom/google/common/collect/P1$i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/P1$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/common/collect/P1$i;->b:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/P1$i;->i:Lcom/google/common/collect/P1;

    iget-object v1, v1, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/P1$i;->b:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/P1$i;->d:Lcom/google/common/collect/P1$o;

    iget v0, v0, Lcom/google/common/collect/P1$o;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->d:Lcom/google/common/collect/P1$o;

    iget-object v0, v0, Lcom/google/common/collect/P1$o;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/P1$i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/P1$i;->c:I

    invoke-virtual {p0}, Lcom/google/common/collect/P1$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method public b(Lcom/google/common/collect/P1$j;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/P1$j;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/P1$i;->i:Lcom/google/common/collect/P1;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/P1;->g(Lcom/google/common/collect/P1$j;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/common/collect/P1$J;

    iget-object v2, p0, Lcom/google/common/collect/P1$i;->i:Lcom/google/common/collect/P1;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/P1$J;-><init>(Lcom/google/common/collect/P1;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/P1$i;->g:Lcom/google/common/collect/P1$J;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/common/collect/P1$i;->d:Lcom/google/common/collect/P1$o;

    invoke-virtual {p1}, Lcom/google/common/collect/P1$o;->C()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/P1$i;->d:Lcom/google/common/collect/P1$o;

    invoke-virtual {p1}, Lcom/google/common/collect/P1$o;->C()V

    const/4 p1, 0x0

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/P1$i;->d:Lcom/google/common/collect/P1$o;

    invoke-virtual {v0}, Lcom/google/common/collect/P1$o;->C()V

    throw p1
.end method

.method public d()Lcom/google/common/collect/P1$J;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/P1<",
            "TK;TV;TE;TS;>.J;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->g:Lcom/google/common/collect/P1$J;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/P1$i;->h:Lcom/google/common/collect/P1$J;

    invoke-virtual {p0}, Lcom/google/common/collect/P1$i;->a()V

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->h:Lcom/google/common/collect/P1$J;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->f:Lcom/google/common/collect/P1$j;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/P1$j;->getNext()Lcom/google/common/collect/P1$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/P1$i;->f:Lcom/google/common/collect/P1$j;

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->f:Lcom/google/common/collect/P1$j;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1$i;->b(Lcom/google/common/collect/P1$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/P1$i;->f:Lcom/google/common/collect/P1$j;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/common/collect/P1$i;->c:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/P1$i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/P1$i;->c:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/P1$j;

    iput-object v0, p0, Lcom/google/common/collect/P1$i;->f:Lcom/google/common/collect/P1$j;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1$i;->b(Lcom/google/common/collect/P1$j;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->g:Lcom/google/common/collect/P1$J;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->h:Lcom/google/common/collect/P1$J;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/B;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/P1$i;->i:Lcom/google/common/collect/P1;

    iget-object v1, p0, Lcom/google/common/collect/P1$i;->h:Lcom/google/common/collect/P1$J;

    invoke-virtual {v1}, Lcom/google/common/collect/P1$J;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/P1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/P1$i;->h:Lcom/google/common/collect/P1$J;

    return-void
.end method
