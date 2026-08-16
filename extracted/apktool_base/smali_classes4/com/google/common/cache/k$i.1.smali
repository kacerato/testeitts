.class public abstract Lcom/google/common/cache/k$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
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

.field public d:Lcom/google/common/cache/k$r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public f:Lcom/google/common/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public g:Lcom/google/common/cache/k$L;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k<",
            "TK;TV;>.",
            "L;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public h:Lcom/google/common/cache/k$L;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k<",
            "TK;TV;>.",
            "L;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic i:Lcom/google/common/cache/k;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$i;->i:Lcom/google/common/cache/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/k$i;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/cache/k$i;->c:I

    invoke-virtual {p0}, Lcom/google/common/cache/k$i;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/k$i;->g:Lcom/google/common/cache/k$L;

    invoke-virtual {p0}, Lcom/google/common/cache/k$i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/k$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/common/cache/k$i;->b:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/k$i;->i:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/k$i;->b:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/cache/k$i;->d:Lcom/google/common/cache/k$r;

    iget v0, v0, Lcom/google/common/cache/k$r;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/cache/k$i;->d:Lcom/google/common/cache/k$r;

    iget-object v0, v0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/k$i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/k$i;->c:I

    invoke-virtual {p0}, Lcom/google/common/cache/k$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method public b(Lcom/google/common/cache/p;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$i;->i:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/cache/k$i;->i:Lcom/google/common/cache/k;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/k;->u(Lcom/google/common/cache/p;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/common/cache/k$L;

    iget-object v1, p0, Lcom/google/common/cache/k$i;->i:Lcom/google/common/cache/k;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/cache/k$L;-><init>(Lcom/google/common/cache/k;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/cache/k$i;->g:Lcom/google/common/cache/k$L;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/common/cache/k$i;->d:Lcom/google/common/cache/k$r;

    invoke-virtual {p1}, Lcom/google/common/cache/k$r;->G()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/common/cache/k$i;->d:Lcom/google/common/cache/k$r;

    invoke-virtual {p1}, Lcom/google/common/cache/k$r;->G()V

    const/4 p1, 0x0

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k$i;->d:Lcom/google/common/cache/k$r;

    invoke-virtual {v0}, Lcom/google/common/cache/k$r;->G()V

    throw p1
.end method

.method public d()Lcom/google/common/cache/k$L;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/k<",
            "TK;TV;>.",
            "L;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$i;->g:Lcom/google/common/cache/k$L;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/cache/k$i;->h:Lcom/google/common/cache/k$L;

    invoke-virtual {p0}, Lcom/google/common/cache/k$i;->a()V

    iget-object v0, p0, Lcom/google/common/cache/k$i;->h:Lcom/google/common/cache/k$L;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$i;->f:Lcom/google/common/cache/p;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k$i;->f:Lcom/google/common/cache/p;

    iget-object v0, p0, Lcom/google/common/cache/k$i;->f:Lcom/google/common/cache/p;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k$i;->b(Lcom/google/common/cache/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/k$i;->f:Lcom/google/common/cache/p;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/common/cache/k$i;->c:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/k$i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/k$i;->c:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/p;

    iput-object v0, p0, Lcom/google/common/cache/k$i;->f:Lcom/google/common/cache/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k$i;->b(Lcom/google/common/cache/p;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k$i;->e()Z

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

    iget-object v0, p0, Lcom/google/common/cache/k$i;->g:Lcom/google/common/cache/k$L;

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

    iget-object v0, p0, Lcom/google/common/cache/k$i;->h:Lcom/google/common/cache/k$L;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-object v0, p0, Lcom/google/common/cache/k$i;->i:Lcom/google/common/cache/k;

    iget-object v1, p0, Lcom/google/common/cache/k$i;->h:Lcom/google/common/cache/k$L;

    invoke-virtual {v1}, Lcom/google/common/cache/k$L;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/k$i;->h:Lcom/google/common/cache/k$L;

    return-void
.end method
