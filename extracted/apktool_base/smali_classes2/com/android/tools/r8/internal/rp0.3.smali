.class public abstract Lcom/android/tools/r8/internal/rp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Ljava/lang/Number;
    .locals 5

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object p0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, v0, :cond_4

    .line 33
    sget-boolean p1, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 34
    :cond_3
    :goto_0
    iget-wide p0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, v0, :cond_7

    .line 37
    sget-boolean p1, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 38
    :cond_6
    :goto_1
    iget-wide p0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 40
    :cond_7
    sget-boolean p1, Lcom/android/tools/r8/internal/rp0;->a:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-eq p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, v0, :cond_8

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 41
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 42
    :cond_a
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d2()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->z0()Lcom/android/tools/r8/internal/w10;

    move-result-object p1

    .line 44
    sget-boolean v0, Lcom/android/tools/r8/internal/rp0;->a:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_b

    goto :goto_3

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 47
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/w10;->u2()Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    .line 48
    :cond_d
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/rp0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v1

    .line 50
    :cond_e
    iget-object p1, p1, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 51
    iget-object v4, p0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v4, :cond_10

    .line 52
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_4

    :cond_f
    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 53
    :cond_10
    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v2, :cond_11

    .line 54
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 55
    :cond_11
    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v2, :cond_12

    .line 56
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 57
    :cond_12
    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v2, :cond_13

    .line 58
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 59
    :cond_13
    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v2, :cond_14

    .line 60
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 61
    :cond_14
    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v2, :cond_15

    .line 62
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 63
    :cond_15
    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v2, :cond_16

    .line 64
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 65
    :cond_16
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_17

    .line 66
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/rp0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p1, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p1, :cond_5

    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p1, :cond_6

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p1, :cond_7

    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p1, :cond_8

    .line 15
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p1, :cond_9

    .line 17
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p1, :cond_a

    .line 19
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_a
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p0, :cond_e

    .line 21
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_b
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    instance-of p2, p2, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p2, :cond_e

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->P1:Lcom/android/tools/r8/graph/M2;

    if-eq p3, p0, :cond_e

    .line 25
    sget-boolean p0, Lcom/android/tools/r8/internal/rp0;->a:Z

    if-nez p0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-nez p0, :cond_c

    goto :goto_1

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 26
    :cond_d
    :goto_1
    const-string p0, "null"

    return-object p0

    :cond_e
    return-object v1
.end method
