.class public final Lcom/android/tools/r8/internal/fj;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/internal/dH;

.field public final l:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/dH;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/fj;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/fj;->k:Lcom/android/tools/r8/internal/dH;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fj;->l:Lcom/android/tools/r8/internal/dH;

    return-void
.end method


# virtual methods
.method public final M()Lcom/android/tools/r8/internal/fj;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 0

    .line 23
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 22
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/An;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/An;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 0

    .line 26
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 0

    .line 25
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/SG;)Z
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/fj;->k:Lcom/android/tools/r8/internal/dH;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aH;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/WG;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    .line 7
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    const/4 v0, 0x0

    move v2, v0

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/RG;

    .line 9
    sget-boolean v5, Lcom/android/tools/r8/internal/fj;->m:Z

    if-nez v5, :cond_2

    invoke-interface {v3}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_1
    invoke-interface {v3}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/HG;->remove(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/fj;->l:Lcom/android/tools/r8/internal/dH;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aH;

    .line 13
    new-instance v3, Lcom/android/tools/r8/internal/WG;

    .line 14
    iget-object v1, v1, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    .line 15
    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 16
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/RG;

    .line 17
    sget-boolean v5, Lcom/android/tools/r8/internal/fj;->m:Z

    if-nez v5, :cond_5

    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/tools/r8/internal/HG;->a(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_5
    :goto_3
    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j0;

    invoke-interface {p1, v5, v6}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j0;

    if-eqz v5, :cond_7

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v5, v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v0

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v4

    :goto_5
    or-int/2addr v2, v1

    goto :goto_2

    :cond_8
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/fj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fj;->k:Lcom/android/tools/r8/internal/dH;

    iget-object v2, p1, Lcom/android/tools/r8/internal/fj;->k:Lcom/android/tools/r8/internal/dH;

    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fj;->l:Lcom/android/tools/r8/internal/dH;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fj;->l:Lcom/android/tools/r8/internal/dH;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fj;->k:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    const-string v1, ", starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fj;->l:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
