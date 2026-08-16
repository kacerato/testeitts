.class public final Lcom/android/tools/r8/internal/se;
.super Lcom/android/tools/r8/internal/u6;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final m:Lcom/android/tools/r8/internal/re;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/tools/r8/internal/u6;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/re;)Ljava/lang/String;
    .locals 3

    .line 27
    sget-object v0, Lcom/android/tools/r8/internal/qe;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 28
    const-string p0, "lt"

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected bias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    const-string p0, "gt"

    return-object p0

    .line 31
    :cond_2
    const-string p0, "none"

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/se;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 32
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 35
    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_a

    .line 39
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    instance-of v0, p3, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_a

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 42
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p3

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_1

    .line 44
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    iget-wide p2, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 45
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    goto :goto_4

    .line 46
    :cond_1
    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_4

    .line 47
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    .line 48
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 49
    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p3, v0

    .line 50
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    .line 51
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sub-float/2addr p2, p3

    .line 52
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-int p2, p2

    goto :goto_4

    .line 53
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    sget-object p3, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    if-ne p2, p3, :cond_9

    goto :goto_3

    .line 54
    :cond_4
    sget-boolean v1, Lcom/android/tools/r8/internal/se;->n:Z

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 55
    :cond_6
    :goto_1
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 57
    iget-wide p2, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 58
    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    sub-double/2addr v0, p2

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p2

    double-to-int p2, p2

    goto :goto_4

    .line 61
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    sget-object p3, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    if-ne p2, p3, :cond_9

    :goto_3
    const/4 p2, 0x1

    goto :goto_4

    :cond_9
    const/4 p2, -0x1

    .line 62
    :goto_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long p2, p2

    .line 63
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 64
    :cond_a
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->Y()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->Y()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->G()Lcom/android/tools/r8/internal/Bh;

    move-result-object p2

    .line 67
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->G()Lcom/android/tools/r8/internal/Bh;

    move-result-object p3

    .line 68
    invoke-interface {p2, p3}, Lcom/android/tools/r8/internal/Bh;->a(Lcom/android/tools/r8/internal/Bh;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 70
    :cond_b
    invoke-interface {p2}, Lcom/android/tools/r8/internal/Bh;->A()J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/tools/r8/internal/Bh;->A()J

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    .line 71
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long p2, p2

    .line 72
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 73
    :cond_c
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 81
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

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

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 8
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 10
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 11
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 12
    sget-object v3, Lcom/android/tools/r8/internal/qe;->a:[I

    iget-object v4, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 13
    sget-boolean v3, Lcom/android/tools/r8/internal/se;->n:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    sget-object v4, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/tools/r8/internal/Wn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/Wn;-><init>(III)V

    goto/16 :goto_5

    .line 15
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    sget-boolean v3, Lcom/android/tools/r8/internal/se;->n:Z

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    sget-object v5, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    if-eq v4, v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    sget-object v5, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    if-ne v4, v5, :cond_6

    .line 18
    new-instance v3, Lcom/android/tools/r8/internal/Yn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/Yn;-><init>(III)V

    goto :goto_5

    :cond_6
    if-nez v3, :cond_8

    .line 19
    sget-object v3, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    if-ne v4, v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_8
    :goto_2
    new-instance v3, Lcom/android/tools/r8/internal/ao;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/ao;-><init>(III)V

    goto :goto_5

    .line 21
    :cond_9
    sget-boolean v3, Lcom/android/tools/r8/internal/se;->n:Z

    if-nez v3, :cond_b

    iget-object v4, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    sget-object v5, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    if-eq v4, v5, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    sget-object v5, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    if-ne v4, v5, :cond_c

    .line 23
    new-instance v3, Lcom/android/tools/r8/internal/Xn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/Xn;-><init>(III)V

    goto :goto_5

    :cond_c
    if-nez v3, :cond_e

    .line 24
    sget-object v3, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    if-ne v4, v3, :cond_d

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_e
    :goto_4
    new-instance v3, Lcom/android/tools/r8/internal/Zn;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/Zn;-><init>(III)V

    .line 26
    :goto_5
    invoke-virtual {p1, p0, v3}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    .line 76
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)I

    move-result v0

    .line 79
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 80
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 3

    .line 74
    new-instance v0, Lcom/android/tools/r8/internal/q9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    iget-object v2, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/se;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->E()Lcom/android/tools/r8/internal/se;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    iget-object v0, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    const/16 v0, 0xb

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/tools/r8/internal/se;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/tools/r8/internal/qe;->a:[I

    iget-object v2, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "float, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    invoke-static {v1}, Lcom/android/tools/r8/internal/se;->a(Lcom/android/tools/r8/internal/re;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "double, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/se;->m:Lcom/android/tools/r8/internal/re;

    invoke-static {v1}, Lcom/android/tools/r8/internal/se;->a(Lcom/android/tools/r8/internal/re;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_3

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/tools/r8/internal/zq0$a;->e:Lcom/android/tools/r8/internal/zq0$a;

    const-string v3, ", "

    invoke-static {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
