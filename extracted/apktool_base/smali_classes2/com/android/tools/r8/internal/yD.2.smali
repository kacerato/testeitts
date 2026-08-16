.class public final Lcom/android/tools/r8/internal/yD;
.super Lcom/android/tools/r8/internal/Ej;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ej;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yD;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/yD;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yD;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/yD;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/yD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yD;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 7
    iget-object v3, p0, Lcom/android/tools/r8/internal/yD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/yD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, p1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_6

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/yD;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_8

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/yD;->c:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NJ;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/yD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yD;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->p()Ljava/util/Set;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yD;->a(Ljava/util/Set;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/hw;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/yD;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_0

    .line 17
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/yD;->d:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expected holder of field type to be a class type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Hz1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Hz1;-><init>(Lcom/android/tools/r8/internal/yD;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
