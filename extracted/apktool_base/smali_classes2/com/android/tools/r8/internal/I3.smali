.class public abstract Lcom/android/tools/r8/internal/I3;
.super Lcom/android/tools/r8/internal/u6;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/u6;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 42
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 43
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 45
    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    instance-of v0, p3, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_6

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 52
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p3

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_1

    .line 54
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p3, v0

    .line 55
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/u6;->a(II)I

    move-result p2

    :goto_0
    int-to-long p2, p2

    goto :goto_2

    .line 56
    :cond_1
    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_2

    .line 57
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    iget-wide p2, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 58
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/tools/r8/internal/u6;->a(JJ)J

    move-result-wide p2

    goto :goto_2

    .line 59
    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_3

    .line 60
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    .line 61
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 62
    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p3, v0

    .line 63
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 64
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/u6;->a(FF)F

    move-result p2

    .line 65
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    goto :goto_0

    .line 66
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/internal/I3;->m:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_5
    :goto_1
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 69
    iget-wide p2, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 70
    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    .line 71
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/tools/r8/internal/u6;->a(DD)D

    move-result-wide p2

    .line 72
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    .line 73
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 75
    :cond_6
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public abstract a(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 4
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 6
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 7
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 8
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/u6;->a(Lcom/android/tools/r8/internal/Je0;)Z

    move-result v2

    const-string v3, "Unexpected numeric type "

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_9

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 11
    iget v8, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 12
    iget-object v9, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v9, v2, v8}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    if-eq v0, v1, :cond_3

    .line 13
    sget-boolean v8, Lcom/android/tools/r8/internal/I3;->m:Z

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v8, :cond_4

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    move v0, v2

    .line 15
    :cond_4
    :goto_1
    sget-object v2, Lcom/android/tools/r8/internal/H3;->a:[I

    iget-object v8, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v2, v2, v8

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    if-ne v2, v4, :cond_5

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/I3;->e(II)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto/16 :goto_5

    .line 17
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/I3;->d(II)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto/16 :goto_5

    .line 19
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/I3;->c(II)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto/16 :goto_5

    .line 20
    :cond_8
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/I3;->b(II)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto/16 :goto_5

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/I3;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 22
    sget-boolean v2, Lcom/android/tools/r8/internal/I3;->m:Z

    if-nez v2, :cond_b

    .line 23
    instance-of v3, p0, Lcom/android/tools/r8/internal/Qq0;

    if-nez v3, :cond_a

    goto :goto_2

    .line 24
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_2
    if-nez v2, :cond_d

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->x2()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/I3;->e(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_5

    :cond_e
    if-nez v2, :cond_10

    .line 29
    iget-wide v4, v3, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_4

    .line 30
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_10
    :goto_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/I3;->d(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_5

    .line 32
    :cond_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 33
    iget v8, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 34
    iget-object v9, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v9, v2, v8}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 35
    sget-object v8, Lcom/android/tools/r8/internal/H3;->a:[I

    iget-object v9, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v7, :cond_15

    if-eq v8, v6, :cond_14

    if-eq v8, v5, :cond_13

    if-ne v8, v4, :cond_12

    .line 36
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/I3;->f(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_5

    .line 37
    :cond_12
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_13
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/I3;->c(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_5

    .line 39
    :cond_14
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/I3;->b(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_5

    .line 40
    :cond_15
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/I3;->a(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    .line 41
    :goto_5
    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/PS;)V
    .locals 7

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/I3;->z2()Lcom/android/tools/r8/internal/V8$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    .line 78
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    sget-boolean v4, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v4, :cond_1

    sget-object v5, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    sget-object v6, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/V8;->a(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)I

    move-result v5

    const/16 v6, 0x60

    if-ne v6, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v4, :cond_3

    .line 81
    sget-object v4, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    sget-object v5, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/V8;->a(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)I

    move-result v4

    const/16 v5, 0x73

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/V8;->a(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)I

    move-result v0

    .line 83
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 84
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 3

    .line 76
    new-instance v0, Lcom/android/tools/r8/internal/V8;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/I3;->z2()Lcom/android/tools/r8/internal/V8$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public abstract b(II)Lcom/android/tools/r8/internal/Np;
.end method

.method public abstract b(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public abstract c(II)Lcom/android/tools/r8/internal/Np;
.end method

.method public abstract c(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public c(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/I3;->m:Z

    if-nez v0, :cond_1

    .line 2
    instance-of v1, p0, Lcom/android/tools/r8/internal/Qq0;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    return v2

    :cond_2
    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public abstract d(II)Lcom/android/tools/r8/internal/Np;
.end method

.method public abstract d(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public abstract e(II)Lcom/android/tools/r8/internal/Np;
.end method

.method public abstract e(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public abstract f(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public final l1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w()Lcom/android/tools/r8/internal/I3;
    .locals 0

    return-object p0
.end method

.method public abstract z2()Lcom/android/tools/r8/internal/V8$a;
.end method
