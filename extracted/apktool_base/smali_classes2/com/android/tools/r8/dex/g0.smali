.class public final Lcom/android/tools/r8/dex/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/dex/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/h0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/r0;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u0;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/C2;->s:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/z5;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D0;->m0()Lcom/android/tools/r8/graph/f1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 4

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->j:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/h0;->n:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->k:Ljava/util/IdentityHashMap;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/s0;

    if-eqz v0, :cond_2

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/h0;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lu/p0;

    invoke-direct {v1, p0}, Lu/p0;-><init>(Lcom/android/tools/r8/dex/g0;)V

    new-instance v2, Lu/q0;

    invoke-direct {v2, p0}, Lu/q0;-><init>(Lcom/android/tools/r8/dex/g0;)V

    new-instance v3, Lu/r0;

    invoke-direct {v3, p0}, Lu/r0;-><init>(Lcom/android/tools/r8/dex/g0;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/s0;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->l:Ljava/util/IdentityHashMap;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/f1;

    if-eqz p1, :cond_3

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->l:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Z
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->n:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/dex/g0;->a:Lcom/android/tools/r8/dex/h0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/h0;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method
