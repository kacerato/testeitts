.class public abstract Lcom/android/tools/r8/internal/NJ;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/NJ;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown invoke type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/YJ;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/YJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object p0

    .line 4
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string p1, "Use InvokeCustom constructor instead"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/XJ;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/XJ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object p0

    .line 6
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/qZ;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object p0

    .line 7
    :pswitch_4
    new-instance p0, Lcom/android/tools/r8/internal/mK;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object p0

    .line 8
    :pswitch_5
    new-instance p0, Lcom/android/tools/r8/internal/hK;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/hK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    return-object p0

    .line 9
    :pswitch_6
    new-instance p0, Lcom/android/tools/r8/internal/gK;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    return-object p0

    .line 10
    :pswitch_7
    new-instance p0, Lcom/android/tools/r8/internal/TJ;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/TJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object p0

    .line 11
    :pswitch_8
    new-instance p0, Lcom/android/tools/r8/internal/QJ;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/QJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final N1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final X0()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->x2()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;Lcom/android/tools/r8/internal/xw0;)I
    .locals 1

    .line 71
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/mS;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    sget-boolean v0, Lcom/android/tools/r8/internal/mS;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 76
    iget-object p2, p2, Lcom/android/tools/r8/internal/FT;->e:Lcom/android/tools/r8/internal/FT;

    .line 77
    iget p2, p2, Lcom/android/tools/r8/internal/FT;->k:I

    .line 78
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mS;->c(I)I

    move-result p1

    return p1

    .line 79
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 80
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;[I)I
    .locals 10

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/NJ;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->b(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_2
    if-ge v3, v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 25
    iget v6, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 26
    iget-object v7, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 27
    invoke-virtual {v7, v5, v6}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v6

    .line 28
    iget-object v7, v5, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v7

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    const/16 v8, 0xf

    if-le v7, v8, :cond_3

    .line 29
    iget v6, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 30
    iget-object v7, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v7, v5, v6}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v6

    .line 31
    :cond_3
    sget-boolean v7, Lcom/android/tools/r8/internal/NJ;->k:Z

    if-nez v7, :cond_5

    .line 32
    iget-object v7, v5, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v7

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    if-gt v7, v8, :cond_4

    goto :goto_1

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    move v7, v2

    .line 34
    :goto_2
    iget-object v8, v5, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 35
    sget-boolean v8, Lcom/android/tools/r8/internal/NJ;->k:Z

    if-nez v8, :cond_7

    const/4 v8, 0x5

    if-ge v4, v8, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v6, 0x1

    .line 36
    aput v6, p2, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    move v6, v9

    goto :goto_2

    :cond_8
    return v4
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "void methods have no type."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Kn;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 40
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 41
    iget-object v3, p2, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 42
    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/Nq;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Nq;-><init>(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    new-instance v0, Lcom/android/tools/r8/internal/Pq;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Pq;-><init>(I)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    new-instance v0, Lcom/android/tools/r8/internal/Oq;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Oq;-><init>(I)V

    :goto_0
    const/4 v1, 0x2

    .line 49
    new-array v1, v1, [Lcom/android/tools/r8/internal/Np;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-virtual {p2, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;[Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 50
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected result type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_3
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 3

    .line 52
    sget-boolean v0, Lcom/android/tools/r8/internal/NJ;->k:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 62
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 63
    invoke-virtual {p1, v2, p2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 64
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/V60;)Z
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/k3;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 18
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/k3;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 21
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/mS;)Z
    .locals 1

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/MN0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/MN0;-><init>(Lcom/android/tools/r8/internal/mS;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result p1

    return p1
.end method

.method public final a0()Lcom/android/tools/r8/internal/NJ;
    .locals 0

    return-object p0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/NJ;->k:Z

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/Kn;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 5
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 6
    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p1

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v0

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    const/16 p1, 0xf

    if-le v0, p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_2

    return v2

    .line 11
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/mS;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final c(Lcom/android/tools/r8/internal/Kn;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;Lcom/android/tools/r8/internal/xw0;)I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/internal/NJ;->k:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;Lcom/android/tools/r8/internal/xw0;)I

    move-result v3

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-object v2, v2, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    return v0

    :cond_1
    :goto_0
    const v0, 0xffff

    return v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final u2()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method

.method public abstract v2()Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract w2()Lcom/android/tools/r8/internal/kK;
.end method

.method public abstract x2()Ljava/lang/String;
.end method

.method public final y2()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return v3
.end method
