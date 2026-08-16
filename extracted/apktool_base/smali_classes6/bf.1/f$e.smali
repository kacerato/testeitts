.class public final Lbf/f$e;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lbf/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lbf/f$b<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:J = 0xf5f291fe2c1030bL


# instance fields
.field public final b:I

.field public c:I

.field public volatile d:Lbf/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/f$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lbf/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/f$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v0, "maxSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lbf/f$e;->b:I

    new-instance p1, Lbf/f$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lbf/f$a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lbf/f$e;->e:Lbf/f$a;

    iput-object p1, p0, Lbf/f$e;->d:Lbf/f$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lbf/f$e;->d:Lbf/f$a;

    iget-object v1, v0, Lbf/f$a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    new-instance v1, Lbf/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbf/f$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v1, p0, Lbf/f$e;->d:Lbf/f$a;

    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lbf/f$a;

    invoke-direct {v0, p1}, Lbf/f$a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lbf/f$e;->e:Lbf/f$a;

    iput-object v0, p0, Lbf/f$e;->e:Lbf/f$a;

    iget v1, p0, Lbf/f$e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbf/f$e;->c:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbf/f$e;->e()V

    return-void
.end method

.method public b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lbf/f$e;->d:Lbf/f$a;

    invoke-virtual {p0}, Lbf/f$e;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_3

    aput-object v2, p1, v3

    goto :goto_1

    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf/f$a;

    iget-object v4, v0, Lbf/f$a;->b:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lbf/f$a;

    invoke-direct {v0, p1}, Lbf/f$a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lbf/f$e;->e:Lbf/f$a;

    iput-object v0, p0, Lbf/f$e;->e:Lbf/f$a;

    iget v1, p0, Lbf/f$e;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lbf/f$e;->c:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbf/f$e;->a()V

    iput-boolean v2, p0, Lbf/f$e;->f:Z

    return-void
.end method

.method public d(Lbf/f$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/f$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lbf/f$c;->b:LBe/I;

    iget-object v1, p1, Lbf/f$c;->d:Ljava/lang/Object;

    check-cast v1, Lbf/f$a;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbf/f$e;->d:Lbf/f$a;

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    iget-boolean v4, p1, Lbf/f$c;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iput-object v5, p1, Lbf/f$c;->d:Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf/f$a;

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iput-object v1, p1, Lbf/f$c;->d:Ljava/lang/Object;

    neg-int v3, v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_5
    iget-object v1, v4, Lbf/f$a;->b:Ljava/lang/Object;

    iget-boolean v6, p0, Lbf/f$e;->f:Z

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {v1}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, LBe/I;->a()V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lio/reactivex/internal/util/p;->j(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    :goto_1
    iput-object v5, p1, Lbf/f$c;->d:Ljava/lang/Object;

    iput-boolean v2, p1, Lbf/f$c;->e:Z

    return-void

    :cond_7
    invoke-interface {v0, v1}, LBe/I;->h(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lbf/f$e;->c:I

    iget v1, p0, Lbf/f$e;->b:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbf/f$e;->c:I

    iget-object v0, p0, Lbf/f$e;->d:Lbf/f$a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf/f$a;

    iput-object v0, p0, Lbf/f$e;->d:Lbf/f$a;

    :cond_0
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lbf/f$e;->d:Lbf/f$a;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/f$a;

    if-nez v3, :cond_3

    iget-object v0, v0, Lbf/f$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    iget-object v0, v2, Lbf/f$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_3
    move-object v2, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lbf/f$e;->d:Lbf/f$a;

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbf/f$a;

    if-nez v2, :cond_1

    iget-object v0, v0, Lbf/f$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
