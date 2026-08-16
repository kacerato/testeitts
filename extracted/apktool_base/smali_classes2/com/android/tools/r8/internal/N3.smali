.class public Lcom/android/tools/r8/internal/N3;
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

    filled-new-array {p3, p4}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/android/tools/r8/internal/J3;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;
    .locals 3

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure to constrain value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " by constraint: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final Z0()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 47
    sget-object v0, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v0, :cond_2

    return-object p2

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected member type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :pswitch_0
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 63
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/N3;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_1
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 68
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->e:Lcom/android/tools/r8/internal/Mw0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/N3;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_2
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    instance-of p1, p1, Lcom/android/tools/r8/internal/kt;

    if-eqz p1, :cond_5

    goto :goto_3

    .line 71
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 72
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_3
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    instance-of p1, p1, Lcom/android/tools/r8/internal/tU;

    if-eqz p1, :cond_7

    goto :goto_4

    .line 75
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 76
    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_4
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    instance-of p1, p1, Lcom/android/tools/r8/internal/Fx;

    if-eqz p1, :cond_9

    goto :goto_5

    .line 79
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_a
    :goto_5
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_5
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    instance-of p1, p1, Lcom/android/tools/r8/internal/uI;

    if-eqz p1, :cond_b

    goto :goto_6

    .line 83
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_c
    :goto_6
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    return-object p1

    :pswitch_6
    if-nez p1, :cond_d

    .line 85
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    goto :goto_7

    .line 86
    :cond_d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 87
    :goto_7
    sget-boolean v0, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 4
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

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 6
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 7
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 8
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 10
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 11
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 13
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 14
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 15
    iget-object v3, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :pswitch_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected imprecise type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :pswitch_1
    sget-boolean v3, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v3, :cond_1

    .line 19
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->e:Lcom/android/tools/r8/internal/nJ;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-object v4, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/tools/r8/internal/en;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/en;-><init>(III)V

    goto :goto_2

    .line 24
    :pswitch_2
    new-instance v3, Lcom/android/tools/r8/internal/Ym;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/Ym;-><init>(III)V

    goto :goto_2

    .line 25
    :pswitch_3
    new-instance v3, Lcom/android/tools/r8/internal/dn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/dn;-><init>(III)V

    goto :goto_2

    .line 26
    :pswitch_4
    new-instance v3, Lcom/android/tools/r8/internal/bn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/bn;-><init>(III)V

    goto :goto_2

    .line 27
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->e()Lcom/android/tools/r8/internal/n7;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 29
    new-instance v3, Lcom/android/tools/r8/internal/Zm;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/Zm;-><init>(III)V

    goto :goto_2

    .line 30
    :cond_2
    sget-boolean v4, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v4

    if-nez v4, :cond_4

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->g()Lcom/android/tools/r8/internal/n8;

    move-result-object v4

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_4
    :goto_1
    new-instance v3, Lcom/android/tools/r8/internal/an;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/an;-><init>(III)V

    goto :goto_2

    .line 36
    :pswitch_6
    new-instance v3, Lcom/android/tools/r8/internal/cn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/cn;-><init>(III)V

    .line 37
    :goto_2
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

    .line 50
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 41
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/YV;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/tools/r8/internal/X8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/X8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ou0;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    .line 94
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/dN0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/dN0;-><init>(Lcom/android/tools/r8/internal/N3;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 42
    sget-boolean p1, Lcom/android/tools/r8/internal/N3;->l:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->e()Lcom/android/tools/r8/internal/n7;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_3

    .line 3
    iget-object p3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 6
    sget-object v0, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 7
    invoke-virtual {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->W()Z

    move-result p2

    if-nez p2, :cond_1

    return p4

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->T()I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p2

    if-lez p1, :cond_3

    if-ltz p2, :cond_3

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return p4
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->y()Lcom/android/tools/r8/internal/N3;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/android/tools/r8/internal/YV;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/N3;->k:Lcom/android/tools/r8/internal/YV;

    return-object v0
.end method

.method public final n1()Z
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
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final t2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/J3;
    .locals 6

    sget-object v0, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    new-instance v1, Lcom/android/tools/r8/internal/N3;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/tools/r8/internal/N3;-><init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-object v1
.end method

.method public final y()Lcom/android/tools/r8/internal/N3;
    .locals 0

    return-object p0
.end method
