.class public final Lcom/android/tools/r8/internal/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/La0;

.field public final c:Lcom/android/tools/r8/internal/W60;

.field public final synthetic d:Lcom/android/tools/r8/internal/bz;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/bz;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/W60;Ljava/util/Set;Lcom/android/tools/r8/shaking/A;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/az;->d:Lcom/android/tools/r8/internal/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/az;->a:Lcom/android/tools/r8/graph/y;

    iget-object p1, p2, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/az;->c:Lcom/android/tools/r8/internal/W60;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/az;->c:Lcom/android/tools/r8/internal/W60;

    new-instance v1, Lcom/android/tools/r8/internal/t51;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/t51;-><init>(Lcom/android/tools/r8/internal/az;)V

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/W60;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/Y5;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/Y5;->g(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/az;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/u51;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/u51;-><init>(Lcom/android/tools/r8/internal/az;)V

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/az;->d:Lcom/android/tools/r8/internal/bz;

    iget-object v1, v1, Lcom/android/tools/r8/internal/bz;->e:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/az;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v1, p0, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/az;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->A:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p1

    return p1
.end method
