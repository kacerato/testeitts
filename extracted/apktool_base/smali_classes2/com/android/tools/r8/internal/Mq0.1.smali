.class public interface abstract Lcom/android/tools/r8/internal/Mq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/C40;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/r8/internal/Mq0<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/C40<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract E()Lcom/android/tools/r8/internal/Mq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public a(Lcom/android/tools/r8/internal/Mq0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/VM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VM0;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sj;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Kq0;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/tools/r8/internal/Ff0<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Lcom/android/tools/r8/internal/Ff0<",
            "Lcom/android/tools/r8/graph/A2;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/VM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VM0;-><init>()V

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/uf;

    invoke-direct {v2, p2, p3}, Lcom/android/tools/r8/internal/uf;-><init>(Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)V

    .line 4
    invoke-interface {v1, v0, p1, v2}, Lcom/android/tools/r8/internal/Kq0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/tools/r8/internal/pf;",
            ")I"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/Mq0;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/mA;Lcom/android/tools/r8/internal/Ff0;)V
    .locals 3

    .line 7
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/WM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/WM0;-><init>()V

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/tA;

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/internal/tA;-><init>(Lcom/android/tools/r8/internal/nA;Lcom/android/tools/r8/internal/Ff0;)V

    invoke-interface {v1, v0, v2}, Lcom/android/tools/r8/internal/Lq0;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/nA;)V
    .locals 2

    .line 6
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/WM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/WM0;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/Bj;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/nA;Lcom/android/tools/r8/internal/Lq0;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/rA;)V
    .locals 3

    .line 9
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->E()Lcom/android/tools/r8/internal/Mq0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/Mq0;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v1

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/tools/r8/internal/C40;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/Mq0;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/Mq0;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public abstract m()Lcom/android/tools/r8/internal/Nq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/Nq0<",
            "TT;>;"
        }
    .end annotation
.end method
