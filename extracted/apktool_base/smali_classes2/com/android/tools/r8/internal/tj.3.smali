.class public final Lcom/android/tools/r8/internal/tj;
.super Lcom/android/tools/r8/internal/Pf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Pf;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/f60;)Lcom/android/tools/r8/internal/Vf;
    .locals 0

    .line 40
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    .line 41
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Vf;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    .line 7
    sget v1, Lcom/android/tools/r8/internal/Wf;->d:I

    .line 8
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 10
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/Wf;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Wf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/NB;)V

    return-object v1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_8

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 16
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_5
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1

    .line 22
    :cond_6
    iget-wide v1, p1, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 23
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pf;->d:Lcom/android/tools/r8/internal/bX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pf;->b:Lcom/android/tools/r8/graph/H5;

    const/4 v2, 0x1

    .line 27
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/bX;->a(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/internal/aX;

    move-result-object p1

    return-object p1

    .line 29
    :cond_8
    :goto_1
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 31
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->u()Lcom/android/tools/r8/internal/t2;

    move-result-object p1

    .line 32
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object p1

    .line 36
    sget-boolean v1, Lcom/android/tools/r8/internal/Qf;->d:Z

    .line 37
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 38
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 39
    :cond_a
    new-instance v1, Lcom/android/tools/r8/internal/Qf;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Qf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V

    return-object v1
.end method
