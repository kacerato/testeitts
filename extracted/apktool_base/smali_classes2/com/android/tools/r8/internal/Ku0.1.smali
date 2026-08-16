.class public final Lcom/android/tools/r8/internal/Ku0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Gu0;

.field public final b:Lcom/android/tools/r8/internal/Gu0;

.field public final c:Lcom/android/tools/r8/internal/Gu0;

.field public final d:Lcom/android/tools/r8/internal/Gu0;

.field public final e:Lcom/android/tools/r8/graph/y;

.field public final f:Lcom/android/tools/r8/internal/fB;

.field public g:Ljava/util/HashMap;

.field public final h:Ljava/util/IdentityHashMap;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ku0;->h:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ku0;->i:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ku0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/Gu0;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/Gu0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ku0;->a:Lcom/android/tools/r8/internal/Gu0;

    new-instance p2, Lcom/android/tools/r8/internal/Gu0;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/Gu0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ku0;->b:Lcom/android/tools/r8/internal/Gu0;

    new-instance p2, Lcom/android/tools/r8/internal/Gu0;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/Gu0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ku0;->c:Lcom/android/tools/r8/internal/Gu0;

    new-instance p2, Lcom/android/tools/r8/internal/Gu0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Gu0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ku0;->d:Lcom/android/tools/r8/internal/Gu0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 99
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/Ku0;->j:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Ku0;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ju0;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Set;)Lcom/android/tools/r8/graph/M2;
    .locals 5

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/internal/Ku0;->j:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 23
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 26
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 28
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    sget-boolean p1, Lcom/android/tools/r8/internal/Ku0;->j:Z

    if-nez p1, :cond_5

    .line 32
    instance-of p1, v1, Lcom/android/tools/r8/internal/Zd0;

    if-nez p1, :cond_4

    goto :goto_2

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 35
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/If;

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/internal/uL0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/uL0;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 37
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected join "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of types: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gu0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Gu0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gu0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->c:Lcom/android/tools/r8/internal/Gu0;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->d:Lcom/android/tools/r8/internal/Gu0;

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->K0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->b:Lcom/android/tools/r8/internal/Gu0;

    return-object p1

    .line 9
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/Ku0;->j:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->G0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->H0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->R0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->a:Lcom/android/tools/r8/internal/Gu0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/Ju0;)Lcom/android/tools/r8/internal/Ju0;
    .locals 3

    if-ne p1, p2, :cond_0

    return-object p1

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 39
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 40
    instance-of v2, p1, Lcom/android/tools/r8/internal/Gu0;

    if-eqz v2, :cond_1

    instance-of p2, p2, Lcom/android/tools/r8/internal/Gu0;

    if-eqz p2, :cond_1

    if-ne v0, v1, :cond_1

    return-object p1

    .line 41
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/Ku0;->j:Z

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_3
    :goto_0
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2, p2, p1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ku0;->a(Ljava/util/Set;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gu0;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 10

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ku0;->i:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ku0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->o()Lcom/android/tools/r8/internal/AE;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    move-object v6, v5

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 50
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 52
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    .line 53
    :cond_1
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ku0;->f:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    if-gez v3, :cond_3

    .line 54
    iget-object v8, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    new-instance v8, Lcom/android/tools/r8/internal/Iu0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Lcom/android/tools/r8/internal/Iu0;-><init>(Lcom/android/tools/r8/internal/k3;Lcom/android/tools/r8/graph/M2;)V

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gu0;

    move-result-object v8

    goto :goto_2

    .line 57
    :cond_3
    iget-object v7, v7, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v7, v7, v3

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gu0;

    move-result-object v8

    .line 58
    :goto_2
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 60
    iget-object v9, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {v7, v1}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v6, :cond_e

    .line 62
    sget-boolean v3, Lcom/android/tools/r8/internal/Ku0;->j:Z

    if-nez v3, :cond_7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_7
    :goto_4
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 64
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 65
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->h:Ljava/util/IdentityHashMap;

    .line 66
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/vL0;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/vL0;-><init>()V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Hu0;

    .line 67
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_6

    .line 69
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 70
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 71
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d1()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 72
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v8

    if-eqz v8, :cond_b

    if-nez v3, :cond_a

    .line 73
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_a
    :goto_5
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v3

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v8

    if-ne v3, v8, :cond_b

    .line 75
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_b
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v3, p0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 77
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gu0;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v7, v1}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 79
    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    goto/16 :goto_3

    :cond_d
    move-object v6, v5

    goto/16 :goto_3

    .line 80
    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    sget-boolean v3, Lcom/android/tools/r8/internal/Ku0;->j:Z

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_10
    :goto_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ju0;

    if-nez v3, :cond_11

    move-object v3, v5

    goto :goto_9

    .line 85
    :cond_11
    invoke-interface {v3}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 86
    :goto_9
    invoke-interface {v2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 87
    invoke-interface {v2}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7, p0}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    goto :goto_a

    .line 88
    :cond_12
    iget-object v6, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Ku0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7, p0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    :goto_a
    if-eq v3, v6, :cond_e

    .line 89
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gu0;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_7

    .line 91
    :cond_13
    iput-boolean v4, p0, Lcom/android/tools/r8/internal/Ku0;->i:Z

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_14
    :goto_b
    if-ge v4, v1, :cond_18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/qh;

    .line 93
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v6, v5

    :cond_15
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/f60;

    if-nez v6, :cond_16

    .line 94
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Ju0;

    goto :goto_c

    .line 95
    :cond_16
    invoke-interface {v6}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Ju0;

    invoke-interface {v7}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-eq v8, v7, :cond_15

    move-object v6, v5

    :cond_17
    if-eqz v6, :cond_14

    .line 96
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_18
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;
    .locals 4

    instance-of v0, p1, Lcom/android/tools/r8/internal/hx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/hx;

    iget-object p1, p1, Lcom/android/tools/r8/internal/hx;->p:Lcom/android/tools/r8/internal/f60;

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/ko0;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/ko0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    return-object p1

    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/Fu0;->a:[I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->d:Lcom/android/tools/r8/internal/Gu0;

    return-object p1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->c:Lcom/android/tools/r8/internal/Gu0;

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->b:Lcom/android/tools/r8/internal/Gu0;

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ku0;->a:Lcom/android/tools/r8/internal/Gu0;

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ku0;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ju0;

    return-object p1
.end method
