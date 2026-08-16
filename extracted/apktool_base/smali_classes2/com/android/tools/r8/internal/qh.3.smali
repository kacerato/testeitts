.class public Lcom/android/tools/r8/internal/qh;
.super Lcom/android/tools/r8/internal/lh;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;J)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lh;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/ix;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-wide p2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/qh;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    return-object v0
.end method


# virtual methods
.method public final A2()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public J()Lcom/android/tools/r8/internal/qh;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 34
    sget-boolean p2, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    sget-object p1, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 36
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 37
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    sget-boolean p1, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1

    .line 43
    :cond_3
    iget-wide p2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Lcom/android/tools/r8/internal/qh;
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V
    .locals 0

    .line 45
    sget-boolean p1, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez p1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    instance-of p1, p1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 12

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/An;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/An;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 9
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 10
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v1

    const-wide/32 v2, 0x7fffffff

    const-wide/32 v4, -0x80000000

    const-wide/16 v6, 0x0

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-eq v1, v8, :cond_7

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, v8, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_3
    :goto_0
    iget-wide v8, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {v8, v9}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/mo;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/mo;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 17
    :cond_4
    iget-wide v8, p0, Lcom/android/tools/r8/internal/qh;->l:J

    const-wide v10, 0xffffffffffffL

    and-long/2addr v10, v8

    cmp-long v1, v10, v6

    if-nez v1, :cond_5

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/po;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/po;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    :cond_5
    cmp-long v1, v4, v8

    if-gtz v1, :cond_6

    cmp-long v1, v8, v2

    if-gtz v1, :cond_6

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/no;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/no;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 20
    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/oo;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/oo;-><init>(IJ)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 21
    :cond_7
    :goto_1
    sget-boolean v1, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v1, :cond_9

    iget-wide v8, p0, Lcom/android/tools/r8/internal/qh;->l:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_8

    cmp-long v1, v8, v2

    if-gtz v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_2
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v0, :cond_a

    .line 22
    iget-wide v1, p0, Lcom/android/tools/r8/internal/qh;->l:J

    const-wide/16 v3, -0x8

    cmp-long v3, v3, v1

    if-gtz v3, :cond_a

    const-wide/16 v3, 0x7

    cmp-long v1, v1, v3

    if-gtz v1, :cond_a

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/eo;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/eo;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 24
    :cond_a
    iget-wide v1, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/co;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/co;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 26
    :cond_b
    iget-wide v1, p0, Lcom/android/tools/r8/internal/qh;->l:J

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    cmp-long v1, v1, v6

    if-nez v1, :cond_c

    .line 27
    new-instance v1, Lcom/android/tools/r8/internal/ho;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int v2, v2

    ushr-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/ho;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 28
    :cond_c
    new-instance v1, Lcom/android/tools/r8/internal/fo;

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/fo;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    sget-object v3, Lcom/android/tools/r8/internal/IS;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 52
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/PS;->a(J)Lcom/android/tools/r8/internal/PS;

    return-void

    .line 53
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 54
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/PS;->b(J)Lcom/android/tools/r8/internal/PS;

    return-void

    :cond_2
    long-to-int v0, v1

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/PS;->b(I)Lcom/android/tools/r8/internal/PS;

    return-void

    :cond_3
    long-to-int v0, v1

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/PS;->c(I)Lcom/android/tools/r8/internal/PS;

    return-void

    .line 57
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->a()Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/tools/r8/internal/x9;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    iget-wide v1, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 4

    .line 49
    iget-wide v0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-wide v3, p1, Lcom/android/tools/r8/internal/qh;->l:J

    iget-wide v5, p0, Lcom/android/tools/r8/internal/qh;->l:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final e2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Const has no register arguments."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    const-string v1, " "

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/tools/r8/internal/qh;->l:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (dead)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int v0, v0

    return v0
.end method

.method public final v2()J
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    return-wide v0
.end method

.method public final w1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w2()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    return-wide v0
.end method

.method public final x2()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/qh;->l:J

    const-wide/16 v2, -0x80

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y2()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z2()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
