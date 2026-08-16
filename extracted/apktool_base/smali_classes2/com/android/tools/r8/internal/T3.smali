.class public Lcom/android/tools/r8/internal/T3;
.super Lcom/android/tools/r8/internal/J3;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public k:Lcom/android/tools/r8/internal/YV;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    filled-new-array {p2, p3, p4}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/J3;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/T3;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/T3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/T3;-><init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 5
    sget-boolean p0, Lcom/android/tools/r8/internal/T3;->l:Z

    if-nez p0, :cond_3

    if-nez p0, :cond_1

    .line 6
    iget-object p1, v0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Kw0;)V

    :cond_2
    if-nez p0, :cond_3

    .line 8
    iget-object p0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Kw0;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final A()Lcom/android/tools/r8/internal/T3;
    .locals 0

    return-object p0
.end method

.method public final Z0()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 2

    .line 66
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 67
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/android/tools/r8/internal/YW0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/YW0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Lcom/android/tools/r8/ir/optimize/D;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/ir/optimize/D;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-object p2

    .line 72
    :cond_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 10
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
    .locals 6

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 16
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 18
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 20
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 21
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 23
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 24
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 25
    iget-object v3, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 26
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :pswitch_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected imprecise type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :pswitch_1
    new-instance v3, Lcom/android/tools/r8/internal/rn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/rn;-><init>(III)V

    goto :goto_1

    .line 29
    :pswitch_2
    new-instance v3, Lcom/android/tools/r8/internal/ln;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/ln;-><init>(III)V

    goto :goto_1

    .line 30
    :pswitch_3
    new-instance v3, Lcom/android/tools/r8/internal/qn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/qn;-><init>(III)V

    goto :goto_1

    .line 31
    :pswitch_4
    new-instance v3, Lcom/android/tools/r8/internal/on;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/on;-><init>(III)V

    goto :goto_1

    .line 32
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->e()Lcom/android/tools/r8/internal/n7;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 34
    new-instance v3, Lcom/android/tools/r8/internal/mn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/mn;-><init>(III)V

    goto :goto_1

    .line 35
    :cond_0
    sget-boolean v4, Lcom/android/tools/r8/internal/T3;->l:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v4

    if-nez v4, :cond_2

    .line 38
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->g()Lcom/android/tools/r8/internal/n8;

    move-result-object v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_2
    :goto_0
    new-instance v3, Lcom/android/tools/r8/internal/nn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/nn;-><init>(III)V

    goto :goto_1

    .line 41
    :pswitch_6
    new-instance v3, Lcom/android/tools/r8/internal/pn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/pn;-><init>(III)V

    .line 42
    :goto_1
    invoke-virtual {p1, p0, v3}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 73
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/YV;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 74
    new-instance v0, Lcom/android/tools/r8/internal/Z8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ou0;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/XW0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/XW0;-><init>(Lcom/android/tools/r8/internal/T3;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Consumer;)V

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

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 44
    new-instance p3, Lcom/android/tools/r8/internal/bJ0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/bJ0;-><init>()V

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_5

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_1

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p3

    .line 47
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of v0, p3, Lcom/android/tools/r8/internal/oZ;

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object p3

    .line 50
    iget-object p3, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 52
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p3

    goto :goto_0

    :cond_1
    return p4

    .line 54
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object p3

    .line 55
    iget-object p3, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    if-ltz v0, :cond_5

    if-lt v0, p3, :cond_3

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    .line 63
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-nez v0, :cond_4

    return p4

    .line 64
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 65
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    xor-int/2addr p1, p4

    return p1

    :cond_5
    :goto_1
    return p4
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    iget-object v0, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    if-ne p1, v0, :cond_0

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

.method public final f()Lcom/android/tools/r8/internal/YV;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    return-object v0
.end method

.method public final o1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/T3;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ArrayPut instructions define no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final t2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public value()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/J3;
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/T3;

    move-result-object v0

    return-object v0
.end method
