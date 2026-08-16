.class public Lcom/android/tools/r8/internal/ha;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/D0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/D0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)Ljava/lang/Object;
    .locals 4

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported bootstrap argument of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/L2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/internal/Qz;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Y2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance p1, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xb

    invoke-direct {p1, v0, v2, p2, p0}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    return-object p1

    .line 24
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->s0()Lcom/android/tools/r8/graph/R2$f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$f;->W0()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->v0()Lcom/android/tools/r8/graph/R2$g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$g;->W0()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->x0()Lcom/android/tools/r8/graph/R2$i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$i;->W0()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->r0()Lcom/android/tools/r8/graph/S2;

    move-result-object p0

    .line 29
    iget-object p0, p0, Lcom/android/tools/r8/graph/S2;->d:Lcom/android/tools/r8/internal/Ah;

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/R2;

    invoke-static {v3, p1, p2}, Lcom/android/tools/r8/internal/ha;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/wh;

    .line 35
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->c:Lcom/android/tools/r8/graph/L2;

    .line 36
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    .line 38
    invoke-virtual {p1, p2, v3}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p2

    .line 39
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/internal/Qz;

    move-result-object p0

    invoke-direct {v0, v2, p2, p0, v1}, Lcom/android/tools/r8/internal/wh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
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
.method public final B()I
    .locals 1

    const/16 v0, 0xba

    return v0
.end method

.method public V()Lcom/android/tools/r8/graph/D0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    check-cast p1, Lcom/android/tools/r8/internal/ha;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    .line 65
    iget-object v0, v0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 68
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    .line 70
    iget-object p2, p2, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 71
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 42
    iget-object p2, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 1

    .line 3
    iget-object p4, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    invoke-virtual {p8, p4, p2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object p2

    .line 4
    iget-object p4, p2, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 5
    iget-object p5, p2, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 6
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [Ljava/lang/Object;

    const/4 p8, 0x0

    .line 7
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge p8, v0, :cond_0

    .line 8
    invoke-interface {p5, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    invoke-static {v0, p7, p3}, Lcom/android/tools/r8/internal/ha;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p6, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p4, p7}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/internal/Qz;

    move-result-object p3

    .line 10
    invoke-virtual {p7, p2, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 12
    invoke-virtual {p2, p7}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p9, p1, p2, p3, p6}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ha;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 6

    .line 43
    iget-object p3, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    iget-object p3, p3, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    array-length v1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-array v2, v1, [I

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v4

    iget v4, v4, Lcom/android/tools/r8/internal/ob;->a:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 48
    aget v5, v2, v4

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 50
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    array-length v2, p3

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, p3, v4

    .line 52
    invoke-static {v5}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 53
    :cond_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 55
    :cond_4
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 57
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Kw0;

    invoke-static {v5}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 58
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 59
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/OJ;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, v2}, Lcom/android/tools/r8/internal/OJ;-><init>(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 60
    iget-object p3, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    iget-object p3, p3, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p3

    if-nez p3, :cond_6

    .line 61
    iget-object p3, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    iget-object p3, p3, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 62
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 63
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->c(I)V

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ha;->c:Lcom/android/tools/r8/graph/D0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final k()Lcom/android/tools/r8/internal/ha;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
