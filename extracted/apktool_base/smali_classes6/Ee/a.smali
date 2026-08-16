.class public abstract LEe/a;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    return-void
.end method


# virtual methods
.method public O8()LBe/l;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LEe/a;->P8(I)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public P8(I)LBe/l;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LEe/a;->Q8(ILFe/g;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public Q8(ILFe/g;)LBe/l;
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
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    invoke-virtual {p0, p2}, LEe/a;->S8(LFe/g;)V

    invoke-static {p0}, LYe/a;->T(LEe/a;)LEe/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LLe/k;

    invoke-direct {v0, p0, p1, p2}, LLe/k;-><init>(LEe/a;ILFe/g;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R8()LDe/c;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/g;

    invoke-direct {v0}, Lio/reactivex/internal/util/g;-><init>()V

    invoke-virtual {p0, v0}, LEe/a;->S8(LFe/g;)V

    iget-object v0, v0, Lio/reactivex/internal/util/g;->b:LDe/c;

    return-object v0
.end method

.method public abstract S8(LFe/g;)V
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

.method public T8()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

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
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/a1;

    invoke-direct {v0, p0}, LLe/a1;-><init>(LEe/a;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final U8(I)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, LEe/a;->W8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V8(IJLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

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
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LEe/a;->W8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

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
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/a1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LLe/a1;-><init>(LEe/a;IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X8(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

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
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, LEe/a;->W8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y8(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

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
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LEe/a;->W8(IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method
