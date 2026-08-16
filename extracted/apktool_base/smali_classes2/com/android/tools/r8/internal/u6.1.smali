.class public abstract Lcom/android/tools/r8/internal/u6;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final C()Lcom/android/tools/r8/internal/u6;
    .locals 0

    return-object p0
.end method

.method public abstract a(DD)D
.end method

.method public abstract a(FF)F
.end method

.method public abstract a(II)I
.end method

.method public abstract a(JJ)J
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 18
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Je0;)Z
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 6
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 7
    invoke-interface {p1, v0, v2}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 9
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 10
    invoke-interface {p1, v2, v3}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 12
    iget v4, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 13
    invoke-interface {p1, v3, v4}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v2, v3, :cond_2

    :cond_0
    const/16 v3, 0xf

    if-gt v0, v3, :cond_2

    if-gt v2, v3, :cond_2

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    instance-of p1, p0, Lcom/android/tools/r8/internal/gY;

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    iget-wide v0, p1, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p2()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->w2()I

    move-result v0

    return v0
.end method

.method public q2()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->w2()I

    move-result v0

    return v0
.end method

.method public final s1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u2()Lcom/android/tools/r8/internal/T10;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    return-object v0
.end method

.method public abstract v2()Z
.end method

.method public w2()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->x2()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xf

    return v0

    :cond_1
    return v1
.end method

.method public final x2()V
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/u6;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public y2()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method
