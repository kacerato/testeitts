.class public abstract LVe/a;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    return-void
.end method


# virtual methods
.method public j8()LBe/B;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LVe/a;->k8(I)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public k8(I)LBe/B;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LVe/a;->l8(ILFe/g;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public l8(ILFe/g;)LBe/B;
    .locals 1
    .param p2    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    invoke-virtual {p0, p2}, LVe/a;->n8(LFe/g;)V

    invoke-static {p0}, LYe/a;->U(LVe/a;)LVe/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LOe/k;

    invoke-direct {v0, p0, p1, p2}, LOe/k;-><init>(LVe/a;ILFe/g;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m8()LDe/c;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/g;

    invoke-direct {v0}, Lio/reactivex/internal/util/g;-><init>()V

    invoke-virtual {p0, v0}, LVe/a;->n8(LFe/g;)V

    iget-object v0, v0, Lio/reactivex/internal/util/g;->b:LDe/c;

    return-object v0
.end method

.method public abstract n8(LFe/g;)V
    .param p1    # LFe/g;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public o8()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/O0;

    invoke-direct {v0, p0}, LOe/O0;-><init>(LVe/a;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final p8(I)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, LVe/a;->r8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final q8(IJLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LVe/a;->r8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final r8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/O0;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LOe/O0;-><init>(LVe/a;IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s8(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, LVe/a;->r8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t8(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LVe/a;->r8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method
