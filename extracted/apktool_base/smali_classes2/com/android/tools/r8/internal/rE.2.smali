.class public Lcom/android/tools/r8/internal/rE;
.super Lcom/android/tools/r8/internal/hw;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ww;
.implements Lcom/android/tools/r8/internal/WD;


# static fields
.field public static final synthetic m:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Z)V
    .locals 0

    filled-new-array {p2, p3}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/tools/r8/internal/hw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    if-nez p4, :cond_1

    sget-boolean p2, Lcom/android/tools/r8/internal/rE;->m:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    sget-object p4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Kw0;)V

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Kw0;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final J1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final T()Lcom/android/tools/r8/internal/ww;
    .locals 0

    return-object p0
.end method

.method public final X()Lcom/android/tools/r8/internal/WD;
    .locals 0

    return-object p0
.end method

.method public final Z0()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 23
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/android/tools/r8/ir/optimize/D;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/ir/optimize/D;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-object p2

    .line 27
    :cond_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 34
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/X;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/internal/hw;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 9
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :pswitch_0
    new-instance v3, Lcom/android/tools/r8/internal/tq;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/tq;-><init>(IILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 14
    :pswitch_1
    new-instance v3, Lcom/android/tools/r8/internal/nq;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/nq;-><init>(IILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 15
    :pswitch_2
    new-instance v3, Lcom/android/tools/r8/internal/sq;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/sq;-><init>(IILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 16
    :pswitch_3
    new-instance v3, Lcom/android/tools/r8/internal/qq;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/qq;-><init>(IILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 17
    :pswitch_4
    new-instance v3, Lcom/android/tools/r8/internal/pq;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/pq;-><init>(IILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 18
    :pswitch_5
    new-instance v3, Lcom/android/tools/r8/internal/oq;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/oq;-><init>(IILcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 19
    :pswitch_6
    new-instance v3, Lcom/android/tools/r8/internal/rq;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/rq;-><init>(IILcom/android/tools/r8/graph/l1;)V

    .line 20
    :goto_0
    invoke-virtual {p1, p0, v3}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    const/16 v2, 0xb5

    .line 43
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/tools/r8/internal/U9;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z
    .locals 0

    .line 35
    invoke-static {p0, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;II)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z
    .locals 1

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 29
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1, p2, p4, v2}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/yE;Lcom/android/tools/r8/graph/D3;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p2

    .line 7
    sget-boolean p4, Lcom/android/tools/r8/internal/rE;->m:Z

    if-nez p4, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "NoSuchFieldError (resolution failure) should be caught."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    .line 9
    check-cast p4, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 10
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_3

    return v2

    .line 11
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 12
    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 13
    :cond_4
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->u2()Lcom/android/tools/r8/internal/jw;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/rE;
    .locals 0

    return-object p0
.end method

.method public n()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/rE;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "InstancePut instructions define no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public final t2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; field: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method
