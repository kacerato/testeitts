.class public final Lcom/android/tools/r8/internal/o00;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/shaking/y1;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/o00;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/o00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/o00;->c:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/o00;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Pn1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Pn1;-><init>(Lcom/android/tools/r8/internal/o00;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/o00;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/o00;->c:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/o00;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/tools/r8/graph/H3$d;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/o00;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/t1;->f(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/h1;

    iget-object v5, p0, Lcom/android/tools/r8/internal/o00;->c:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {v5, v3, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/h1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/F1;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->A0()Lcom/android/tools/r8/graph/H3$d;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/o00;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v6}, Lcom/android/tools/r8/graph/H3$d;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/tools/r8/internal/o00;->d:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v7, v6, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/shaking/t1;->f(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/o00;->e:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    iget-object v5, p0, Lcom/android/tools/r8/internal/o00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object v3

    new-instance v5, Lcom/android/tools/r8/internal/Qn1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Qn1;-><init>()V

    new-instance v6, Lcom/android/tools/r8/internal/rK;

    invoke-direct {v6, v3, v5}, Lcom/android/tools/r8/internal/rK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)V

    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    move v1, v4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/tools/r8/internal/o00;->e:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoKeepRules"

    return-object v0
.end method
