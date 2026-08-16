.class public abstract Lcom/android/tools/r8/internal/VT;
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
.method public final W1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 35
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 38
    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_6

    .line 42
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v0, p3, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_6

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 45
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p3

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_1

    .line 47
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p3, v0

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/u6;->a(II)I

    move-result p2

    int-to-long p2, p2

    goto :goto_3

    .line 49
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/VT;->m:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_3
    :goto_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/Ol0;

    if-nez v0, :cond_5

    .line 51
    instance-of v0, p0, Lcom/android/tools/r8/internal/Sl0;

    if-nez v0, :cond_5

    .line 52
    instance-of v0, p0, Lcom/android/tools/r8/internal/mw0;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 53
    :cond_4
    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    goto :goto_2

    .line 54
    :cond_5
    :goto_1
    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p3, v0

    int-to-long v0, p3

    .line 55
    :goto_2
    iget-wide p2, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 56
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/tools/r8/internal/u6;->a(JJ)J

    move-result-wide p2

    .line 57
    :goto_3
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 59
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_7

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/u6;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 61
    :cond_7
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public abstract a(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 8

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

    const-string v3, "Unexpected type "

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 11
    iget v6, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 12
    iget-object v7, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v7, v2, v6}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    if-eq v0, v1, :cond_3

    .line 13
    sget-boolean v6, Lcom/android/tools/r8/internal/VT;->m:Z

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v6, :cond_4

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
    sget-object v2, Lcom/android/tools/r8/internal/UT;->a:[I

    iget-object v6, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_6

    if-ne v2, v4, :cond_5

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/VT;->c(II)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto/16 :goto_4

    .line 17
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/VT;->b(II)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto/16 :goto_4

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/VT;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 20
    sget-boolean v2, Lcom/android/tools/r8/internal/VT;->m:Z

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->x2()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/VT;->c(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_4

    :cond_a
    if-nez v2, :cond_c

    .line 24
    iget-wide v4, v3, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    .line 25
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_c
    :goto_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/VT;->b(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_4

    .line 27
    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 28
    iget v6, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 29
    iget-object v7, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v7, v2, v6}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 30
    sget-object v6, Lcom/android/tools/r8/internal/UT;->a:[I

    iget-object v7, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_f

    if-ne v6, v4, :cond_e

    .line 31
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/VT;->d(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    goto :goto_4

    .line 32
    :cond_e
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_f
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/tools/r8/internal/VT;->a(III)Lcom/android/tools/r8/internal/Np;

    move-result-object v0

    .line 34
    :goto_4
    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 7

    .line 63
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VT;->z2()Lcom/android/tools/r8/internal/qa;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    .line 64
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    sget-boolean v4, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v4, :cond_1

    sget-object v5, Lcom/android/tools/r8/internal/qa;->b:Lcom/android/tools/r8/internal/qa;

    sget-object v6, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    .line 67
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/ra;->a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)I

    move-result v5

    const/16 v6, 0x78

    if-ne v6, v5, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v4, :cond_3

    .line 69
    sget-object v4, Lcom/android/tools/r8/internal/qa;->g:Lcom/android/tools/r8/internal/qa;

    sget-object v5, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    .line 70
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/ra;->a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)I

    move-result v4

    const/16 v5, 0x83

    if-ne v5, v4, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 72
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ra;->a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)I

    move-result v0

    .line 73
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 74
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 3

    .line 62
    new-instance v0, Lcom/android/tools/r8/internal/ra;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VT;->z2()Lcom/android/tools/r8/internal/qa;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

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

.method public final c(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/VT;->m:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public abstract d(III)Lcom/android/tools/r8/internal/Np;
.end method

.method public final n0()Lcom/android/tools/r8/internal/VT;
    .locals 0

    return-object p0
.end method

.method public abstract z2()Lcom/android/tools/r8/internal/qa;
.end method
