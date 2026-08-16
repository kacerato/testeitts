.class public final Lcom/android/tools/r8/internal/nm0;
.super Lcom/android/tools/r8/graph/m0;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/y;

.field public final f:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic g:Lcom/android/tools/r8/internal/om0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/om0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/nm0;->g:Lcom/android/tools/r8/internal/om0;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/graph/m0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H0;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nm0;->f:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    if-nez p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 7
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/nm0;->h:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    if-ne p1, v0, :cond_1

    return-object p2

    .line 5
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 26
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/nm0;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 28
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 31
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-interface {v1, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H5;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->g:Lcom/android/tools/r8/internal/om0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/om0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->g:Lcom/android/tools/r8/internal/om0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/om0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/Fn1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Fn1;-><init>(Lcom/android/tools/r8/internal/nm0;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->g:Lcom/android/tools/r8/internal/om0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/om0;->b:Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/internal/En1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/En1;-><init>(Lcom/android/tools/r8/internal/nm0;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/graph/G0;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/nm0;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 7
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/nm0;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    .line 6
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 9
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 18
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/nm0;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 25
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/nm0;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/nm0;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/nm0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 8
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nm0;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method
