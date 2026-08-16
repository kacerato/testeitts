.class public final Lcom/android/tools/r8/dex/h0;
.super Lcom/android/tools/r8/dex/w;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/internal/qo0;

.field public final f:Ljava/util/LinkedHashSet;

.field public final g:Ljava/util/LinkedHashSet;

.field public final h:Ljava/util/LinkedHashSet;

.field public final i:Ljava/util/LinkedHashSet;

.field public final j:Ljava/util/LinkedHashSet;

.field public final k:Lcom/android/tools/r8/internal/xS;

.field public final l:Ljava/util/LinkedHashSet;

.field public final m:Ljava/util/LinkedHashSet;

.field public final n:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/J;Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/dex/t0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/dex/w;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/J;)V

    iput-object p3, p0, Lcom/android/tools/r8/dex/h0;->e:Lcom/android/tools/r8/internal/qo0;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p3, p2, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/f20;

    iget-object p3, p3, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    iget p3, p3, Lcom/android/tools/r8/internal/k20;->l:I

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->f:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p3, p2, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/f20;

    iget-object p3, p3, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    iget p3, p3, Lcom/android/tools/r8/internal/k20;->l:I

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->g:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p3, p2, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/f20;

    iget-object p3, p3, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    iget p3, p3, Lcom/android/tools/r8/internal/k20;->l:I

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->h:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p3, p2, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/f20;

    iget-object p3, p3, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    iget p3, p3, Lcom/android/tools/r8/internal/k20;->l:I

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->i:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p3, p2, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/bd0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget p3, p3, Lcom/android/tools/r8/internal/gd0;->l:I

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->j:Ljava/util/LinkedHashSet;

    iget-object p1, p2, Lcom/android/tools/r8/dex/J;->a:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bd0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget p1, p1, Lcom/android/tools/r8/internal/gd0;->l:I

    sget-object p3, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance p3, Lcom/android/tools/r8/internal/xS;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/xS;-><init>(I)V

    iput-object p3, p0, Lcom/android/tools/r8/dex/h0;->k:Lcom/android/tools/r8/internal/xS;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p3, p2, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/f20;

    iget-object p3, p3, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    iget p3, p3, Lcom/android/tools/r8/internal/k20;->l:I

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->l:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p3, p2, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/bd0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget p3, p3, Lcom/android/tools/r8/internal/gd0;->l:I

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->m:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p2, p2, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/f20;

    iget-object p2, p2, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    iget p2, p2, Lcom/android/tools/r8/internal/k20;->l:I

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/h0;->n:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/dex/h0;->a(Lcom/android/tools/r8/dex/t0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/t0;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 34
    iget-object p0, p0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 35
    new-instance v0, Lu/t0;

    invoke-direct {v0, p1}, Lu/t0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->g:Ljava/util/LinkedHashSet;

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    .line 30
    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/dex/g0;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/g0;Ljava/util/Map;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/vo0;)V
    .locals 6

    .line 16
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    .line 17
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    :goto_0
    move-object v4, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_2

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 22
    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 23
    iget-object p2, p1, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object p2, p2, Lcom/android/tools/r8/dex/h0;->k:Lcom/android/tools/r8/internal/xS;

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v0

    .line 25
    iget-object p2, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    move-object p4, v0

    check-cast p4, Lcom/android/tools/r8/graph/i0;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-object v2, p2, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/g0;Ljava/util/Map;Lcom/android/tools/r8/internal/to0;)V
    .locals 1

    .line 1
    iget-object p3, p3, Lcom/android/tools/r8/internal/to0;->b:Lcom/android/tools/r8/graph/M2;

    .line 2
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/g0;->a(Lcom/android/tools/r8/graph/H2;)Z

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    .line 5
    new-instance p3, Lu/s0;

    invoke-direct {p3, p0, p1}, Lu/s0;-><init>(Lcom/android/tools/r8/dex/h0;Lcom/android/tools/r8/dex/g0;)V

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/t0;)V
    .locals 5

    .line 6
    new-instance v0, Lu/u0;

    invoke-direct {v0, p1}, Lu/u0;-><init>(Lcom/android/tools/r8/dex/t0;)V

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    .line 10
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/TU;->a(Lcom/android/tools/r8/internal/e6;I)Ljava/util/IdentityHashMap;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/RR;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 12
    new-instance v1, Lcom/android/tools/r8/dex/g0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/dex/g0;-><init>(Lcom/android/tools/r8/dex/h0;)V

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/dex/h0;->e:Lcom/android/tools/r8/internal/qo0;

    new-instance v3, Lu/v0;

    invoke-direct {v3, p0, v1, p1}, Lu/v0;-><init>(Lcom/android/tools/r8/dex/h0;Lcom/android/tools/r8/dex/g0;Ljava/util/Map;)V

    new-instance v4, Lu/w0;

    invoke-direct {v4, p0, v1, p1, v0}, Lu/w0;-><init>(Lcom/android/tools/r8/dex/h0;Lcom/android/tools/r8/dex/g0;Ljava/util/Map;Lcom/android/tools/r8/internal/RR;)V

    invoke-interface {v2, v3, v4}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final b()Ljava/util/Collection;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->f:Ljava/util/LinkedHashSet;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/dex/g0;Ljava/util/Map;Lcom/android/tools/r8/internal/to0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/dex/h0;->a(Lcom/android/tools/r8/dex/g0;Ljava/util/Map;Lcom/android/tools/r8/internal/to0;)V

    return-void
.end method

.method public final c()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->h:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final d()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->i:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->j:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->k:Lcom/android/tools/r8/internal/xS;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/dex/w;->a(Lcom/android/tools/r8/internal/Yd0;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Vn;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final g()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->l:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final h()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->m:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final i()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/h0;->n:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
