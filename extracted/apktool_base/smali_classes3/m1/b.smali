.class public final Lm1/b;
.super Lm1/d;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/p3;

.field public final b:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/measurement/internal/p3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lm1/d;-><init>([B)V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lm1/b;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object p1

    iput-object p1, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/b5;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lm1/b;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m7;->p0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lm1/b;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->M()Lcom/google/android/gms/measurement/internal/E0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/E0;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 8

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/b5;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lm1/b;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->M()Lcom/google/android/gms/measurement/internal/E0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/E0;->i(Ljava/lang/String;J)V

    return-void
.end method

.method public final j(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/b5;->M(Ljava/lang/String;)I

    const/16 p1, 0x19

    return p1
.end method

.method public final k(Lcom/google/android/gms/measurement/internal/d4;)V
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/b5;->J(Lcom/google/android/gms/measurement/internal/d4;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/measurement/internal/e4;)V
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/b5;->L(Lcom/google/android/gms/measurement/internal/e4;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/measurement/internal/e4;)V
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/b5;->K(Lcom/google/android/gms/measurement/internal/e4;)V

    return-void
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/b5;->N(Landroid/os/Bundle;)V

    return-void
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b5;->i0()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b5;->l0()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b5;->m0()Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b5;->k0()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b5;->j0()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/b5;->D(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lm1/b;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/b5;->P(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/b5;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final s(Z)Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/b5;->C(Z)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final t()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->i0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->l0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->k0()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lm1/b;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b5;->m0()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
