.class public final Lcom/android/tools/r8/internal/XJ;
.super Lcom/android/tools/r8/internal/NJ;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final l:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/android/tools/r8/internal/NJ;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/internal/NJ;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 1

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "InvokeNewArray (non-empty) not supported when compiling to dex files."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 1

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/NJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xc5

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 3

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/ta;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/ta;-><init>(ILcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 2

    .line 19
    iget-object p3, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    .line 20
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 21
    sget-boolean p1, Lcom/android/tools/r8/internal/XJ;->m:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The array\'s contents must be single-word"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XJ;->z2()Z

    move-result p1

    return p1

    .line 23
    :cond_3
    sget-boolean p4, Lcom/android/tools/r8/internal/XJ;->m:Z

    if-nez p4, :cond_5

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne p3, v0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XJ;->z2()Z

    move-result p1

    return p1

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    return v1

    :cond_7
    if-nez p4, :cond_9

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p4

    .line 29
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 30
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    .line 31
    :cond_a
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-static {p3, p2, p4, p1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XJ;->z2()Z

    move-result p1

    return p1

    :cond_c
    :goto_4
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-boolean p2, Lcom/android/tools/r8/internal/XJ;->m:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/XJ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/internal/XJ;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->g0()Lcom/android/tools/r8/internal/XJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g0()Lcom/android/tools/r8/internal/XJ;
    .locals 0

    return-object p0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public final v2()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final x2()Ljava/lang/String;
    .locals 1

    const-string v0, "MultiNewArray"

    return-object v0
.end method

.method public final z2()Z
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->G()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    return v6

    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-gez v4, :cond_0

    return v6

    :cond_2
    return v2
.end method
