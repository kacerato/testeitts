.class public final Lcom/android/tools/r8/ir/optimize/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lcom/android/tools/r8/internal/mS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/mS;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/d0;->a:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;ILcom/android/tools/r8/internal/aY;)Z
    .locals 7

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    .line 29
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 30
    iget v2, p3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 31
    invoke-interface {v0, v1, v2}, Lcom/android/tools/r8/internal/Je0;->a(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/aY;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 33
    iget v3, p3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 34
    invoke-interface {v1, v2, v3}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 35
    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 36
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v4

    if-ge v3, v4, :cond_3

    move v4, v2

    .line 37
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 38
    iget-object v5, v5, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 39
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int v5, p2, v3

    add-int v6, v1, v4

    if-eq v5, v6, :cond_1

    add-int v6, v0, v4

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 5
    iget v3, v0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 6
    invoke-interface {v1, v2, v3}, Lcom/android/tools/r8/internal/Je0;->a(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aY;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 8
    iget v4, v0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 9
    invoke-interface {v2, v3, v4}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    return v3

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/d0;->a:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/aY;

    .line 11
    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    .line 12
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 13
    iget v8, v5, Lcom/android/tools/r8/internal/zE;->g:I

    .line 14
    invoke-interface {v6, v7, v8}, Lcom/android/tools/r8/internal/Je0;->a(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v6

    .line 15
    iget-object v7, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    .line 16
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/aY;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 17
    iget v5, v5, Lcom/android/tools/r8/internal/zE;->g:I

    .line 18
    invoke-interface {v7, v8, v5}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v5

    if-ne v6, v1, :cond_2

    if-ne v5, v2, :cond_2

    return v3

    :cond_2
    if-ne v5, v1, :cond_1

    if-ne v6, v2, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    :cond_3
    add-int/lit8 v5, v2, 0x1

    if-eq v1, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    if-eq v5, v2, :cond_1

    return v3

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/d0;->b:Lcom/android/tools/r8/internal/mS;

    .line 23
    iget v2, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 24
    invoke-interface {v1, v0, v2}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 25
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/d0;->a:Ljava/util/HashSet;

    new-instance v3, Lv/m0;

    invoke-direct {v3, p0, v0, v1}, Lv/m0;-><init>(Lcom/android/tools/r8/ir/optimize/d0;Lcom/android/tools/r8/internal/xw0;I)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/d0;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
