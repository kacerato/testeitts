.class public Ljn/A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljn/A$a;,
        Ljn/A$b;,
        Ljn/A$c;
    }
.end annotation


# static fields
.field public static final f:I = 0x2

.field public static final g:I = 0x1

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x4

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static m:F = 0.003921569f


# instance fields
.field public final a:Ljn/v;

.field public final b:Ljn/C;

.field public final c:Ljn/E;

.field public d:Ljn/K;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljn/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nav"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljn/A;->a:Ljn/v;

    .line 3
    new-instance p1, Ljn/C;

    invoke-direct {p1}, Ljn/C;-><init>()V

    iput-object p1, p0, Ljn/A;->b:Ljn/C;

    .line 4
    new-instance p1, Ljn/E;

    invoke-direct {p1}, Ljn/E;-><init>()V

    iput-object p1, p0, Ljn/A;->c:Ljn/E;

    const/16 p1, 0x2710

    .line 5
    iput p1, p0, Ljn/A;->e:I

    return-void
.end method

.method public constructor <init>(Ljn/v;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nav",
            "maxFails"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ljn/A;->a:Ljn/v;

    .line 8
    new-instance p1, Ljn/C;

    invoke-direct {p1}, Ljn/C;-><init>()V

    iput-object p1, p0, Ljn/A;->b:Ljn/C;

    .line 9
    new-instance p1, Ljn/E;

    invoke-direct {p1}, Ljn/E;-><init>()V

    iput-object p1, p0, Ljn/A;->c:Ljn/E;

    .line 10
    iput p2, p0, Ljn/A;->e:I

    return-void
.end method

.method public static synthetic a(Ljn/A;[F[FLjn/L;Ljn/I;Ljn/s;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljn/A;->K([F[FLjn/L;Ljn/I;Ljn/s;)V

    return-void
.end method


# virtual methods
.method public A(J[F)Ljn/O;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F)",
            "Ljn/O<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v4, p1, p2}, Ljn/v;->J(J)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Ljn/O;->b:Ljn/Q;

    iget-object p1, p1, Ljn/O;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljn/U;

    iget-object p2, p2, Ljn/U;->a:Ljava/lang/Object;

    check-cast p2, Ljn/s;

    check-cast p1, Ljn/U;

    iget-object p1, p1, Ljn/U;->b:Ljava/lang/Object;

    check-cast p1, Ljn/G;

    if-eqz p3, :cond_4

    invoke-static {p3}, Ljn/g;->J([F)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljn/G;->b()I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object p1, p1, Ljn/G;->b:[I

    aget v4, p1, v2

    mul-int/2addr v4, v1

    iget-object p2, p2, Ljn/s;->c:Ljn/q;

    iget-object p2, p2, Ljn/q;->b:[F

    aget v5, p2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, p2, v6

    add-int/2addr v4, v0

    aget v4, p2, v4

    new-array v7, v1, [F

    aput v5, v7, v2

    aput v6, v7, v3

    aput v4, v7, v0

    aget p1, p1, v3

    mul-int/2addr p1, v1

    aget v4, p2, p1

    add-int/lit8 v5, p1, 0x1

    aget v5, p2, v5

    add-int/2addr p1, v0

    aget p1, p2, p1

    new-array p2, v1, [F

    aput v4, p2, v2

    aput v5, p2, v3

    aput p1, p2, v0

    invoke-static {p3, v7, p2}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object p1

    aget p3, v7, v3

    aget p2, p2, v3

    sub-float/2addr p2, p3

    iget-object p1, p1, Ljn/U;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p2, p1

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p2, p1, p3}, Ljn/v;->F(Ljn/s;Ljn/G;[F)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    :goto_1
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public B(JZLjn/L;)Ljn/O;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "storePortals",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/n;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    iget-object v0, v6, Ljn/A;->a:Ljn/v;

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljn/v;->J(J)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljn/O;->b:Ljn/Q;

    iget-object v0, v0, Ljn/O;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v7, :cond_1

    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/U;

    iget-object v1, v1, Ljn/U;->a:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljn/s;

    check-cast v0, Ljn/U;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljn/G;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    const/16 v0, 0x10

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget v0, v9, Ljn/G;->e:I

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move v4, v0

    const/4 v15, 0x0

    :goto_0
    iget v0, v9, Ljn/G;->e:I

    if-ge v15, v0, :cond_c

    invoke-interface {v12}, Ljava/util/List;->clear()V

    iget-object v0, v9, Ljn/G;->c:[I

    aget v0, v0, v4

    const v1, 0x8000

    and-int/2addr v1, v0

    const-wide/16 v16, 0x0

    if-eqz v1, :cond_8

    iget-object v0, v8, Ljn/s;->d:[I

    iget v1, v9, Ljn/G;->a:I

    aget v0, v0, v1

    move v2, v0

    :goto_1
    const/4 v0, -0x1

    if-eq v2, v0, :cond_4

    iget-object v0, v8, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v1, v0, Ljn/p;->c:I

    if-ne v1, v4, :cond_3

    move/from16 p1, v4

    iget-wide v3, v0, Ljn/p;->a:J

    cmp-long v1, v3, v16

    if-eqz v1, :cond_2

    iget-object v1, v6, Ljn/A;->a:Ljn/v;

    invoke-virtual {v1, v3, v4}, Ljn/v;->K(J)Ljn/U;

    move-result-object v1

    iget-object v3, v1, Ljn/U;->a:Ljava/lang/Object;

    check-cast v3, Ljn/s;

    iget-object v1, v1, Ljn/U;->b:Ljava/lang/Object;

    check-cast v1, Ljn/G;

    iget-wide v5, v0, Ljn/p;->a:J

    invoke-interface {v7, v5, v6, v3, v1}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v3, v0, Ljn/p;->e:I

    iget v5, v0, Ljn/p;->f:I

    iget-wide v0, v0, Ljn/p;->a:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move v6, v2

    move v2, v3

    const/4 v13, 0x3

    move v3, v5

    move/from16 v20, p1

    const/4 v14, 0x6

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Ljn/A;->H(Ljava/util/List;IIJ)V

    goto :goto_3

    :cond_2
    move/from16 v20, p1

    move v6, v2

    :goto_2
    const/4 v13, 0x3

    const/4 v14, 0x6

    goto :goto_3

    :cond_3
    move v6, v2

    move/from16 v20, v4

    goto :goto_2

    :goto_3
    iget-object v0, v8, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v2, v0, Ljn/p;->b:I

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move/from16 v4, v20

    goto :goto_1

    :cond_4
    move/from16 v20, v4

    const/4 v13, 0x3

    const/4 v14, 0x6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Ljn/A;->H(Ljava/util/List;IIJ)V

    const/16 v3, 0x100

    const/16 v2, 0xff

    invoke-virtual/range {v0 .. v5}, Ljn/A;->H(Ljava/util/List;IIJ)V

    iget-object v0, v9, Ljn/G;->b:[I

    aget v1, v0, v20

    mul-int/2addr v1, v13

    aget v0, v0, v15

    mul-int/2addr v0, v13

    const/4 v2, 0x1

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    const/high16 v3, 0x437f0000    # 255.0f

    if-eqz p3, :cond_5

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn/A$c;

    iget-wide v4, v4, Ljn/A$c;->a:J

    cmp-long v4, v4, v16

    if-eqz v4, :cond_5

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn/A$c;

    iget v4, v4, Ljn/A$c;->b:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljn/A$c;

    iget v5, v5, Ljn/A$c;->c:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    new-array v6, v14, [F

    iget-object v14, v8, Ljn/s;->c:Ljn/q;

    iget-object v14, v14, Ljn/q;->b:[F

    invoke-static {v14, v1, v0, v4}, Ljn/g;->M([FIIF)[F

    move-result-object v4

    const/4 v14, 0x0

    invoke-static {v4, v14, v6, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v8, Ljn/s;->c:Ljn/q;

    iget-object v4, v4, Ljn/q;->b:[F

    invoke-static {v4, v1, v0, v5}, Ljn/g;->M([FIIF)[F

    move-result-object v4

    invoke-static {v4, v14, v6, v13, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn/A$c;

    iget-wide v4, v4, Ljn/A$c;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v2, -0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn/A$c;

    iget v4, v4, Ljn/A$c;->c:I

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljn/A$c;

    iget v5, v5, Ljn/A$c;->b:I

    if-eq v4, v5, :cond_6

    int-to-float v4, v4

    div-float/2addr v4, v3

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/4 v3, 0x6

    new-array v6, v3, [F

    iget-object v3, v8, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->b:[F

    invoke-static {v3, v1, v0, v4}, Ljn/g;->M([FIIF)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v8, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->b:[F

    invoke-static {v3, v1, v0, v5}, Ljn/g;->M([FIIF)[F

    move-result-object v3

    invoke-static {v3, v4, v6, v13, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x6

    goto/16 :goto_4

    :cond_7
    move-object/from16 v1, p0

    :goto_5
    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move/from16 v20, v4

    const/4 v13, 0x3

    if-eqz v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, p0

    iget-object v2, v1, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v8}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v2

    int-to-long v4, v0

    or-long/2addr v2, v4

    iget-object v4, v8, Ljn/s;->c:Ljn/q;

    iget-object v4, v4, Ljn/q;->c:[Ljn/G;

    aget-object v0, v4, v0

    invoke-interface {v7, v2, v3, v8, v0}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_6
    move-wide/from16 v2, v16

    goto :goto_7

    :cond_9
    move-object/from16 v1, p0

    goto :goto_6

    :cond_a
    :goto_7
    cmp-long v0, v2, v16

    if-eqz v0, :cond_b

    if-nez p3, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, v9, Ljn/G;->b:[I

    aget v4, v0, v20

    mul-int/2addr v4, v13

    aget v0, v0, v15

    mul-int/2addr v0, v13

    const/4 v5, 0x6

    new-array v5, v5, [F

    iget-object v6, v8, Ljn/s;->c:Ljn/q;

    iget-object v6, v6, Ljn/q;->b:[F

    const/4 v14, 0x0

    invoke-static {v6, v4, v5, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v8, Ljn/s;->c:Ljn/q;

    iget-object v4, v4, Ljn/q;->b:[F

    invoke-static {v4, v0, v5, v13, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v0, v15, 0x1

    move-object v6, v1

    move v4, v15

    const/4 v13, 0x1

    move v15, v0

    goto/16 :goto_0

    :cond_c
    move-object v1, v6

    new-instance v0, Ljn/n;

    invoke-direct {v0, v11, v10}, Ljn/n;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public C(JJ)Ljn/O;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljn/O<",
            "Ljn/A$b;",
            ">;"
        }
    .end annotation

    move-object v11, p0

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    move-wide v1, p1

    invoke-virtual {v0, p1, p2}, Ljn/v;->J(J)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, Ljn/O;->b:Ljn/Q;

    iget-object v0, v0, Ljn/O;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/U;

    iget-object v3, v0, Ljn/U;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljn/G;

    invoke-virtual {v3}, Ljn/G;->b()I

    move-result v9

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    move-wide v5, p3

    invoke-virtual {v0, v5, v6}, Ljn/v;->J(J)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v1, v0, Ljn/O;->b:Ljn/Q;

    iget-object v0, v0, Ljn/O;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/U;

    iget-object v7, v0, Ljn/U;->a:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljn/G;

    invoke-virtual {v7}, Ljn/G;->b()I

    move-result v10

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v10}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "fromPoly",
            "fromTile",
            "to",
            "toPoly",
            "toTile",
            "fromType",
            "toType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljn/G;",
            "Ljn/s;",
            "J",
            "Ljn/G;",
            "Ljn/s;",
            "II)",
            "Ljn/O<",
            "Ljn/A$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    const/4 v6, 0x3

    new-array v7, v6, [F

    new-array v8, v6, [F

    iget-object v9, v1, Ljn/s;->d:[I

    iget v10, v0, Ljn/G;->a:I

    aget v9, v9, v10

    :goto_0
    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget-object v11, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljn/p;

    iget-wide v11, v11, Ljn/p;->a:J

    cmp-long v11, v11, p5

    if-nez v11, :cond_0

    iget-object v11, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljn/p;

    goto :goto_1

    :cond_0
    iget-object v10, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljn/p;

    iget v9, v9, Ljn/p;->b:I

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_2

    const-string v0, "No link found"

    invoke-static {v0}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljn/G;->b()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v11, v12, :cond_5

    iget-object v2, v1, Ljn/s;->d:[I

    iget v3, v0, Ljn/G;->a:I

    aget v2, v2, v3

    :goto_2
    if-eq v2, v10, :cond_4

    iget-object v3, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljn/p;

    iget-wide v11, v3, Ljn/p;->a:J

    cmp-long v3, v11, p5

    if-nez v3, :cond_3

    iget-object v3, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/p;

    iget v2, v2, Ljn/p;->c:I

    iget-object v3, v1, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->b:[F

    iget-object v9, v0, Ljn/G;->b:[I

    aget v9, v9, v2

    mul-int/2addr v9, v6

    invoke-static {v3, v9, v7, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v1, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->b:[F

    iget-object v0, v0, Ljn/G;->b:[I

    aget v0, v0, v2

    mul-int/2addr v0, v6

    invoke-static {v1, v0, v8, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljn/A$b;

    invoke-direct {v0, v7, v8, v4, v5}, Ljn/A$b;-><init>([F[FII)V

    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v3, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/p;

    iget v2, v2, Ljn/p;->b:I

    goto :goto_2

    :cond_4
    const-string v0, "Invalid offmesh from connection"

    invoke-static {v0}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljn/G;->b()I

    move-result v11

    if-ne v11, v12, :cond_8

    iget-object v0, v3, Ljn/s;->d:[I

    iget v1, v2, Ljn/G;->a:I

    aget v0, v0, v1

    :goto_3
    if-eq v0, v10, :cond_7

    iget-object v1, v3, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/p;

    iget-wide v11, v1, Ljn/p;->a:J

    cmp-long v1, v11, p1

    if-nez v1, :cond_6

    iget-object v1, v3, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v0, v0, Ljn/p;->c:I

    iget-object v1, v3, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->b:[F

    iget-object v9, v2, Ljn/G;->b:[I

    aget v9, v9, v0

    mul-int/2addr v9, v6

    invoke-static {v1, v9, v7, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v3, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->b:[F

    iget-object v2, v2, Ljn/G;->b:[I

    aget v0, v2, v0

    mul-int/2addr v0, v6

    invoke-static {v1, v0, v8, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljn/A$b;

    invoke-direct {v0, v7, v8, v4, v5}, Ljn/A$b;-><init>([F[FII)V

    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, v3, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v0, v0, Ljn/p;->b:I

    goto :goto_3

    :cond_7
    const-string v0, "Invalid offmesh to connection"

    invoke-static {v0}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v2, v0, Ljn/G;->b:[I

    iget v3, v9, Ljn/p;->c:I

    aget v10, v2, v3

    add-int/2addr v3, v12

    iget v0, v0, Ljn/G;->e:I

    rem-int/2addr v3, v0

    aget v0, v2, v3

    iget-object v2, v1, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    mul-int/2addr v10, v6

    invoke-static {v2, v10, v7, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    mul-int/2addr v0, v6

    invoke-static {v2, v0, v8, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v9, Ljn/p;->d:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_a

    iget v2, v9, Ljn/p;->e:I

    if-nez v2, :cond_9

    iget v6, v9, Ljn/p;->f:I

    if-eq v6, v3, :cond_a

    :cond_9
    int-to-float v2, v2

    const v3, 0x3b808081

    mul-float/2addr v2, v3

    iget v6, v9, Ljn/p;->f:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    iget-object v3, v1, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->b:[F

    invoke-static {v3, v10, v0, v2}, Ljn/g;->M([FIIF)[F

    move-result-object v7

    iget-object v1, v1, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->b:[F

    invoke-static {v1, v10, v0, v6}, Ljn/g;->M([FIIF)[F

    move-result-object v8

    :cond_a
    new-instance v0, Ljn/A$b;

    invoke-direct {v0, v7, v8, v4, v5}, Ljn/A$b;-><init>([F[FII)V

    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public E(JJ[F[FLjn/L;I)Ljn/Q;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter",
            "options"
        }
    .end annotation

    new-instance v9, Ljn/e;

    invoke-direct {v9}, Ljn/e;-><init>()V

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Ljn/A;->G(JJ[F[FLjn/L;ILjn/M;F)Ljn/Q;

    move-result-object v0

    return-object v0
.end method

.method public F(JJ[F[FLjn/L;IF)Ljn/Q;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter",
            "options",
            "raycastLimit"
        }
    .end annotation

    new-instance v9, Ljn/e;

    invoke-direct {v9}, Ljn/e;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Ljn/A;->G(JJ[F[FLjn/L;ILjn/M;F)Ljn/Q;

    move-result-object v0

    return-object v0
.end method

.method public G(JJ[F[FLjn/L;ILjn/M;F)Ljn/Q;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter",
            "options",
            "heuristic",
            "raycastLimit"
        }
    .end annotation

    new-instance v0, Ljn/K;

    invoke-direct {v0}, Ljn/K;-><init>()V

    iput-object v0, p0, Ljn/A;->d:Ljn/K;

    sget-object v1, Ljn/Q;->FAILURE:Ljn/Q;

    iput-object v1, v0, Ljn/K;->a:Ljn/Q;

    iput-wide p1, v0, Ljn/K;->d:J

    iput-wide p3, v0, Ljn/K;->e:J

    iget-object v0, v0, Ljn/K;->f:[F

    invoke-static {v0, p5}, Ljn/g;->w([F[F)V

    iget-object v0, p0, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->g:[F

    invoke-static {v0, p6}, Ljn/g;->w([F[F)V

    iget-object v0, p0, Ljn/A;->d:Ljn/K;

    iput-object p7, v0, Ljn/K;->h:Ljn/L;

    iput p8, v0, Ljn/K;->i:I

    iput-object p9, v0, Ljn/K;->k:Ljn/M;

    invoke-static {p10}, Ljn/g;->s(F)F

    move-result v1

    iput v1, v0, Ljn/K;->j:F

    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p1, p2}, Ljn/v;->S(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p3, p4}, Ljn/v;->S(J)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p5, :cond_3

    invoke-static {p5}, Ljn/g;->I([F)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p6, :cond_3

    invoke-static {p6}, Ljn/g;->I([F)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p7, p8, 0x2

    const/4 p8, 0x0

    if-eqz p7, :cond_1

    cmpg-float p7, p10, p8

    if-gez p7, :cond_1

    iget-object p7, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {p7, p1, p2}, Ljn/v;->M(J)Ljn/s;

    move-result-object p7

    iget-object p7, p7, Ljn/s;->c:Ljn/q;

    iget-object p7, p7, Ljn/q;->a:Ljn/r;

    iget p7, p7, Ljn/r;->q:F

    iget-object p10, p0, Ljn/A;->d:Ljn/K;

    sget v0, Ljn/v;->t:F

    mul-float/2addr p7, v0

    invoke-static {p7}, Ljn/g;->s(F)F

    move-result p7

    iput p7, p10, Ljn/K;->j:F

    :cond_1
    cmp-long p3, p1, p3

    if-nez p3, :cond_2

    iget-object p1, p0, Ljn/A;->d:Ljn/K;

    sget-object p2, Ljn/Q;->SUCCSESS:Ljn/Q;

    iput-object p2, p1, Ljn/K;->a:Ljn/Q;

    return-object p2

    :cond_2
    iget-object p3, p0, Ljn/A;->b:Ljn/C;

    invoke-virtual {p3}, Ljn/C;->a()V

    iget-object p3, p0, Ljn/A;->c:Ljn/E;

    invoke-virtual {p3}, Ljn/E;->b()V

    iget-object p3, p0, Ljn/A;->b:Ljn/C;

    invoke-virtual {p3, p1, p2}, Ljn/C;->e(J)Ljn/B;

    move-result-object p3

    iget-object p4, p3, Ljn/B;->b:[F

    invoke-static {p4, p5}, Ljn/g;->w([F[F)V

    const/4 p4, 0x0

    iput p4, p3, Ljn/B;->e:I

    iput p8, p3, Ljn/B;->c:F

    invoke-interface {p9, p5, p6}, Ljn/M;->a([F[F)F

    move-result p4

    iput p4, p3, Ljn/B;->d:F

    iput-wide p1, p3, Ljn/B;->h:J

    sget p1, Ljn/B;->j:I

    iput p1, p3, Ljn/B;->g:I

    iget-object p1, p0, Ljn/A;->c:Ljn/E;

    invoke-virtual {p1, p3}, Ljn/E;->g(Ljn/B;)V

    iget-object p1, p0, Ljn/A;->d:Ljn/K;

    sget-object p2, Ljn/Q;->IN_PROGRESS:Ljn/Q;

    iput-object p2, p1, Ljn/K;->a:Ljn/Q;

    iput-object p3, p1, Ljn/K;->b:Ljn/B;

    iget p3, p3, Ljn/B;->d:F

    iput p3, p1, Ljn/K;->c:F

    return-object p2

    :cond_3
    :goto_0
    sget-object p1, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    return-object p1
.end method

.method public H(Ljava/util/List;IIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ints",
            "tmin",
            "tmax",
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljn/A$c;",
            ">;IIJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/A$c;

    iget v1, v1, Ljn/A$c;->b:I

    if-gt p3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Ljn/A$c;

    invoke-direct {v1, p4, p5, p2, p3}, Ljn/A$c;-><init>(JII)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public I(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    iget-object v0, p0, Ljn/A;->b:Ljn/C;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljn/C;->d(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljn/B;

    iget p2, p2, Ljn/B;->g:I

    sget v0, Ljn/B;->k:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public J(JLjn/L;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "filter"
        }
    .end annotation

    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p1, p2}, Ljn/v;->J(J)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/U;

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v1, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljn/G;

    invoke-interface {p3, p1, p2, v1, v0}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic K([F[FLjn/L;Ljn/I;Ljn/s;)V
    .locals 6

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljn/A;->N(Ljn/s;[F[FLjn/L;Ljn/I;)V

    return-void
.end method

.method public L(J[F[FLjn/L;)Ljn/O;
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "startPos",
            "endPos",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F[F",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/t;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v6, v1, v2}, Ljn/v;->S(J)Z

    move-result v6

    if-eqz v6, :cond_14

    if-eqz v3, :cond_14

    invoke-static/range {p3 .. p3}, Ljn/g;->I([F)Z

    move-result v6

    if-eqz v6, :cond_14

    if-eqz v4, :cond_14

    invoke-static/range {p4 .. p4}, Ljn/g;->I([F)Z

    move-result v6

    if-eqz v6, :cond_14

    if-nez v5, :cond_0

    goto/16 :goto_f

    :cond_0
    new-instance v6, Ljn/C;

    invoke-direct {v6}, Ljn/C;-><init>()V

    invoke-virtual {v6, v1, v2}, Ljn/C;->e(J)Ljn/B;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Ljn/B;->e:I

    const/4 v9, 0x0

    iput v9, v7, Ljn/B;->c:F

    iput v9, v7, Ljn/B;->d:F

    iput-wide v1, v7, Ljn/B;->h:J

    sget v1, Ljn/B;->k:I

    iput v1, v7, Ljn/B;->g:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    new-array v7, v2, [F

    invoke-static {v7, v3}, Ljn/g;->w([F[F)V

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v9}, Ljn/g;->N([F[FF)[F

    move-result-object v9

    invoke-static/range {p3 .. p4}, Ljn/g;->z([F[F)F

    move-result v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    const v10, 0x3a83126f    # 0.001f

    add-float/2addr v3, v10

    invoke-static {v3}, Ljn/g;->s(F)F

    move-result v3

    iget-object v10, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v10}, Ljn/v;->y()I

    move-result v10

    mul-int/2addr v10, v2

    new-array v10, v10, [F

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljn/B;

    move/from16 p2, v12

    iget-wide v11, v14, Ljn/B;->h:J

    iget-object v15, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v15, v11, v12}, Ljn/v;->K(J)Ljn/U;

    move-result-object v11

    iget-object v12, v11, Ljn/U;->a:Ljava/lang/Object;

    check-cast v12, Ljn/s;

    iget-object v11, v11, Ljn/U;->b:Ljava/lang/Object;

    check-cast v11, Ljn/G;

    iget v15, v11, Ljn/G;->e:I

    :goto_1
    if-ge v8, v15, :cond_1

    iget-object v2, v12, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    move-object/from16 p3, v13

    iget-object v13, v11, Ljn/G;->b:[I

    aget v13, v13, v8

    move-object/from16 v18, v1

    const/4 v1, 0x3

    mul-int/2addr v13, v1

    move-object/from16 v17, v14

    mul-int/lit8 v14, v8, 0x3

    invoke-static {v2, v13, v10, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v13, p3

    move v2, v1

    move-object/from16 v14, v17

    move-object/from16 v1, v18

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    move v1, v2

    move-object/from16 p3, v13

    move-object/from16 v17, v14

    invoke-static {v4, v10, v15}, Ljn/g;->p([F[FI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v7, v4}, Ljn/g;->w([F[F)V

    move-object/from16 v13, v17

    goto/16 :goto_c

    :cond_2
    iget v2, v11, Ljn/G;->e:I

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object v13, v7

    move v7, v2

    const/4 v2, 0x0

    :goto_2
    iget v1, v11, Ljn/G;->e:I

    if-ge v2, v1, :cond_f

    const/16 v1, 0x8

    new-array v8, v1, [J

    iget-object v1, v11, Ljn/G;->c:[I

    aget v1, v1, v7

    const v19, 0x8000

    and-int v19, v1, v19

    if-eqz v19, :cond_8

    iget-object v1, v12, Ljn/s;->d:[I

    move-object/from16 v19, v13

    iget v13, v11, Ljn/G;->a:I

    aget v1, v1, v13

    move-object/from16 v20, v11

    const/4 v13, 0x0

    :goto_3
    const/4 v11, -0x1

    if-eq v1, v11, :cond_7

    iget-object v11, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljn/p;

    move-object/from16 v21, v15

    iget v15, v11, Ljn/p;->c:I

    if-ne v15, v7, :cond_5

    move/from16 v22, v14

    iget-wide v14, v11, Ljn/p;->a:J

    const-wide/16 v23, 0x0

    cmp-long v23, v14, v23

    if-eqz v23, :cond_4

    move/from16 v23, v3

    iget-object v3, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v14, v15}, Ljn/v;->K(J)Ljn/U;

    move-result-object v3

    iget-object v14, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v14, Ljn/s;

    iget-object v3, v3, Ljn/U;->b:Ljava/lang/Object;

    check-cast v3, Ljn/G;

    move-object v15, v9

    move-object/from16 v24, v10

    iget-wide v9, v11, Ljn/p;->a:J

    invoke-interface {v5, v9, v10, v14, v3}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    if-ge v13, v3, :cond_6

    add-int/lit8 v9, v13, 0x1

    iget-wide v10, v11, Ljn/p;->a:J

    aput-wide v10, v8, v13

    move v13, v9

    goto :goto_5

    :cond_3
    :goto_4
    const/16 v3, 0x8

    goto :goto_5

    :cond_4
    move/from16 v23, v3

    move-object v15, v9

    move-object/from16 v24, v10

    goto :goto_4

    :cond_5
    move/from16 v23, v3

    move-object v15, v9

    move-object/from16 v24, v10

    move/from16 v22, v14

    goto :goto_4

    :cond_6
    :goto_5
    iget-object v9, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/p;

    iget v1, v1, Ljn/p;->b:I

    move-object v9, v15

    move-object/from16 v15, v21

    move/from16 v14, v22

    move/from16 v3, v23

    move-object/from16 v10, v24

    goto :goto_3

    :cond_7
    move/from16 v23, v3

    move-object/from16 v24, v10

    move/from16 v22, v14

    move-object/from16 v21, v15

    move-object v15, v9

    move v1, v13

    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    move/from16 v23, v3

    move-object/from16 v24, v10

    move-object/from16 v20, v11

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object/from16 v21, v15

    move-object v15, v9

    if-eqz v1, :cond_9

    add-int/lit8 v1, v1, -0x1

    iget-object v3, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v12}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v9

    int-to-long v13, v1

    or-long/2addr v9, v13

    iget-object v3, v12, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->c:[Ljn/G;

    aget-object v1, v3, v1

    invoke-interface {v5, v9, v10, v12, v1}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v13, 0x0

    aput-wide v9, v8, v13

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    move v1, v13

    :goto_6
    if-nez v1, :cond_b

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v1, v2, 0x3

    move-object/from16 v3, v24

    invoke-static {v4, v3, v7, v1}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v8

    iget-object v9, v8, Ljn/U;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v8, v8, Ljn/U;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v10, v9, v22

    if-gez v10, :cond_a

    invoke-static {v3, v7, v1, v8}, Ljn/g;->M([FIIF)[F

    move-result-object v1

    move v14, v9

    move-object/from16 v21, v17

    goto :goto_7

    :cond_a
    move-object/from16 v1, v19

    move/from16 v14, v22

    :goto_7
    move/from16 v22, v14

    move-object/from16 v14, v17

    move-object/from16 v11, v18

    goto :goto_b

    :cond_b
    move-object/from16 v3, v24

    move v9, v13

    :goto_8
    if-ge v9, v1, :cond_e

    aget-wide v10, v8, v9

    invoke-virtual {v6, v10, v11}, Ljn/C;->e(J)Ljn/B;

    move-result-object v10

    iget v11, v10, Ljn/B;->g:I

    sget v14, Ljn/B;->k:I

    and-int/2addr v11, v14

    if-eqz v11, :cond_c

    :goto_9
    move-object/from16 v14, v17

    move-object/from16 v11, v18

    goto :goto_a

    :cond_c
    mul-int/lit8 v11, v7, 0x3

    mul-int/lit8 v14, v2, 0x3

    invoke-static {v15, v3, v11, v14}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v11

    iget-object v11, v11, Ljn/U;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v23

    if-lez v11, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v14, v17

    invoke-virtual {v6, v14}, Ljn/C;->h(Ljn/B;)I

    move-result v11

    iput v11, v10, Ljn/B;->e:I

    iget v11, v10, Ljn/B;->g:I

    sget v16, Ljn/B;->k:I

    or-int v11, v11, v16

    iput v11, v10, Ljn/B;->g:I

    move-object/from16 v11, v18

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v18, v11

    move-object/from16 v17, v14

    goto :goto_8

    :cond_e
    move-object/from16 v14, v17

    move-object/from16 v11, v18

    move-object/from16 v1, v19

    :goto_b
    add-int/lit8 v7, v2, 0x1

    move-object v13, v1

    move-object v10, v3

    move-object/from16 v18, v11

    move-object/from16 v17, v14

    move-object v9, v15

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    move/from16 v14, v22

    move/from16 v3, v23

    const/4 v8, 0x1

    move/from16 v25, v7

    move v7, v2

    move/from16 v2, v25

    goto/16 :goto_2

    :cond_f
    move/from16 v23, v3

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object/from16 v21, v15

    move-object/from16 v1, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v21

    move/from16 v12, v22

    const/4 v2, 0x3

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_10
    move-object/from16 p3, v13

    :goto_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_13

    move-object v11, v13

    const/4 v2, 0x0

    :goto_d
    iget v3, v11, Ljn/B;->e:I

    invoke-virtual {v6, v3}, Ljn/C;->g(I)Ljn/B;

    move-result-object v3

    invoke-virtual {v6, v2}, Ljn/C;->h(Ljn/B;)I

    move-result v2

    iput v2, v11, Ljn/B;->e:I

    if-nez v3, :cond_12

    :cond_11
    iget-wide v2, v11, Ljn/B;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v11, Ljn/B;->e:I

    invoke-virtual {v6, v2}, Ljn/C;->g(I)Ljn/B;

    move-result-object v11

    if-nez v11, :cond_11

    goto :goto_e

    :cond_12
    move-object v2, v11

    move-object v11, v3

    goto :goto_d

    :cond_13
    :goto_e
    new-instance v2, Ljn/t;

    invoke-direct {v2, v7, v1}, Ljn/t;-><init>([FLjava/util/List;)V

    invoke-static {v2}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v1

    return-object v1

    :cond_14
    :goto_f
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v1

    return-object v1
.end method

.method public M([F[FLjn/L;Ljn/I;)Ljn/Q;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "center",
            "halfExtents",
            "filter",
            "query"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljn/g;->I([F)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljn/g;->I([F)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljn/g;->W([F[F)[F

    move-result-object v3

    invoke-static {p1, p2}, Ljn/g;->v([F[F)[F

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Ljn/A;->O([F[F)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljn/z;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljn/z;-><init>(Ljn/A;[F[FLjn/L;Ljn/I;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Ljn/Q;->SUCCSESS:Ljn/Q;

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    return-object p1
.end method

.method public N(Ljn/s;[F[FLjn/L;Ljn/I;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "qmin",
            "qmax",
            "filter",
            "query"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v1, Ljn/s;->c:Ljn/q;

    iget-object v7, v6, Ljn/q;->g:[Ljn/a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    iget-object v6, v6, Ljn/q;->a:Ljn/r;

    iget-object v7, v6, Ljn/r;->s:[F

    iget-object v10, v6, Ljn/r;->t:[F

    iget v6, v6, Ljn/r;->u:F

    aget v11, v2, v8

    aget v12, v7, v8

    aget v13, v10, v8

    invoke-static {v11, v12, v13}, Ljn/g;->a(FFF)F

    move-result v11

    aget v12, v7, v8

    sub-float/2addr v11, v12

    aget v12, v2, v9

    aget v13, v7, v9

    aget v14, v10, v9

    invoke-static {v12, v13, v14}, Ljn/g;->a(FFF)F

    move-result v12

    aget v13, v7, v9

    sub-float/2addr v12, v13

    const/4 v13, 0x2

    aget v2, v2, v13

    aget v14, v7, v13

    aget v15, v10, v13

    invoke-static {v2, v14, v15}, Ljn/g;->a(FFF)F

    move-result v2

    aget v14, v7, v13

    sub-float/2addr v2, v14

    aget v14, v3, v8

    aget v15, v7, v8

    aget v13, v10, v8

    invoke-static {v14, v15, v13}, Ljn/g;->a(FFF)F

    move-result v13

    aget v14, v7, v8

    sub-float/2addr v13, v14

    aget v14, v3, v9

    aget v15, v7, v9

    aget v8, v10, v9

    invoke-static {v14, v15, v8}, Ljn/g;->a(FFF)F

    move-result v8

    aget v14, v7, v9

    sub-float/2addr v8, v14

    const/4 v14, 0x2

    aget v3, v3, v14

    aget v15, v7, v14

    aget v10, v10, v14

    invoke-static {v3, v15, v10}, Ljn/g;->a(FFF)F

    move-result v3

    aget v7, v7, v14

    sub-float/2addr v3, v7

    mul-float/2addr v11, v6

    float-to-int v7, v11

    const v10, 0x7ffffffe

    and-int/2addr v7, v10

    mul-float/2addr v12, v6

    float-to-int v11, v12

    and-int/2addr v11, v10

    mul-float/2addr v2, v6

    float-to-int v2, v2

    and-int/2addr v2, v10

    filled-new-array {v7, v11, v2}, [I

    move-result-object v2

    mul-float/2addr v13, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v13, v7

    float-to-int v10, v13

    or-int/2addr v10, v9

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    float-to-int v8, v8

    or-int/2addr v8, v9

    mul-float/2addr v6, v3

    add-float/2addr v6, v7

    float-to-int v3, v6

    or-int/2addr v3, v9

    filled-new-array {v10, v8, v3}, [I

    move-result-object v3

    iget-object v6, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v6, v1}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v6

    iget-object v8, v1, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->a:Ljn/r;

    iget v8, v8, Ljn/r;->m:I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_a

    iget-object v11, v1, Ljn/s;->c:Ljn/q;

    iget-object v11, v11, Ljn/q;->g:[Ljn/a;

    aget-object v11, v11, v10

    iget-object v12, v11, Ljn/a;->a:[I

    iget-object v13, v11, Ljn/a;->b:[I

    invoke-static {v2, v3, v12, v13}, Ljn/g;->n([I[I[I[I)Z

    move-result v12

    iget v13, v11, Ljn/a;->c:I

    if-ltz v13, :cond_0

    move v14, v9

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_1

    if-eqz v12, :cond_1

    move/from16 v16, v10

    int-to-long v9, v13

    or-long/2addr v9, v6

    iget-object v15, v1, Ljn/s;->c:Ljn/q;

    iget-object v15, v15, Ljn/q;->c:[Ljn/G;

    aget-object v13, v15, v13

    invoke-interface {v4, v9, v10, v1, v13}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v1, Ljn/s;->c:Ljn/q;

    iget-object v13, v13, Ljn/q;->c:[Ljn/G;

    iget v15, v11, Ljn/a;->c:I

    aget-object v13, v13, v15

    invoke-interface {v5, v1, v13, v9, v10}, Ljn/I;->a(Ljn/s;Ljn/G;J)V

    goto :goto_2

    :cond_1
    move/from16 v16, v10

    :cond_2
    :goto_2
    if-nez v12, :cond_4

    if-eqz v14, :cond_3

    goto :goto_3

    :cond_3
    iget v9, v11, Ljn/a;->c:I

    neg-int v9, v9

    add-int v10, v16, v9

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v10, v16, 0x1

    :goto_4
    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x3

    new-array v7, v6, [F

    new-array v8, v6, [F

    iget-object v9, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v9, v1}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v9

    const/4 v11, 0x0

    :goto_5
    iget-object v12, v1, Ljn/s;->c:Ljn/q;

    iget-object v13, v12, Ljn/q;->a:Ljn/r;

    iget v13, v13, Ljn/r;->g:I

    if-ge v11, v13, :cond_a

    iget-object v12, v12, Ljn/q;->c:[Ljn/G;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Ljn/G;->b()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    :goto_6
    move/from16 v17, v6

    const/16 v16, 0x0

    goto :goto_8

    :cond_6
    int-to-long v14, v11

    or-long v13, v9, v14

    invoke-interface {v4, v13, v14, v1, v12}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_6

    :cond_7
    iget-object v15, v12, Ljn/G;->b:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    mul-int/2addr v15, v6

    iget-object v6, v1, Ljn/s;->c:Ljn/q;

    iget-object v6, v6, Ljn/q;->b:[F

    invoke-static {v7, v6, v15}, Ljn/g;->x([F[FI)V

    iget-object v6, v1, Ljn/s;->c:Ljn/q;

    iget-object v6, v6, Ljn/q;->b:[F

    invoke-static {v8, v6, v15}, Ljn/g;->x([F[FI)V

    const/4 v6, 0x1

    :goto_7
    iget v15, v12, Ljn/G;->e:I

    if-ge v6, v15, :cond_8

    iget-object v15, v12, Ljn/G;->b:[I

    aget v15, v15, v6

    const/16 v17, 0x3

    mul-int/lit8 v15, v15, 0x3

    iget-object v0, v1, Ljn/s;->c:Ljn/q;

    iget-object v0, v0, Ljn/q;->b:[F

    invoke-static {v7, v0, v15}, Ljn/g;->Q([F[FI)V

    iget-object v0, v1, Ljn/s;->c:Ljn/q;

    iget-object v0, v0, Ljn/q;->b:[F

    invoke-static {v8, v0, v15}, Ljn/g;->P([F[FI)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_8
    const/16 v17, 0x3

    invoke-static {v2, v3, v7, v8}, Ljn/g;->l([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5, v1, v12, v13, v14}, Ljn/I;->a(Ljn/s;Ljn/G;J)V

    :cond_9
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v6, v17

    goto :goto_5

    :cond_a
    return-void
.end method

.method public O([F[F)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "halfExtents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/List<",
            "Ljn/s;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljn/g;->I([F)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljn/g;->I([F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1, p2}, Ljn/g;->W([F[F)[F

    move-result-object v0

    invoke-static {p1, p2}, Ljn/g;->v([F[F)[F

    move-result-object p1

    iget-object p2, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {p2, v0}, Ljn/v;->h([F)[I

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget p2, p2, v2

    iget-object v3, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, p1}, Ljn/v;->h([F)[I

    move-result-object p1

    aget v0, p1, v0

    aget p1, p1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p2, p1, :cond_2

    move v3, v1

    :goto_1
    if-gt v3, v0, :cond_1

    iget-object v4, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v4, v3, p2}, Ljn/v;->R(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public P(J[F[FLjn/L;IJ)Ljn/O;
    .locals 38
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "startPos",
            "endPos",
            "filter",
            "options",
            "prevRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F[F",
            "Ljn/L;",
            "IJ)",
            "Ljn/O<",
            "Ljn/N;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v15, p5

    move-wide/from16 v5, p7

    iget-object v7, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v7, v1, v2}, Ljn/v;->S(J)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v3, :cond_18

    invoke-static/range {p3 .. p3}, Ljn/g;->I([F)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v4, :cond_18

    invoke-static/range {p4 .. p4}, Ljn/g;->I([F)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v15, :cond_18

    const-wide/16 v20, 0x0

    cmp-long v7, v5, v20

    if-eqz v7, :cond_0

    iget-object v8, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v8, v5, v6}, Ljn/v;->S(J)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_10

    :cond_0
    new-instance v14, Ljn/N;

    invoke-direct {v14}, Ljn/N;-><init>()V

    iget-object v8, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v8}, Ljn/v;->y()I

    move-result v8

    const/4 v12, 0x3

    mul-int/2addr v8, v12

    add-int/2addr v8, v12

    new-array v13, v8, [F

    new-array v8, v12, [F

    new-array v11, v12, [F

    invoke-static {v8, v3}, Ljn/g;->w([F[F)V

    invoke-static {v4, v3}, Ljn/g;->W([F[F)[F

    move-result-object v10

    iget-object v9, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v9, v1, v2}, Ljn/v;->K(J)Ljn/U;

    move-result-object v9

    iget-object v12, v9, Ljn/U;->a:Ljava/lang/Object;

    check-cast v12, Ljn/s;

    iget-object v9, v9, Ljn/U;->b:Ljava/lang/Object;

    check-cast v9, Ljn/G;

    if-eqz v7, :cond_1

    iget-object v7, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v7, v5, v6}, Ljn/v;->K(J)Ljn/U;

    move-result-object v7

    iget-object v1, v7, Ljn/U;->a:Ljava/lang/Object;

    check-cast v1, Ljn/s;

    iget-object v2, v7, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljn/G;

    move-wide/from16 v22, p1

    move-object/from16 v17, v2

    move-object v2, v8

    move-object v7, v12

    move-object v12, v1

    move-wide/from16 v36, v5

    move-object v6, v9

    move-wide/from16 v8, v36

    goto :goto_0

    :cond_1
    move-wide/from16 v22, p1

    move-object v2, v8

    move-object/from16 v17, v9

    move-object v7, v12

    move-wide v8, v5

    move-object/from16 v6, v17

    :goto_0
    cmp-long v1, v22, v20

    if-eqz v1, :cond_17

    move-object/from16 v18, v10

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    iget v10, v6, Ljn/G;->e:I

    if-ge v5, v10, :cond_2

    iget-object v10, v7, Ljn/s;->c:Ljn/q;

    iget-object v10, v10, Ljn/q;->b:[F

    move-object/from16 v19, v7

    iget-object v7, v6, Ljn/G;->b:[I

    aget v7, v7, v5

    move-object/from16 p2, v6

    const/4 v6, 0x3

    mul-int/2addr v7, v6

    move-object/from16 v24, v11

    mul-int/lit8 v11, v1, 0x3

    invoke-static {v10, v7, v13, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, v19

    move-object/from16 v11, v24

    goto :goto_1

    :cond_2
    move-object/from16 p2, v6

    move-object/from16 v19, v7

    move-object/from16 v24, v11

    invoke-static {v3, v4, v13, v1}, Ljn/g;->i([F[F[FI)Ljn/g$a;

    move-result-object v11

    iget-boolean v5, v11, Ljn/g$a;->a:Z

    if-nez v5, :cond_3

    invoke-static {v14}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v1

    return-object v1

    :cond_3
    iget v5, v11, Ljn/g$a;->e:I

    iput v5, v14, Ljn/N;->e:I

    iget v5, v11, Ljn/g$a;->c:F

    iget v6, v14, Ljn/N;->a:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    iput v5, v14, Ljn/N;->a:F

    :cond_4
    iget-object v5, v14, Ljn/N;->c:Ljava/util/List;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v11, Ljn/g$a;->e:I

    const/4 v6, -0x1

    const/4 v10, 0x1

    if-ne v5, v6, :cond_6

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v14, Ljn/N;->a:F

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_5

    iget v13, v14, Ljn/N;->d:F

    move-object/from16 v1, p5

    move-object/from16 v3, p4

    move-wide v4, v8

    move-object/from16 v15, p2

    move-object v6, v12

    move-object/from16 v12, v19

    move-object/from16 v7, v17

    move-wide/from16 v8, v22

    move-object v10, v12

    move-object v11, v15

    move-object/from16 p2, v12

    move/from16 v16, v13

    move-wide/from16 v12, v22

    move-object v0, v14

    move-object/from16 v14, p2

    invoke-interface/range {v1 .. v15}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v1

    add-float v13, v16, v1

    iput v13, v0, Ljn/N;->d:F

    goto :goto_2

    :cond_5
    move-object v0, v14

    :goto_2
    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v0, v14

    move-object/from16 v7, v19

    move-object/from16 v14, p2

    iget-object v5, v7, Ljn/s;->d:[I

    iget v10, v14, Ljn/G;->a:I

    aget v5, v5, v10

    move-object/from16 p7, v0

    move-object v10, v14

    :goto_3
    if-eq v5, v6, :cond_12

    iget-object v6, v7, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljn/p;

    iget v0, v6, Ljn/p;->c:I

    move-object/from16 v26, v10

    iget v10, v11, Ljn/g$a;->e:I

    if-eq v0, v10, :cond_7

    move-object/from16 v10, p7

    move/from16 v29, v1

    move-wide/from16 v27, v8

    move-object/from16 p7, v12

    goto/16 :goto_a

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v10, p7

    move-object/from16 p7, v12

    iget-object v12, v0, Ljn/A;->a:Ljn/v;

    move-wide/from16 v27, v8

    iget-wide v8, v6, Ljn/p;->a:J

    invoke-virtual {v12, v8, v9}, Ljn/v;->K(J)Ljn/U;

    move-result-object v8

    iget-object v9, v8, Ljn/U;->a:Ljava/lang/Object;

    check-cast v9, Ljn/s;

    iget-object v8, v8, Ljn/U;->b:Ljava/lang/Object;

    check-cast v8, Ljn/G;

    invoke-virtual {v8}, Ljn/G;->b()I

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_8

    move/from16 v29, v1

    :goto_4
    move-object/from16 v19, v8

    move-object/from16 v30, v9

    goto/16 :goto_9

    :cond_8
    move/from16 v29, v1

    iget-wide v0, v6, Ljn/p;->a:J

    invoke-interface {v15, v0, v1, v9, v8}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    iget v0, v6, Ljn/p;->d:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    iget-wide v0, v6, Ljn/p;->a:J

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    goto/16 :goto_b

    :cond_a
    iget v12, v6, Ljn/p;->e:I

    move-object/from16 v19, v8

    if-nez v12, :cond_b

    iget v8, v6, Ljn/p;->f:I

    if-ne v8, v1, :cond_b

    iget-wide v0, v6, Ljn/p;->a:J

    move-object/from16 v30, v9

    :goto_5
    move-object/from16 v26, v19

    goto/16 :goto_b

    :cond_b
    iget-object v1, v14, Ljn/G;->b:[I

    iget v8, v6, Ljn/p;->c:I

    aget v26, v1, v8

    const/16 v30, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v30, v9

    iget v9, v14, Ljn/G;->e:I

    rem-int/2addr v8, v9

    aget v1, v1, v8

    const/4 v8, 0x3

    mul-int/lit8 v26, v26, 0x3

    mul-int/2addr v1, v8

    if-eqz v0, :cond_f

    const/4 v8, 0x4

    if-ne v0, v8, :cond_c

    goto :goto_7

    :cond_c
    const/4 v8, 0x2

    if-eq v0, v8, :cond_d

    const/4 v8, 0x6

    if-ne v0, v8, :cond_11

    :cond_d
    iget-object v0, v7, Ljn/s;->c:Ljn/q;

    iget-object v0, v0, Ljn/q;->b:[F

    aget v8, v0, v26

    aget v0, v0, v1

    sub-float v1, v0, v8

    int-to-float v9, v12

    sget v12, Ljn/A;->m:F

    mul-float/2addr v9, v12

    mul-float/2addr v1, v9

    add-float/2addr v1, v8

    sub-float/2addr v0, v8

    iget v9, v6, Ljn/p;->f:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    mul-float/2addr v0, v9

    add-float/2addr v8, v0

    cmpl-float v0, v1, v8

    if-lez v0, :cond_e

    const/4 v0, 0x0

    move/from16 v36, v8

    move v8, v1

    move/from16 v1, v36

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    aget v9, v3, v0

    aget v12, v4, v0

    sub-float/2addr v12, v9

    iget v0, v11, Ljn/g$a;->c:F

    mul-float/2addr v12, v0

    add-float/2addr v9, v12

    cmpl-float v0, v9, v1

    if-ltz v0, :cond_11

    cmpg-float v0, v9, v8

    if-gtz v0, :cond_11

    iget-wide v0, v6, Ljn/p;->a:J

    goto :goto_5

    :cond_f
    :goto_7
    iget-object v0, v7, Ljn/s;->c:Ljn/q;

    iget-object v0, v0, Ljn/q;->b:[F

    add-int/lit8 v26, v26, 0x2

    aget v8, v0, v26

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    sub-float v1, v0, v8

    int-to-float v9, v12

    sget v12, Ljn/A;->m:F

    mul-float/2addr v9, v12

    mul-float/2addr v1, v9

    add-float/2addr v1, v8

    sub-float/2addr v0, v8

    iget v9, v6, Ljn/p;->f:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    mul-float/2addr v0, v9

    add-float/2addr v8, v0

    cmpl-float v0, v1, v8

    if-lez v0, :cond_10

    const/4 v0, 0x2

    move/from16 v36, v8

    move v8, v1

    move/from16 v1, v36

    goto :goto_8

    :cond_10
    const/4 v0, 0x2

    :goto_8
    aget v9, v3, v0

    aget v12, v4, v0

    sub-float/2addr v12, v9

    iget v0, v11, Ljn/g$a;->c:F

    mul-float/2addr v12, v0

    add-float/2addr v9, v12

    cmpl-float v0, v9, v1

    if-ltz v0, :cond_11

    cmpg-float v0, v9, v8

    if-gtz v0, :cond_11

    iget-wide v0, v6, Ljn/p;->a:J

    goto/16 :goto_5

    :cond_11
    :goto_9
    move-object/from16 v26, v19

    move-object/from16 v19, v30

    :goto_a
    iget-object v0, v7, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v5, v0, Ljn/p;->b:I

    move-object/from16 v12, p7

    move-object/from16 p7, v10

    move-object/from16 v10, v26

    move-wide/from16 v8, v27

    move/from16 v1, v29

    const/4 v6, -0x1

    goto/16 :goto_3

    :cond_12
    move/from16 v29, v1

    move-wide/from16 v27, v8

    move-object/from16 v26, v10

    move-object/from16 v10, p7

    move-object/from16 p7, v12

    move-object/from16 v30, v19

    move-wide/from16 v0, v20

    :goto_b
    and-int/lit8 v5, p6, 0x1

    if-eqz v5, :cond_14

    move-object/from16 v12, v24

    invoke-static {v12, v2}, Ljn/g;->w([F[F)V

    iget v2, v10, Ljn/N;->a:F

    move-object/from16 v8, v18

    invoke-static {v3, v8, v2}, Ljn/g;->O([F[FF)[F

    move-result-object v2

    new-instance v5, Ljn/W;

    iget v6, v11, Ljn/g$a;->e:I

    const/16 v16, 0x3

    mul-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v13, v6}, Ljn/W;-><init>([FI)V

    new-instance v6, Ljn/W;

    iget v9, v11, Ljn/g$a;->e:I

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    rem-int v9, v9, v29

    mul-int/lit8 v9, v9, 0x3

    invoke-direct {v6, v13, v9}, Ljn/W;-><init>([FI)V

    invoke-static {v6, v5}, Ljn/g;->V(Ljn/W;Ljn/W;)[F

    move-result-object v6

    new-instance v9, Ljn/W;

    invoke-direct {v9, v2}, Ljn/W;-><init>([F)V

    invoke-static {v9, v5}, Ljn/g;->V(Ljn/W;Ljn/W;)[F

    move-result-object v9

    const/16 v18, 0x0

    aget v19, v6, v18

    invoke-static/range {v19 .. v19}, Ljn/g;->s(F)F

    move-result v19

    const/16 v24, 0x2

    aget v25, v6, v24

    invoke-static/range {v25 .. v25}, Ljn/g;->s(F)F

    move-result v25

    cmpl-float v19, v19, v25

    if-lez v19, :cond_13

    aget v9, v9, v18

    aget v19, v6, v18

    div-float v9, v9, v19

    :goto_c
    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    aget v9, v9, v24

    aget v18, v6, v24

    div-float v9, v9, v18

    goto :goto_c

    :goto_d
    invoke-virtual {v5, v3}, Ljn/W;->a(I)F

    move-result v5

    aget v6, v6, v3

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aput v5, v2, v3

    iget v9, v10, Ljn/N;->d:F

    move-object/from16 v5, p5

    move-object v6, v12

    move-object/from16 v24, v7

    move-object v7, v2

    move-object/from16 v18, v8

    move/from16 v31, v9

    move-wide/from16 v8, v27

    move/from16 v28, v3

    move-object v3, v10

    move-object/from16 v27, v18

    move-object/from16 v10, p7

    move-object/from16 v32, v12

    move-object v12, v11

    move-object/from16 v11, v17

    move-object/from16 p2, v2

    move-object v2, v12

    move-object/from16 v34, v13

    move/from16 v33, v16

    move-wide/from16 v12, v22

    move-object/from16 v35, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v35

    move-wide/from16 v16, v0

    move-object/from16 v18, v30

    move-object/from16 v19, v26

    invoke-interface/range {v5 .. v19}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v5

    add-float v9, v31, v5

    iput v9, v3, Ljn/N;->d:F

    move-object/from16 v8, p2

    goto :goto_e

    :cond_14
    move-object v8, v2

    move-object v3, v10

    move-object v2, v11

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v27, v18

    move-object/from16 v32, v24

    const/16 v28, 0x1

    const/16 v33, 0x3

    move-object/from16 v24, v7

    :goto_e
    cmp-long v5, v0, v20

    if-nez v5, :cond_16

    iget v0, v2, Ljn/g$a;->e:I

    add-int/lit8 v1, v0, 0x1

    move/from16 v2, v29

    if-ge v1, v2, :cond_15

    add-int/lit8 v1, v0, 0x1

    goto :goto_f

    :cond_15
    const/4 v1, 0x0

    :goto_f
    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v1, 0x3

    aget v2, v34, v1

    aget v4, v34, v0

    sub-float/2addr v2, v4

    const/4 v4, 0x2

    add-int/2addr v1, v4

    aget v1, v34, v1

    add-int/2addr v0, v4

    aget v0, v34, v0

    sub-float/2addr v1, v0

    iget-object v0, v3, Ljn/N;->b:[F

    const/4 v5, 0x0

    aput v1, v0, v5

    const/4 v1, 0x0

    aput v1, v0, v28

    neg-float v1, v2

    aput v1, v0, v4

    invoke-static {v0}, Ljn/g;->R([F)V

    invoke-static {v3}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_16
    move-object/from16 v15, p5

    move-object v14, v3

    move-object v2, v8

    move-wide/from16 v8, v22

    move-object/from16 v12, v24

    move-object/from16 v6, v26

    move-object/from16 v10, v27

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v13, v34

    move-object/from16 v17, v35

    move-object/from16 v3, p3

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_17
    move-object v3, v14

    invoke-static {v3}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_10
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public Q(I)Ljn/O;
    .locals 54
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxIter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljn/O<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->a:Ljn/Q;

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v0, v1}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    iget-object v2, v11, Ljn/A;->d:Ljn/K;

    iget-wide v2, v2, Ljn/K;->d:J

    invoke-virtual {v0, v2, v3}, Ljn/v;->S(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    iget-object v2, v11, Ljn/A;->d:Ljn/K;

    iget-wide v2, v2, Ljn/K;->e:J

    invoke-virtual {v0, v2, v3}, Ljn/v;->S(J)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_11

    :cond_1
    move/from16 v13, p1

    move v0, v12

    :goto_0
    if-ge v0, v13, :cond_1c

    iget-object v1, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->c()Z

    move-result v1

    if-nez v1, :cond_1c

    add-int/lit8 v14, v0, 0x1

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0}, Ljn/E;->f()Ljn/B;

    move-result-object v15

    iget v0, v15, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, v15, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    or-int/2addr v0, v1

    iput v0, v15, Ljn/B;->g:I

    iget-wide v9, v15, Ljn/B;->h:J

    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    iget-wide v1, v0, Ljn/K;->e:J

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    iput-object v15, v0, Ljn/K;->b:Ljn/B;

    sget-object v1, Ljn/Q;->SUCCSESS:Ljn/Q;

    iput-object v1, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v9, v10}, Ljn/v;->J(J)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    sget-object v1, Ljn/Q;->FAILURE:Ljn/Q;

    iput-object v1, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/U;

    iget-object v1, v1, Ljn/U;->a:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljn/s;

    check-cast v0, Ljn/U;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljn/G;

    iget v0, v15, Ljn/B;->e:I

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    if-eqz v0, :cond_5

    iget-object v1, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v0}, Ljn/C;->g(I)Ljn/B;

    move-result-object v0

    iget-wide v1, v0, Ljn/B;->h:J

    iget v3, v0, Ljn/B;->e:I

    if-eqz v3, :cond_4

    iget-object v4, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v4, v3}, Ljn/C;->g(I)Ljn/B;

    move-result-object v3

    iget-wide v3, v3, Ljn/B;->h:J

    move-object v6, v0

    move-wide/from16 v52, v1

    move-wide v2, v3

    move-wide/from16 v4, v52

    goto :goto_1

    :cond_4
    move-object v6, v0

    move-wide v4, v1

    move-wide/from16 v2, v32

    goto :goto_1

    :cond_5
    move-object/from16 v6, v31

    move-wide/from16 v2, v32

    move-wide v4, v2

    :goto_1
    cmp-long v0, v4, v32

    if-eqz v0, :cond_8

    iget-object v1, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v1, v4, v5}, Ljn/v;->J(J)Ljn/O;

    move-result-object v1

    invoke-virtual {v1}, Ljn/O;->a()Z

    move-result v16

    if-nez v16, :cond_7

    cmp-long v16, v2, v32

    if-eqz v16, :cond_6

    iget-object v12, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v12, v2, v3}, Ljn/v;->S(J)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v1, Ljn/O;->a:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Ljn/U;

    iget-object v12, v12, Ljn/U;->a:Ljava/lang/Object;

    check-cast v12, Ljn/s;

    check-cast v1, Ljn/U;

    iget-object v1, v1, Ljn/U;->b:Ljava/lang/Object;

    check-cast v1, Ljn/G;

    move-object/from16 v35, v12

    move-object v12, v1

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    sget-object v1, Ljn/Q;->FAILURE:Ljn/Q;

    iput-object v1, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v12, v31

    move-object/from16 v35, v12

    :goto_3
    iget-object v1, v11, Ljn/A;->d:Ljn/K;

    move-wide/from16 v16, v2

    iget v2, v1, Ljn/K;->i:I

    and-int/lit8 v2, v2, 0x2

    const/16 v36, 0x1

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    iget v0, v1, Ljn/K;->j:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-gez v0, :cond_9

    iget-object v0, v6, Ljn/B;->b:[F

    iget-object v1, v15, Ljn/B;->b:[F

    invoke-static {v0, v1}, Ljn/g;->E([F[F)F

    move-result v0

    iget-object v1, v11, Ljn/A;->d:Ljn/K;

    iget v1, v1, Ljn/K;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    :cond_9
    move/from16 v37, v36

    goto :goto_4

    :cond_a
    const/16 v37, 0x0

    :goto_4
    iget-object v0, v7, Ljn/s;->d:[I

    iget v1, v8, Ljn/G;->a:I

    aget v0, v0, v1

    move v2, v0

    :goto_5
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1b

    iget-object v0, v7, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget-wide v0, v0, Ljn/p;->a:J

    cmp-long v3, v0, v32

    if-eqz v3, :cond_1a

    cmp-long v3, v0, v4

    if-nez v3, :cond_b

    move/from16 v47, v2

    move-wide/from16 v44, v4

    move-object v13, v6

    move-object v1, v7

    move-object/from16 v49, v8

    move-wide/from16 v50, v9

    move/from16 v46, v14

    move-wide/from16 v40, v16

    :goto_6
    const/16 v34, 0x0

    goto/16 :goto_10

    :cond_b
    iget-object v3, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v0, v1}, Ljn/v;->K(J)Ljn/U;

    move-result-object v3

    move/from16 v18, v2

    iget-object v2, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljn/s;

    iget-object v3, v3, Ljn/U;->b:Ljava/lang/Object;

    check-cast v3, Ljn/G;

    move-wide/from16 v19, v4

    iget-object v4, v11, Ljn/A;->d:Ljn/K;

    iget-object v4, v4, Ljn/K;->h:Ljn/L;

    invoke-interface {v4, v0, v1, v2, v3}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v4

    if-nez v4, :cond_c

    :goto_7
    move-object v13, v6

    move-object v1, v7

    move-object/from16 v49, v8

    move-wide/from16 v50, v9

    move/from16 v46, v14

    move-wide/from16 v40, v16

    move/from16 v47, v18

    move-wide/from16 v44, v19

    goto :goto_6

    :cond_c
    iget-object v4, v11, Ljn/A;->b:Ljn/C;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Ljn/C;->f(JI)Ljn/B;

    move-result-object v4

    iget v5, v4, Ljn/B;->e:I

    move-object/from16 v21, v2

    if-eqz v5, :cond_d

    iget v2, v15, Ljn/B;->e:I

    if-ne v5, v2, :cond_d

    goto :goto_7

    :cond_d
    iget-object v5, v4, Ljn/B;->b:[F

    iget-object v2, v11, Ljn/A;->d:Ljn/K;

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    iget-wide v3, v2, Ljn/K;->e:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_e

    iget-object v3, v15, Ljn/B;->b:[F

    iget-object v4, v2, Ljn/K;->g:[F

    move-wide v1, v0

    move-object/from16 v0, p0

    move-wide/from16 v38, v1

    move-object v1, v3

    move-wide/from16 v40, v16

    move/from16 v13, v18

    move-object/from16 v42, v21

    move-object/from16 v43, v22

    move-wide v2, v9

    move-object/from16 v16, v4

    move/from16 v46, v14

    move-wide/from16 v44, v19

    move-object/from16 v14, v23

    move-object v4, v8

    move-object/from16 v17, v5

    const/16 v34, 0x0

    move-object v5, v7

    move/from16 v47, v13

    move-object v13, v6

    move-object/from16 v6, v16

    move-object/from16 v48, v7

    move-object/from16 v49, v8

    move-wide/from16 v7, v38

    move-wide/from16 v50, v9

    move-object/from16 v9, v43

    move-object/from16 v10, v42

    invoke-virtual/range {v0 .. v10}, Ljn/A;->v([FJLjn/G;Ljn/s;[FJLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    goto :goto_8

    :cond_e
    move-wide/from16 v38, v0

    move-object v13, v6

    move-object/from16 v48, v7

    move-object/from16 v49, v8

    move-wide/from16 v50, v9

    move/from16 v46, v14

    move-wide/from16 v40, v16

    move/from16 v47, v18

    move-wide/from16 v44, v19

    move-object/from16 v42, v21

    move-object/from16 v43, v22

    move-object/from16 v14, v23

    const/16 v34, 0x0

    move-object/from16 v17, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    move-object/from16 v3, v49

    move-object/from16 v4, v48

    move-wide/from16 v5, v38

    move-object/from16 v7, v43

    move-object/from16 v8, v42

    invoke-virtual/range {v0 .. v8}, Ljn/A;->w(JLjn/G;Ljn/s;JLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [F

    move-object v9, v5

    goto :goto_9

    :cond_f
    move-object/from16 v9, v17

    :goto_9
    const/4 v10, 0x0

    if-eqz v37, :cond_12

    iget-object v3, v13, Ljn/B;->b:[F

    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    iget-object v5, v0, Ljn/K;->h:Ljn/L;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object v4, v9

    move-wide/from16 v7, v40

    invoke-virtual/range {v0 .. v8}, Ljn/A;->P(J[F[FLjn/L;IJ)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->j()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/N;

    iget v1, v1, Ljn/N;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_10

    move/from16 v5, v36

    goto :goto_a

    :cond_10
    move/from16 v5, v34

    :goto_a
    if-eqz v5, :cond_11

    move-object v1, v0

    check-cast v1, Ljn/N;

    iget-object v1, v1, Ljn/N;->c:Ljava/util/List;

    iget v2, v13, Ljn/B;->c:F

    check-cast v0, Ljn/N;

    iget v0, v0, Ljn/N;->d:F

    add-float/2addr v2, v0

    goto :goto_b

    :cond_11
    move v2, v10

    move-object/from16 v1, v31

    goto :goto_b

    :cond_12
    move v2, v10

    move-object/from16 v1, v31

    move/from16 v5, v34

    :goto_b
    if-nez v5, :cond_13

    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->h:Ljn/L;

    iget-object v2, v15, Ljn/B;->b:[F

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move-wide/from16 v19, v44

    move-object/from16 v21, v35

    move-object/from16 v22, v12

    move-wide/from16 v23, v50

    move-object/from16 v25, v48

    move-object/from16 v26, v49

    move-wide/from16 v27, v38

    move-object/from16 v29, v42

    move-object/from16 v30, v43

    invoke-interface/range {v16 .. v30}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v0

    iget v2, v15, Ljn/B;->c:F

    add-float/2addr v2, v0

    :cond_13
    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    iget-wide v3, v0, Ljn/K;->e:J

    move-wide/from16 v6, v38

    cmp-long v3, v6, v3

    if-nez v3, :cond_14

    iget-object v3, v0, Ljn/K;->h:Ljn/L;

    iget-object v0, v0, Ljn/K;->g:[F

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v9

    move-object/from16 v18, v0

    move-wide/from16 v19, v50

    move-object/from16 v21, v48

    move-object/from16 v22, v49

    move-wide/from16 v23, v6

    move-object/from16 v25, v42

    move-object/from16 v26, v43

    invoke-interface/range {v16 .. v30}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v0

    add-float/2addr v2, v0

    goto :goto_c

    :cond_14
    iget-object v3, v0, Ljn/K;->k:Ljn/M;

    iget-object v0, v0, Ljn/K;->g:[F

    invoke-interface {v3, v9, v0}, Ljn/M;->a([F[F)F

    move-result v10

    :goto_c
    add-float v0, v2, v10

    iget v3, v14, Ljn/B;->g:I

    sget v4, Ljn/B;->j:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_16

    iget v4, v14, Ljn/B;->d:F

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_16

    :cond_15
    :goto_d
    move-object/from16 v1, v48

    goto :goto_10

    :cond_16
    sget v4, Ljn/B;->k:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_17

    iget v3, v14, Ljn/B;->d:F

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_17

    goto :goto_d

    :cond_17
    if-eqz v5, :cond_18

    iget v3, v15, Ljn/B;->e:I

    goto :goto_e

    :cond_18
    iget-object v3, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3, v15}, Ljn/C;->h(Ljn/B;)I

    move-result v3

    :goto_e
    iput v3, v14, Ljn/B;->e:I

    iput-wide v6, v14, Ljn/B;->h:J

    iget v3, v14, Ljn/B;->g:I

    sget v4, Ljn/B;->k:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v14, Ljn/B;->g:I

    iput v2, v14, Ljn/B;->c:F

    iput v0, v14, Ljn/B;->d:F

    iput-object v9, v14, Ljn/B;->b:[F

    iput-object v1, v14, Ljn/B;->i:Ljava/util/List;

    sget v0, Ljn/B;->j:I

    and-int v1, v3, v0

    if-eqz v1, :cond_19

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v14}, Ljn/E;->e(Ljn/B;)V

    goto :goto_f

    :cond_19
    or-int/2addr v0, v3

    iput v0, v14, Ljn/B;->g:I

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v14}, Ljn/E;->g(Ljn/B;)V

    :goto_f
    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    iget v1, v0, Ljn/K;->c:F

    cmpg-float v1, v10, v1

    if-gez v1, :cond_15

    iput v10, v0, Ljn/K;->c:F

    iput-object v14, v0, Ljn/K;->b:Ljn/B;

    goto :goto_d

    :cond_1a
    move/from16 v47, v2

    move-wide/from16 v44, v4

    move-object v13, v6

    move-object/from16 v49, v8

    move-wide/from16 v50, v9

    move/from16 v46, v14

    move-wide/from16 v40, v16

    const/16 v34, 0x0

    move-object v1, v7

    :goto_10
    iget-object v0, v1, Ljn/s;->e:Ljava/util/List;

    move/from16 v2, v47

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v2, v0, Ljn/p;->b:I

    move-object v7, v1

    move-object v6, v13

    move-wide/from16 v16, v40

    move-wide/from16 v4, v44

    move/from16 v14, v46

    move-object/from16 v8, v49

    move-wide/from16 v9, v50

    move/from16 v13, p1

    goto/16 :goto_5

    :cond_1b
    move/from16 v46, v14

    const/16 v34, 0x0

    move/from16 v13, p1

    move/from16 v12, v34

    move/from16 v0, v46

    goto/16 :goto_0

    :cond_1c
    iget-object v1, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->c()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v11, Ljn/A;->d:Ljn/K;

    sget-object v2, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    iput-object v2, v1, Ljn/K;->a:Ljn/Q;

    :cond_1d
    iget-object v1, v11, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1e
    :goto_11
    iget-object v0, v11, Ljn/A;->d:Ljn/K;

    sget-object v2, Ljn/Q;->FAILURE:Ljn/Q;

    iput-object v2, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v2, v1}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public b(II[FLjava/util/List;Ljava/util/List;II)Ljn/Q;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIdx",
            "endPos",
            "path",
            "straightPath",
            "maxStraightPath",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljn/S;",
            ">;II)",
            "Ljn/Q;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v13, p5

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/S;

    iget-object v14, v0, Ljn/S;->a:[F

    move/from16 v0, p1

    move/from16 v15, p2

    :goto_0
    if-ge v0, v15, :cond_5

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v1, v2}, Ljn/v;->J(J)Ljn/O;

    move-result-object v3

    invoke-virtual {v3}, Ljn/O;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Ljn/Q;->FAILURE:Ljn/Q;

    return-object v0

    :cond_0
    iget-object v3, v3, Ljn/O;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljn/U;

    iget-object v4, v4, Ljn/U;->a:Ljava/lang/Object;

    check-cast v4, Ljn/s;

    check-cast v3, Ljn/U;

    iget-object v3, v3, Ljn/U;->b:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, Ljn/G;

    add-int/lit8 v10, v0, 0x1

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v5, v6}, Ljn/v;->J(J)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Ljn/Q;->FAILURE:Ljn/Q;

    return-object v0

    :cond_1
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljn/U;

    iget-object v3, v3, Ljn/U;->a:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljn/s;

    check-cast v0, Ljn/U;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljn/G;

    const/4 v9, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object/from16 v7, v17

    move v11, v10

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/A$b;

    iget-object v1, v1, Ljn/A$b;->a:[F

    check-cast v0, Ljn/A$b;

    iget-object v0, v0, Ljn/A$b;->b:[F

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljn/G;->a()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljn/G;->a()I

    move-result v3

    if-ne v2, v3, :cond_3

    move-object/from16 v7, p3

    goto :goto_1

    :cond_3
    move-object/from16 v7, p3

    invoke-static {v14, v7, v1, v0}, Ljn/g;->h([F[F[F[F)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/U;

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v0, v2}, Ljn/g;->N([F[FF)[F

    move-result-object v1

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Ljn/A;->c([FIJLjava/util/List;I)Ljn/Q;

    move-result-object v0

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    :goto_1
    move v0, v11

    move-object/from16 v11, p0

    goto/16 :goto_0

    :cond_5
    :goto_2
    sget-object v0, Ljn/Q;->IN_PROGRESS:Ljn/Q;

    return-object v0
.end method

.method public c([FIJLjava/util/List;I)Ljn/Q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "flags",
            "ref",
            "straightPath",
            "maxStraightPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FIJ",
            "Ljava/util/List<",
            "Ljn/S;",
            ">;I)",
            "Ljn/Q;"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/S;

    iget-object v0, v0, Ljn/S;->a:[F

    invoke-static {v0, p1}, Ljn/g;->H([F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljn/S;

    iput p2, p1, Ljn/S;->b:I

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljn/S;

    iput-wide p3, p1, Ljn/S;->c:J

    goto :goto_0

    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p6, :cond_1

    new-instance v0, Ljn/S;

    invoke-direct {v0, p1, p2, p3, p4}, Ljn/S;-><init>([FIJ)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, p6, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p1, Ljn/Q;->IN_PROGRESS:Ljn/Q;

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Ljn/Q;->SUCCSESS:Ljn/Q;

    return-object p1
.end method

.method public d(J[F)Ljn/O;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F)",
            "Ljn/O<",
            "Ljn/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p1, p2}, Ljn/v;->S(J)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Ljn/g;->I([F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p1, p2, p3}, Ljn/v;->j(J[F)Ljn/b;

    move-result-object p1

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public e(J[F)Ljn/O;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F)",
            "Ljn/O<",
            "[F>;"
        }
    .end annotation

    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p1, p2}, Ljn/v;->J(J)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Ljn/O;->b:Ljn/Q;

    iget-object p1, p1, Ljn/O;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljn/U;

    iget-object p2, p2, Ljn/U;->a:Ljava/lang/Object;

    check-cast p2, Ljn/s;

    check-cast p1, Ljn/U;

    iget-object p1, p1, Ljn/U;->b:Ljava/lang/Object;

    check-cast p1, Ljn/G;

    if-nez p2, :cond_1

    const-string p1, "Invalid tile"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p3, :cond_7

    invoke-static {p3}, Ljn/g;->I([F)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0}, Ljn/v;->y()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iget-object v2, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2}, Ljn/v;->y()I

    move-result v2

    new-array v2, v2, [F

    iget-object v3, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3}, Ljn/v;->y()I

    move-result v3

    new-array v3, v3, [F

    iget v4, p1, Ljn/G;->e:I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    iget-object v7, p2, Ljn/s;->c:Ljn/q;

    iget-object v7, v7, Ljn/q;->b:[F

    iget-object v8, p1, Ljn/G;->b:[I

    aget v8, v8, v6

    mul-int/2addr v8, v1

    mul-int/lit8 v9, v6, 0x3

    invoke-static {v7, v8, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p3, v0, v4, v2, v3}, Ljn/g;->d([F[FI[F[F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p3}, Ljn/g;->y([F)[F

    move-result-object p1

    goto :goto_2

    :cond_4
    aget p1, v2, v5

    const/4 p2, 0x1

    :goto_1
    if-ge p2, v4, :cond_6

    aget p3, v2, p2

    cmpg-float v6, p3, p1

    if-gez v6, :cond_5

    move v5, p2

    move p1, p3

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    mul-int/lit8 p1, v5, 0x3

    add-int/lit8 p2, v5, 0x1

    rem-int/2addr p2, v4

    mul-int/2addr p2, v1

    aget p3, v3, v5

    invoke-static {v0, p1, p2, p3}, Ljn/g;->M([FIIF)[F

    move-result-object p1

    :goto_2
    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljn/O;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    invoke-virtual {v1}, Ljn/Q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljn/K;

    invoke-direct {v1}, Ljn/K;-><init>()V

    iput-object v1, p0, Ljn/A;->d:Ljn/K;

    invoke-static {v0}, Ljn/O;->c(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-wide v2, v1, Ljn/K;->d:J

    iget-wide v4, v1, Ljn/K;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v1, Ljn/K;->b:Ljn/B;

    iget-wide v2, v0, Ljn/B;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    sget-object v2, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    iput-object v2, v1, Ljn/K;->a:Ljn/Q;

    :cond_2
    invoke-virtual {p0, v0}, Ljn/A;->z(Ljn/B;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    new-instance v2, Ljn/K;

    invoke-direct {v2}, Ljn/K;-><init>()V

    iput-object v2, p0, Ljn/A;->d:Ljn/K;

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/util/List;)Ljn/O;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    invoke-virtual {v1}, Ljn/Q;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljn/K;

    invoke-direct {p1}, Ljn/K;-><init>()V

    iput-object p1, p0, Ljn/A;->d:Ljn/K;

    invoke-static {v0}, Ljn/O;->c(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-wide v2, v1, Ljn/K;->d:J

    iget-wide v4, v1, Ljn/K;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Ljn/A;->b:Ljn/C;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljn/C;->c(J)Ljn/B;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    iget-object p1, p0, Ljn/A;->d:Ljn/K;

    sget-object v0, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    iput-object v0, p1, Ljn/K;->a:Ljn/Q;

    iget-object v1, p1, Ljn/K;->b:Ljn/B;

    :cond_5
    invoke-virtual {p0, v1}, Ljn/A;->z(Ljn/B;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iget-object p1, p0, Ljn/A;->d:Ljn/K;

    iget-object p1, p1, Ljn/K;->a:Ljn/Q;

    new-instance v1, Ljn/K;

    invoke-direct {v1}, Ljn/K;-><init>()V

    iput-object v1, p0, Ljn/A;->d:Ljn/K;

    invoke-static {p1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    invoke-static {v0}, Ljn/O;->c(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public h(J[FFLjn/L;)Ljn/O;
    .locals 31
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "centerPos",
            "maxRadius",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[FF",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/h;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-wide/from16 v0, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v0, v1}, Ljn/v;->S(J)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v10, :cond_16

    invoke-static/range {p3 .. p3}, Ljn/g;->I([F)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v12, 0x0

    cmpg-float v2, p4, v12

    if-ltz v2, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez v11, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v2, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2}, Ljn/C;->a()V

    iget-object v2, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v2}, Ljn/E;->b()V

    iget-object v2, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v2

    iget-object v3, v2, Ljn/B;->b:[F

    invoke-static {v3, v10}, Ljn/g;->w([F[F)V

    const/4 v13, 0x0

    iput v13, v2, Ljn/B;->e:I

    iput v12, v2, Ljn/B;->c:F

    iput v12, v2, Ljn/B;->d:F

    iput-wide v0, v2, Ljn/B;->h:J

    sget v0, Ljn/B;->j:I

    iput v0, v2, Ljn/B;->g:I

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v2}, Ljn/E;->g(Ljn/B;)V

    invoke-static/range {p4 .. p4}, Ljn/g;->s(F)F

    move-result v0

    const/4 v14, 0x3

    new-array v15, v14, [F

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    iget-object v3, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v3}, Ljn/E;->c()Z

    move-result v3

    const/4 v8, 0x1

    if-nez v3, :cond_14

    iget-object v3, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v3}, Ljn/E;->f()Ljn/B;

    move-result-object v7

    iget v3, v7, Ljn/B;->g:I

    sget v5, Ljn/B;->j:I

    not-int v5, v5

    and-int/2addr v3, v5

    iput v3, v7, Ljn/B;->g:I

    sget v5, Ljn/B;->k:I

    or-int/2addr v3, v5

    iput v3, v7, Ljn/B;->g:I

    iget-wide v5, v7, Ljn/B;->h:J

    iget-object v3, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v5, v6}, Ljn/v;->K(J)Ljn/U;

    move-result-object v3

    iget-object v12, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v12, Ljn/s;

    iget-object v3, v3, Ljn/U;->b:Ljava/lang/Object;

    check-cast v3, Ljn/G;

    iget v4, v7, Ljn/B;->e:I

    const-wide/16 v16, 0x0

    if-eqz v4, :cond_1

    iget-object v13, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v13, v4}, Ljn/C;->g(I)Ljn/B;

    move-result-object v4

    move-object v13, v15

    iget-wide v14, v4, Ljn/B;->h:J

    goto :goto_1

    :cond_1
    move-object v13, v15

    move-wide/from16 v14, v16

    :goto_1
    iget v4, v3, Ljn/G;->e:I

    sub-int/2addr v4, v8

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move v0, v4

    const/4 v4, 0x0

    :goto_2
    iget v1, v3, Ljn/G;->e:I

    const/4 v2, -0x1

    if-ge v4, v1, :cond_8

    iget-object v1, v3, Ljn/G;->c:[I

    aget v1, v1, v0

    const v21, 0x8000

    and-int v21, v1, v21

    if-eqz v21, :cond_5

    iget-object v1, v12, Ljn/s;->d:[I

    iget v8, v3, Ljn/G;->a:I

    aget v1, v1, v8

    :goto_3
    if-eq v1, v2, :cond_2

    iget-object v8, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljn/p;

    iget v2, v8, Ljn/p;->c:I

    if-ne v2, v0, :cond_3

    iget-wide v1, v8, Ljn/p;->a:J

    cmp-long v21, v1, v16

    if-eqz v21, :cond_2

    move-object/from16 v22, v7

    iget-object v7, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v7, v1, v2}, Ljn/v;->K(J)Ljn/U;

    move-result-object v1

    iget-object v2, v1, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljn/s;

    iget-object v1, v1, Ljn/U;->b:Ljava/lang/Object;

    check-cast v1, Ljn/G;

    iget-wide v7, v8, Ljn/p;->a:J

    invoke-interface {v11, v7, v8, v2, v1}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_5

    :cond_2
    move-object/from16 v22, v7

    goto :goto_4

    :cond_3
    move-object/from16 v22, v7

    iget-object v2, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/p;

    iget v1, v1, Ljn/p;->b:I

    const/4 v2, -0x1

    goto :goto_3

    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_4

    move-wide/from16 v23, v5

    goto/16 :goto_7

    :cond_4
    move-wide/from16 v23, v5

    goto :goto_6

    :cond_5
    move-object/from16 v22, v7

    if-eqz v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v12}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v7

    move-wide/from16 v23, v5

    int-to-long v5, v1

    or-long/2addr v5, v7

    iget-object v2, v12, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->c:[Ljn/G;

    aget-object v1, v2, v1

    invoke-interface {v11, v5, v6, v12, v1}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_7

    :cond_6
    :goto_6
    iget-object v1, v3, Ljn/G;->b:[I

    aget v0, v1, v0

    const/4 v2, 0x3

    mul-int/2addr v0, v2

    aget v1, v1, v4

    mul-int/2addr v1, v2

    iget-object v2, v12, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    invoke-static {v10, v2, v0, v1}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v2

    iget-object v5, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v6, v5, v18

    if-lez v6, :cond_7

    goto :goto_7

    :cond_7
    iget-object v6, v12, Ljn/s;->c:Ljn/q;

    iget-object v6, v6, Ljn/q;->b:[F

    aget v7, v6, v0

    aget v8, v6, v1

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v13, v8

    add-int/lit8 v7, v0, 0x1

    aget v7, v6, v7

    add-int/lit8 v8, v1, 0x1

    aget v8, v6, v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v13, v8

    add-int/lit8 v7, v0, 0x2

    aget v7, v6, v7

    add-int/lit8 v8, v1, 0x2

    aget v8, v6, v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const/4 v2, 0x2

    aput v7, v13, v2

    new-instance v2, Ljn/W;

    invoke-direct {v2, v6, v0}, Ljn/W;-><init>([FI)V

    new-instance v0, Ljn/W;

    iget-object v6, v12, Ljn/s;->c:Ljn/q;

    iget-object v6, v6, Ljn/q;->b:[F

    invoke-direct {v0, v6, v1}, Ljn/W;-><init>([FI)V

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v18, v5

    :goto_7
    add-int/lit8 v0, v4, 0x1

    move-object/from16 v7, v22

    move-wide/from16 v5, v23

    const/4 v8, 0x1

    move/from16 v30, v4

    move v4, v0

    move/from16 v0, v30

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v23, v5

    move-object/from16 v22, v7

    iget-object v0, v12, Ljn/s;->d:[I

    iget v1, v3, Ljn/G;->a:I

    aget v0, v0, v1

    move v8, v0

    const/4 v1, -0x1

    :goto_8
    if-eq v8, v1, :cond_13

    iget-object v0, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget-wide v5, v0, Ljn/p;->a:J

    cmp-long v2, v5, v16

    if-eqz v2, :cond_9

    cmp-long v2, v5, v14

    if-nez v2, :cond_a

    :cond_9
    move/from16 v25, v1

    move-object/from16 v26, v3

    move v11, v8

    move-object/from16 p4, v13

    move-object/from16 v10, v22

    const/16 v21, 0x1

    goto/16 :goto_b

    :cond_a
    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v5, v6}, Ljn/v;->K(J)Ljn/U;

    move-result-object v2

    iget-object v4, v2, Ljn/U;->a:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Ljn/s;

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljn/G;

    invoke-virtual {v4}, Ljn/G;->b()I

    move-result v2

    move/from16 v21, v8

    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    move/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 p4, v13

    move/from16 v11, v21

    move-object/from16 v10, v22

    move/from16 v21, v8

    goto/16 :goto_b

    :cond_b
    iget-object v2, v3, Ljn/G;->b:[I

    iget v0, v0, Ljn/p;->c:I

    aget v25, v2, v0

    const/16 v26, 0x3

    mul-int/lit8 v1, v25, 0x3

    add-int/2addr v0, v8

    iget v8, v3, Ljn/G;->e:I

    rem-int/2addr v0, v8

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v2, v12, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    invoke-static {v10, v2, v1, v0}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v0

    iget-object v0, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v18

    if-lez v0, :cond_c

    :goto_9
    move-object/from16 v26, v3

    move-object/from16 p4, v13

    move/from16 v11, v21

    move-object/from16 v10, v22

    const/16 v21, 0x1

    const/16 v25, -0x1

    goto/16 :goto_b

    :cond_c
    invoke-interface {v11, v5, v6, v7, v4}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v0, v5, v6}, Ljn/C;->e(J)Ljn/B;

    move-result-object v8

    iget v0, v8, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    if-nez v0, :cond_f

    move-object/from16 v0, p0

    const/16 v25, -0x1

    move-wide/from16 v1, v23

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object v4, v12

    move-wide/from16 v28, v5

    move-object/from16 v10, v22

    move-object/from16 v22, v7

    move-object/from16 v7, v27

    move-object/from16 p4, v13

    move/from16 v11, v21

    const/16 v21, 0x1

    move-object v13, v8

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Ljn/A;->w(JLjn/G;Ljn/s;JLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->j()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, v13, Ljn/B;->b:[F

    goto :goto_a

    :cond_f
    move-object/from16 v26, v3

    move-wide/from16 v28, v5

    move-object/from16 p4, v13

    move/from16 v11, v21

    move-object/from16 v10, v22

    const/16 v21, 0x1

    const/16 v25, -0x1

    move-object v13, v8

    :cond_10
    :goto_a
    iget v0, v10, Ljn/B;->d:F

    iget-object v1, v10, Ljn/B;->b:[F

    iget-object v2, v13, Ljn/B;->b:[F

    invoke-static {v1, v2}, Ljn/g;->z([F[F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v13, Ljn/B;->g:I

    sget v2, Ljn/B;->j:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    iget v2, v13, Ljn/B;->d:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_11

    goto :goto_b

    :cond_11
    move-wide/from16 v2, v28

    iput-wide v2, v13, Ljn/B;->h:J

    sget v2, Ljn/B;->k:I

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, v13, Ljn/B;->g:I

    iget-object v1, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v10}, Ljn/C;->h(Ljn/B;)I

    move-result v1

    iput v1, v13, Ljn/B;->e:I

    iput v0, v13, Ljn/B;->d:F

    iget v0, v13, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    and-int v2, v0, v1

    if-eqz v2, :cond_12

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v13}, Ljn/E;->e(Ljn/B;)V

    goto :goto_b

    :cond_12
    or-int/2addr v0, v1

    iput v0, v13, Ljn/B;->g:I

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v13}, Ljn/E;->g(Ljn/B;)V

    :goto_b
    iget-object v0, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v8, v0, Ljn/p;->b:I

    move-object/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v22, v10

    move/from16 v1, v25

    move-object/from16 v3, v26

    move-object/from16 v10, p3

    goto/16 :goto_8

    :cond_13
    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object v15, v13

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    goto/16 :goto_0

    :cond_14
    move/from16 v21, v8

    move v3, v14

    move-object/from16 p4, v15

    new-array v3, v3, [F

    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    invoke-static {v1, v2}, Ljn/g;->V(Ljn/W;Ljn/W;)[F

    move-result-object v1

    const/4 v2, 0x2

    aget v4, v1, v2

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v21

    aget v1, v1, v5

    neg-float v1, v1

    aput v1, v3, v2

    invoke-static {v3}, Ljn/g;->R([F)V

    :cond_15
    new-instance v1, Ljn/h;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move-object/from16 v2, p4

    invoke-direct {v1, v0, v2, v3}, Ljn/h;-><init>(F[F[F)V

    invoke-static {v1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_c
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public i(J[FFLjn/L;)Ljn/O;
    .locals 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "centerPos",
            "radius",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[FF",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/i;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-wide/from16 v0, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    iget-object v2, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v0, v1}, Ljn/v;->S(J)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v12, :cond_f

    invoke-static/range {p3 .. p3}, Ljn/g;->I([F)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-ltz v2, :cond_f

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_f

    if-nez v13, :cond_0

    goto/16 :goto_c

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljn/C;

    invoke-direct {v10}, Ljn/C;-><init>()V

    invoke-virtual {v10, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v2

    const/4 v9, 0x0

    iput v9, v2, Ljn/B;->e:I

    iput-wide v0, v2, Ljn/B;->h:J

    sget v0, Ljn/B;->k:I

    iput v0, v2, Ljn/B;->g:I

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v0, v2, Ljn/B;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p4 .. p4}, Ljn/g;->s(F)F

    move-result v18

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0}, Ljn/v;->y()I

    move-result v0

    const/4 v7, 0x3

    mul-int/2addr v0, v7

    new-array v5, v0, [F

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0}, Ljn/v;->y()I

    move-result v0

    mul-int/2addr v0, v7

    new-array v6, v0, [F

    :goto_0
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v8}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljn/B;

    iget-wide v1, v4, Ljn/B;->h:J

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v1, v2}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v3, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v3, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljn/G;

    iget-object v7, v3, Ljn/s;->d:[I

    iget v9, v0, Ljn/G;->a:I

    aget v7, v7, v9

    move v9, v7

    :goto_1
    const/4 v7, -0x1

    if-eq v9, v7, :cond_d

    iget-object v7, v3, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljn/p;

    move/from16 p4, v9

    move-object/from16 v20, v10

    iget-wide v9, v7, Ljn/p;->a:J

    cmp-long v7, v9, v16

    if-nez v7, :cond_1

    move/from16 v34, p4

    move-object v7, v0

    move-wide/from16 v21, v1

    move-object v13, v4

    move-object v1, v8

    move-object v0, v14

    move-object v2, v15

    move-object/from16 v14, v20

    const/16 v19, 0x0

    move-object v4, v3

    :goto_2
    move-object v8, v5

    :goto_3
    const/4 v5, 0x3

    goto/16 :goto_b

    :cond_1
    move-object/from16 v7, v20

    move-object/from16 v20, v15

    invoke-virtual {v7, v9, v10}, Ljn/C;->e(J)Ljn/B;

    move-result-object v15

    move-object/from16 v21, v0

    iget v0, v15, Ljn/B;->g:I

    sget v22, Ljn/B;->k:I

    and-int v0, v0, v22

    if-eqz v0, :cond_2

    move/from16 v34, p4

    move-object v13, v4

    move-object v0, v14

    const/16 v19, 0x0

    move-object v4, v3

    move-object v14, v7

    move-object/from16 v7, v21

    move-wide/from16 v21, v1

    move-object v1, v8

    move-object/from16 v2, v20

    goto :goto_2

    :cond_2
    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v9, v10}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    move-wide/from16 v22, v1

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v1, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljn/G;

    invoke-virtual {v2}, Ljn/G;->b()I

    move-result v0

    move-object/from16 v24, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    :goto_4
    move/from16 v34, p4

    move-object v13, v4

    move-object v1, v8

    move-object v0, v14

    move-object/from16 v2, v20

    move-object/from16 v4, v24

    const/16 v19, 0x0

    move-object v8, v5

    move-object v14, v7

    move-object/from16 v7, v21

    move-wide/from16 v21, v22

    goto :goto_3

    :cond_3
    invoke-interface {v13, v9, v10, v1, v2}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v21

    move-object/from16 v0, p0

    move-object v3, v1

    move-wide/from16 v21, v22

    move-object/from16 v23, v2

    move-wide/from16 v1, v21

    move-object/from16 v28, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v27

    move-object v13, v4

    move-object/from16 v4, v28

    move-object v11, v5

    move-object/from16 v29, v6

    move-wide v5, v9

    move-object/from16 v30, v7

    move-object/from16 v7, v23

    move-object/from16 v31, v8

    move-object/from16 v8, v24

    move-wide/from16 v32, v9

    const/16 v19, 0x0

    move/from16 v10, p4

    move/from16 v9, v25

    move/from16 v34, v10

    move-object/from16 v25, v14

    move-object/from16 v14, v30

    move/from16 v10, v26

    invoke-virtual/range {v0 .. v10}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_5
    move-object v8, v11

    move-object/from16 v2, v20

    move-object/from16 v0, v25

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    move-object/from16 v6, v29

    move-object/from16 v1, v31

    goto/16 :goto_3

    :cond_5
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/A$b;

    iget-object v1, v1, Ljn/A$b;->a:[F

    check-cast v0, Ljn/A$b;

    iget-object v0, v0, Ljn/A$b;->b:[F

    invoke-static {v12, v1, v0}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object v0

    iget-object v0, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v18

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    iget v0, v15, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    or-int/2addr v0, v1

    iput v0, v15, Ljn/B;->g:I

    invoke-virtual {v14, v13}, Ljn/C;->h(Ljn/B;)I

    move-result v0

    iput v0, v15, Ljn/B;->e:I

    move-object/from16 v0, v23

    iget v1, v0, Ljn/G;->e:I

    move/from16 v9, v19

    :goto_6
    if-ge v9, v1, :cond_7

    move-object/from16 v2, v24

    iget-object v3, v2, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->b:[F

    iget-object v4, v0, Ljn/G;->b:[I

    aget v4, v4, v9

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    mul-int/lit8 v6, v9, 0x3

    invoke-static {v3, v4, v11, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x3

    move/from16 v9, v19

    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v4, v28

    iget-object v6, v4, Ljn/s;->d:[I

    move-object/from16 v7, v27

    iget v8, v7, Ljn/G;->a:I

    aget v6, v6, v8

    :goto_8
    const/4 v8, -0x1

    if-eq v6, v8, :cond_9

    iget-object v10, v4, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljn/p;

    move/from16 v23, v9

    iget-wide v8, v10, Ljn/p;->a:J

    cmp-long v8, v8, v2

    if-nez v8, :cond_8

    move-object v8, v11

    move-object/from16 v6, v29

    goto :goto_a

    :cond_8
    iget-object v8, v4, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljn/p;

    iget v6, v6, Ljn/p;->b:I

    move/from16 v9, v23

    goto :goto_8

    :cond_9
    move-object/from16 v6, p0

    move/from16 v23, v9

    move-object v8, v11

    iget-object v9, v6, Ljn/A;->a:Ljn/v;

    invoke-virtual {v9, v2, v3}, Ljn/v;->K(J)Ljn/U;

    move-result-object v2

    iget-object v3, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v3, Ljn/s;

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljn/G;

    iget v9, v2, Ljn/G;->e:I

    move/from16 v10, v19

    :goto_9
    if-ge v10, v9, :cond_a

    iget-object v11, v3, Ljn/s;->c:Ljn/q;

    iget-object v11, v11, Ljn/q;->b:[F

    move-object/from16 p1, v3

    iget-object v3, v2, Ljn/G;->b:[I

    aget v3, v3, v10

    mul-int/2addr v3, v5

    move-object/from16 p2, v2

    mul-int/lit8 v2, v10, 0x3

    move-object/from16 v6, v29

    invoke-static {v11, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p0

    goto :goto_9

    :cond_a
    move-object/from16 v6, v29

    invoke-static {v8, v1, v6, v9}, Ljn/g;->m([FI[FI)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, v20

    move-object/from16 v1, v31

    goto :goto_b

    :cond_b
    :goto_a
    add-int/lit8 v9, v23, 0x1

    move-object/from16 v25, v0

    move-object/from16 v28, v4

    move-object/from16 v29, v6

    move-object/from16 v27, v7

    move-object v11, v8

    goto/16 :goto_7

    :cond_c
    move-object v8, v11

    move-object/from16 v0, v25

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    move-object/from16 v6, v29

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v31

    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_b
    iget-object v3, v4, Ljn/s;->e:Ljava/util/List;

    move/from16 v9, v34

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljn/p;

    iget v9, v3, Ljn/p;->b:I

    move-object/from16 v11, p0

    move-object v15, v2

    move-object v3, v4

    move-object v5, v8

    move-object v4, v13

    move-object v10, v14

    move-object/from16 v13, p5

    move-object v14, v0

    move-object v8, v1

    move-object v0, v7

    move-wide/from16 v1, v21

    goto/16 :goto_1

    :cond_d
    move-object v1, v8

    move-object v0, v14

    const/16 v19, 0x0

    move-object v8, v5

    move-object/from16 v11, p0

    move-object/from16 v13, p5

    move/from16 v9, v19

    const/4 v7, 0x3

    move-object v8, v1

    goto/16 :goto_0

    :cond_e
    move-object v0, v14

    move-object v2, v15

    new-instance v1, Ljn/i;

    invoke-direct {v1, v0, v2}, Ljn/i;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_f
    :goto_c
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public j([F[FLjn/L;)Ljn/O;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "center",
            "halfExtents",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljn/j;

    invoke-direct {v0, p0, p1}, Ljn/j;-><init>(Ljn/A;[F)V

    invoke-virtual {p0, p1, p2, p3, v0}, Ljn/A;->M([F[FLjn/L;Ljn/I;)Ljn/Q;

    move-result-object p1

    invoke-virtual {p1}, Ljn/Q;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljn/j;->b()Ljn/k;

    move-result-object p1

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public k(JJ[F[FLjn/L;)Ljn/O;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[F[F",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v8, Ljn/e;

    invoke-direct {v8}, Ljn/e;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Ljn/A;->m(JJ[F[FLjn/L;Ljn/M;IF)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public l(JJ[F[FLjn/L;IF)Ljn/O;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter",
            "options",
            "raycastLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[F[F",
            "Ljn/L;",
            "IF)",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v8, Ljn/e;

    invoke-direct {v8}, Ljn/e;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Ljn/A;->m(JJ[F[FLjn/L;Ljn/M;IF)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public m(JJ[F[FLjn/L;Ljn/M;IF)Ljn/O;
    .locals 57
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter",
            "heuristic",
            "options",
            "raycastLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[F[F",
            "Ljn/L;",
            "Ljn/M;",
            "IF)",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-wide/from16 v0, p1

    move-wide/from16 v12, p3

    move-object/from16 v2, p5

    move-object/from16 v15, p6

    move-object/from16 v14, p7

    move-object/from16 v10, p8

    iget-object v3, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v0, v1}, Ljn/v;->S(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v12, v13}, Ljn/v;->S(J)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static/range {p5 .. p5}, Ljn/g;->I([F)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v15, :cond_0

    invoke-static/range {p6 .. p6}, Ljn/g;->I([F)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move-object v6, v11

    goto/16 :goto_14

    :cond_1
    invoke-static/range {p10 .. p10}, Ljn/g;->s(F)F

    move-result v3

    and-int/lit8 v31, p9, 0x2

    const/4 v9, 0x0

    if-eqz v31, :cond_2

    cmpg-float v4, p10, v9

    if-gez v4, :cond_2

    iget-object v3, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v0, v1}, Ljn/v;->M(J)Ljn/s;

    move-result-object v3

    iget-object v3, v3, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->a:Ljn/r;

    iget v3, v3, Ljn/r;->q:F

    sget v4, Ljn/v;->t:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljn/g;->s(F)F

    move-result v3

    :cond_2
    move/from16 v32, v3

    cmp-long v3, v0, v12

    const/4 v7, 0x1

    if-nez v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v3, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3}, Ljn/C;->a()V

    iget-object v3, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v3}, Ljn/E;->b()V

    iget-object v3, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v3

    iget-object v4, v3, Ljn/B;->b:[F

    invoke-static {v4, v2}, Ljn/g;->w([F[F)V

    const/4 v8, 0x0

    iput v8, v3, Ljn/B;->e:I

    iput v9, v3, Ljn/B;->c:F

    invoke-interface {v10, v2, v15}, Ljn/M;->a([F[F)F

    move-result v2

    iput v2, v3, Ljn/B;->d:F

    iput-wide v0, v3, Ljn/B;->h:J

    sget v0, Ljn/B;->j:I

    iput v0, v3, Ljn/B;->g:I

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v3}, Ljn/E;->g(Ljn/B;)V

    iget v0, v3, Ljn/B;->d:F

    sget-object v33, Ljn/Q;->SUCCSESS:Ljn/Q;

    :goto_0
    iget-object v1, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->c()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->f()Ljn/B;

    move-result-object v6

    iget v1, v6, Ljn/B;->g:I

    sget v2, Ljn/B;->j:I

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, v6, Ljn/B;->g:I

    sget v2, Ljn/B;->k:I

    or-int/2addr v1, v2

    iput v1, v6, Ljn/B;->g:I

    iget-wide v4, v6, Ljn/B;->h:J

    cmp-long v1, v4, v12

    if-nez v1, :cond_4

    move-object v3, v6

    :goto_1
    move-object v6, v11

    goto/16 :goto_13

    :cond_4
    iget-object v1, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v1, v4, v5}, Ljn/v;->K(J)Ljn/U;

    move-result-object v1

    iget-object v2, v1, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljn/s;

    iget-object v1, v1, Ljn/U;->b:Ljava/lang/Object;

    check-cast v1, Ljn/G;

    iget v7, v6, Ljn/B;->e:I

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    if-eqz v7, :cond_6

    iget-object v9, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v9, v7}, Ljn/C;->g(I)Ljn/B;

    move-result-object v7

    iget-wide v8, v7, Ljn/B;->h:J

    move/from16 p1, v0

    iget v0, v7, Ljn/B;->e:I

    move-object/from16 p2, v3

    if-eqz v0, :cond_5

    iget-object v3, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3, v0}, Ljn/C;->g(I)Ljn/B;

    move-result-object v0

    move-object/from16 p5, v7

    move-wide/from16 v17, v8

    iget-wide v7, v0, Ljn/B;->h:J

    move-object/from16 v9, p5

    move-wide/from16 v37, v7

    move-wide/from16 v7, v17

    goto :goto_2

    :cond_5
    move-object/from16 p5, v7

    move-wide/from16 v17, v8

    move-object/from16 v9, p5

    move-wide/from16 v7, v17

    move-wide/from16 v37, v35

    goto :goto_2

    :cond_6
    move/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 v9, v34

    move-wide/from16 v7, v35

    move-wide/from16 v37, v7

    :goto_2
    cmp-long v0, v7, v35

    if-eqz v0, :cond_7

    iget-object v3, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v7, v8}, Ljn/v;->K(J)Ljn/U;

    move-result-object v3

    iget-object v10, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v10, Ljn/s;

    iget-object v3, v3, Ljn/U;->b:Ljava/lang/Object;

    check-cast v3, Ljn/G;

    move-object/from16 v39, v3

    move-object/from16 v40, v10

    goto :goto_3

    :cond_7
    move-object/from16 v39, v34

    move-object/from16 v40, v39

    :goto_3
    if-eqz v31, :cond_9

    if-eqz v0, :cond_9

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v32, v0

    if-gez v0, :cond_8

    iget-object v0, v9, Ljn/B;->b:[F

    iget-object v3, v6, Ljn/B;->b:[F

    invoke-static {v0, v3}, Ljn/g;->E([F[F)F

    move-result v0

    cmpg-float v0, v0, v32

    if-gez v0, :cond_9

    :cond_8
    const/16 v41, 0x1

    goto :goto_4

    :cond_9
    const/16 v41, 0x0

    :goto_4
    iget-object v0, v2, Ljn/s;->d:[I

    iget v3, v1, Ljn/G;->a:I

    aget v0, v0, v3

    move/from16 v42, p1

    move-object/from16 v43, p2

    move v10, v0

    :goto_5
    const/4 v0, -0x1

    if-eq v10, v0, :cond_1a

    iget-object v0, v2, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    move-object/from16 v17, v9

    move/from16 v18, v10

    iget-wide v9, v0, Ljn/p;->a:J

    cmp-long v0, v9, v35

    if-eqz v0, :cond_a

    cmp-long v0, v9, v7

    if-nez v0, :cond_b

    :cond_a
    :goto_6
    move-object/from16 v46, v1

    move-object/from16 p1, v2

    move-wide/from16 v48, v4

    move-object v12, v6

    move-wide/from16 v51, v7

    move-object v6, v11

    move-object v2, v15

    move-object/from16 v13, v17

    move/from16 v56, v18

    :goto_7
    const/16 v50, 0x0

    const/16 v53, 0x0

    goto/16 :goto_11

    :cond_b
    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v9, v10}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v3, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v3, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljn/G;

    invoke-interface {v14, v9, v10, v3, v0}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v19

    if-nez v19, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 p1, v0

    iget-object v0, v11, Ljn/A;->b:Ljn/C;

    move-wide/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v9, v10, v7}, Ljn/C;->f(JI)Ljn/B;

    move-result-object v8

    iget v0, v8, Ljn/B;->e:I

    if-eqz v0, :cond_d

    iget v7, v6, Ljn/B;->e:I

    if-ne v0, v7, :cond_d

    move-object/from16 v46, v1

    move-object/from16 p1, v2

    move-wide/from16 v48, v4

    move-object v12, v6

    move-object v6, v11

    move-object v2, v15

    move-object/from16 v13, v17

    move/from16 v56, v18

    move-wide/from16 v51, v19

    goto :goto_7

    :cond_d
    iget-object v7, v8, Ljn/B;->b:[F

    cmp-long v44, v9, v12

    if-nez v44, :cond_e

    iget-object v0, v6, Ljn/B;->b:[F

    move-object/from16 v45, p1

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v46, v1

    move-object/from16 v1, v21

    move-object/from16 p1, v2

    move-object/from16 v47, v3

    move-wide v2, v4

    move-wide/from16 v48, v4

    move-object/from16 v4, v46

    move-object/from16 v5, p1

    move-object v12, v6

    move-object/from16 v6, p6

    move-object v13, v8

    move-wide/from16 v51, v19

    const/16 v50, 0x0

    move-object/from16 v19, v7

    move-wide v7, v9

    move-wide/from16 v54, v9

    move-object/from16 v10, v17

    const/16 v53, 0x0

    move-object/from16 v9, v45

    move-object/from16 v11, p8

    move-object/from16 p2, v13

    move/from16 v56, v18

    move-object v13, v10

    move-object/from16 v10, v47

    invoke-virtual/range {v0 .. v10}, Ljn/A;->v([FJLjn/G;Ljn/s;[FJLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    goto :goto_8

    :cond_e
    move-object/from16 v45, p1

    move-object/from16 v11, p8

    move-object/from16 v46, v1

    move-object/from16 p1, v2

    move-object/from16 v47, v3

    move-wide/from16 v48, v4

    move-object v12, v6

    move-object/from16 p2, v8

    move-wide/from16 v54, v9

    move-object/from16 v13, v17

    move/from16 v56, v18

    move-wide/from16 v51, v19

    const/16 v50, 0x0

    const/16 v53, 0x0

    move-object/from16 v19, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    move-object/from16 v3, v46

    move-object/from16 v4, p1

    move-wide/from16 v5, v54

    move-object/from16 v7, v45

    move-object/from16 v8, v47

    invoke-virtual/range {v0 .. v8}, Ljn/A;->w(JLjn/G;Ljn/s;JLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [F

    move-object v9, v7

    goto :goto_9

    :cond_f
    move-object/from16 v9, v19

    :goto_9
    if-eqz v41, :cond_12

    iget-object v3, v13, Ljn/B;->b:[F

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    move-object v4, v9

    move-object/from16 v5, p7

    move-wide/from16 v7, v37

    invoke-virtual/range {v0 .. v8}, Ljn/A;->P(J[F[FLjn/L;IJ)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->j()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/N;

    iget v1, v1, Ljn/N;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_10

    const/4 v7, 0x1

    goto :goto_a

    :cond_10
    move/from16 v7, v50

    :goto_a
    if-eqz v7, :cond_11

    move-object v1, v0

    check-cast v1, Ljn/N;

    iget-object v1, v1, Ljn/N;->c:Ljava/util/List;

    iget v2, v13, Ljn/B;->c:F

    check-cast v0, Ljn/N;

    iget v0, v0, Ljn/N;->d:F

    add-float/2addr v0, v2

    move v8, v7

    goto :goto_c

    :cond_11
    move v8, v7

    move-object/from16 v1, v34

    :goto_b
    move/from16 v0, v53

    goto :goto_c

    :cond_12
    move-object/from16 v1, v34

    move/from16 v8, v50

    goto :goto_b

    :goto_c
    if-nez v8, :cond_13

    iget-object v0, v12, Ljn/B;->b:[F

    move-object/from16 v16, p7

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-wide/from16 v19, v51

    move-object/from16 v21, v40

    move-object/from16 v22, v39

    move-wide/from16 v23, v48

    move-object/from16 v25, p1

    move-object/from16 v26, v46

    move-wide/from16 v27, v54

    move-object/from16 v29, v47

    move-object/from16 v30, v45

    invoke-interface/range {v16 .. v30}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v0

    iget v2, v12, Ljn/B;->c:F

    add-float/2addr v0, v2

    :cond_13
    if-nez v44, :cond_14

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v14, p7

    move-object v2, v15

    move-object v15, v9

    move-object/from16 v16, p6

    move-wide/from16 v17, v48

    move-object/from16 v19, p1

    move-object/from16 v20, v46

    move-wide/from16 v21, v54

    move-object/from16 v23, v47

    move-object/from16 v24, v45

    invoke-interface/range {v14 .. v28}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v3

    add-float/2addr v0, v3

    move/from16 v3, v53

    goto :goto_d

    :cond_14
    move-object v2, v15

    invoke-interface {v11, v9, v2}, Ljn/M;->a([F[F)F

    move-result v3

    :goto_d
    add-float v4, v0, v3

    move-object/from16 v5, p2

    iget v6, v5, Ljn/B;->g:I

    sget v7, Ljn/B;->j:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_15

    iget v7, v5, Ljn/B;->d:F

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_15

    :goto_e
    move-object/from16 v6, p0

    goto :goto_11

    :cond_15
    sget v7, Ljn/B;->k:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_16

    iget v6, v5, Ljn/B;->d:F

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_16

    goto :goto_e

    :cond_16
    if-eqz v8, :cond_17

    iget v6, v12, Ljn/B;->e:I

    move v7, v6

    move-object/from16 v6, p0

    goto :goto_f

    :cond_17
    move-object/from16 v6, p0

    iget-object v7, v6, Ljn/A;->b:Ljn/C;

    invoke-virtual {v7, v12}, Ljn/C;->h(Ljn/B;)I

    move-result v7

    :goto_f
    iput v7, v5, Ljn/B;->e:I

    move-wide/from16 v7, v54

    iput-wide v7, v5, Ljn/B;->h:J

    iget v7, v5, Ljn/B;->g:I

    sget v8, Ljn/B;->k:I

    not-int v8, v8

    and-int/2addr v7, v8

    iput v7, v5, Ljn/B;->g:I

    iput v0, v5, Ljn/B;->c:F

    iput v4, v5, Ljn/B;->d:F

    iput-object v9, v5, Ljn/B;->b:[F

    iput-object v1, v5, Ljn/B;->i:Ljava/util/List;

    sget v0, Ljn/B;->j:I

    and-int v1, v7, v0

    if-eqz v1, :cond_18

    iget-object v0, v6, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v5}, Ljn/E;->e(Ljn/B;)V

    goto :goto_10

    :cond_18
    or-int/2addr v0, v7

    iput v0, v5, Ljn/B;->g:I

    iget-object v0, v6, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v5}, Ljn/E;->g(Ljn/B;)V

    :goto_10
    cmpg-float v0, v3, v42

    if-gez v0, :cond_19

    move-object/from16 v0, p1

    move/from16 v42, v3

    move-object/from16 v43, v5

    goto :goto_12

    :cond_19
    :goto_11
    move-object/from16 v0, p1

    :goto_12
    iget-object v1, v0, Ljn/s;->e:Ljava/util/List;

    move/from16 v3, v56

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/p;

    iget v10, v1, Ljn/p;->b:I

    move-object/from16 v14, p7

    move-object v15, v2

    move-object v11, v6

    move-object v6, v12

    move-object v9, v13

    move-object/from16 v1, v46

    move-wide/from16 v4, v48

    move-wide/from16 v7, v51

    move-wide/from16 v12, p3

    move-object v2, v0

    goto/16 :goto_5

    :cond_1a
    move-wide/from16 v12, p3

    move-object/from16 v14, p7

    move-object/from16 v10, p8

    move/from16 v0, v42

    move-object/from16 v3, v43

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1b
    move-object/from16 p2, v3

    goto/16 :goto_1

    :goto_13
    invoke-virtual {v6, v3}, Ljn/A;->z(Ljn/B;)Ljava/util/List;

    move-result-object v0

    iget-wide v1, v3, Ljn/B;->h:J

    cmp-long v1, v1, p3

    if-eqz v1, :cond_1c

    sget-object v33, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    :cond_1c
    move-object/from16 v1, v33

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :goto_14
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public n(J[FFLjn/L;)Ljn/O;
    .locals 40
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "centerPos",
            "radius",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[FF",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/l;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-wide/from16 v0, p1

    move-object/from16 v12, p3

    move-object/from16 v15, p5

    iget-object v2, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v0, v1}, Ljn/v;->S(J)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v12, :cond_e

    invoke-static/range {p3 .. p3}, Ljn/g;->I([F)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    cmpg-float v3, p4, v2

    if-ltz v3, :cond_e

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v15, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3}, Ljn/C;->a()V

    iget-object v3, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v3}, Ljn/E;->b()V

    iget-object v3, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v3

    iget-object v4, v3, Ljn/B;->b:[F

    invoke-static {v4, v12}, Ljn/g;->w([F[F)V

    const/4 v4, 0x0

    iput v4, v3, Ljn/B;->e:I

    iput v2, v3, Ljn/B;->c:F

    iput v2, v3, Ljn/B;->d:F

    iput-wide v0, v3, Ljn/B;->h:J

    sget v0, Ljn/B;->j:I

    iput v0, v3, Ljn/B;->g:I

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v3}, Ljn/E;->g(Ljn/B;)V

    invoke-static/range {p4 .. p4}, Ljn/g;->s(F)F

    move-result v28

    :goto_0
    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0}, Ljn/E;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0}, Ljn/E;->f()Ljn/B;

    move-result-object v9

    iget v0, v9, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, v9, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    or-int/2addr v0, v1

    iput v0, v9, Ljn/B;->g:I

    iget-wide v7, v9, Ljn/B;->h:J

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v7, v8}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljn/G;

    iget v0, v9, Ljn/B;->e:I

    const-wide/16 v29, 0x0

    if-eqz v0, :cond_1

    iget-object v1, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v0}, Ljn/C;->g(I)Ljn/B;

    move-result-object v0

    iget-wide v0, v0, Ljn/B;->h:J

    move-wide v3, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v3, v29

    :goto_1
    cmp-long v0, v3, v29

    if-eqz v0, :cond_2

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v3, v4}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v1, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljn/G;

    move-object/from16 v31, v0

    move-object/from16 v32, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v31, v1

    move-object/from16 v32, v31

    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v9, Ljn/B;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Ljn/s;->d:[I

    iget v1, v6, Ljn/G;->a:I

    aget v0, v0, v1

    :goto_3
    move v1, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_c

    iget-object v0, v5, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    move-object/from16 p1, v9

    move-object/from16 v16, v10

    iget-wide v9, v0, Ljn/p;->a:J

    cmp-long v0, v9, v29

    if-eqz v0, :cond_b

    cmp-long v0, v9, v3

    if-nez v0, :cond_3

    :goto_4
    move/from16 v33, v1

    move-wide/from16 v34, v3

    move-object v1, v5

    move-object/from16 v36, v6

    move-wide/from16 v37, v7

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v39, v16

    move-object/from16 v4, p1

    goto/16 :goto_8

    :cond_3
    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v9, v10}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v2, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljn/G;

    invoke-interface {v15, v9, v10, v2, v0}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v17

    if-nez v17, :cond_4

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v33, v1

    move-object/from16 v26, v2

    move-wide v1, v7

    move-wide/from16 v34, v3

    move-object v3, v6

    move-object v4, v5

    move-object/from16 p2, v5

    move-object/from16 v36, v6

    move-wide v5, v9

    move-wide/from16 v37, v7

    move-object/from16 v7, v27

    move-object/from16 v8, v26

    move-object/from16 v19, v14

    move-wide v14, v9

    move-object/from16 v10, p1

    move/from16 v9, v17

    move-object/from16 v39, v16

    move-object/from16 v16, v13

    move-object v13, v10

    move/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_5
    move-object/from16 v1, p2

    move-object v4, v13

    move-object/from16 v3, v16

    move-object/from16 v5, v19

    goto/16 :goto_8

    :cond_5
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/A$b;

    iget-object v1, v1, Ljn/A$b;->a:[F

    check-cast v0, Ljn/A$b;

    iget-object v0, v0, Ljn/A$b;->b:[F

    invoke-static {v12, v1, v0}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object v2

    iget-object v2, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v28

    if-lez v2, :cond_6

    :goto_6
    goto :goto_5

    :cond_6
    iget-object v2, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2, v14, v15}, Ljn/C;->e(J)Ljn/B;

    move-result-object v2

    iget v3, v2, Ljn/B;->g:I

    sget v4, Ljn/B;->k:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    if-nez v3, :cond_8

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v3}, Ljn/g;->N([F[FF)[F

    move-result-object v0

    iput-object v0, v2, Ljn/B;->b:[F

    :cond_8
    iget-object v0, v13, Ljn/B;->b:[F

    iget-object v1, v2, Ljn/B;->b:[F

    move-object v4, v13

    move-object/from16 v3, v16

    move-object/from16 v13, p5

    move-wide v6, v14

    move-object/from16 v5, v19

    move-object v14, v0

    move-object v15, v1

    move-wide/from16 v16, v34

    move-object/from16 v18, v32

    move-object/from16 v19, v31

    move-wide/from16 v20, v37

    move-object/from16 v22, p2

    move-object/from16 v23, v36

    move-wide/from16 v24, v6

    invoke-interface/range {v13 .. v27}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v0

    iget v1, v4, Ljn/B;->d:F

    add-float/2addr v1, v0

    iget v0, v2, Ljn/B;->g:I

    sget v8, Ljn/B;->j:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_9

    iget v0, v2, Ljn/B;->d:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_9

    :goto_7
    move-object/from16 v1, p2

    goto :goto_8

    :cond_9
    iput-wide v6, v2, Ljn/B;->h:J

    iget-object v0, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v0, v4}, Ljn/C;->h(Ljn/B;)I

    move-result v0

    iput v0, v2, Ljn/B;->e:I

    iput v1, v2, Ljn/B;->d:F

    iget v0, v2, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v2}, Ljn/E;->e(Ljn/B;)V

    goto :goto_7

    :cond_a
    iput v1, v2, Ljn/B;->g:I

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v2}, Ljn/E;->g(Ljn/B;)V

    goto :goto_7

    :cond_b
    move/from16 v33, v1

    move-wide/from16 v34, v3

    move-object/from16 p2, v5

    move-object/from16 v36, v6

    move-wide/from16 v37, v7

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v39, v16

    move-object/from16 v4, p1

    goto :goto_7

    :goto_8
    iget-object v0, v1, Ljn/s;->e:Ljava/util/List;

    move/from16 v2, v33

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v0, v0, Ljn/p;->b:I

    move-object/from16 v15, p5

    move-object v13, v3

    move-object v9, v4

    move-object v14, v5

    move-wide/from16 v3, v34

    move-object/from16 v6, v36

    move-wide/from16 v7, v37

    move-object/from16 v10, v39

    move-object v5, v1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v15, p5

    goto/16 :goto_0

    :cond_d
    move-object/from16 v39, v10

    move-object v3, v13

    move-object v5, v14

    new-instance v0, Ljn/l;

    move-object/from16 v1, v39

    invoke-direct {v0, v5, v3, v1}, Ljn/l;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_9
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public o(J[FLjn/L;)Ljn/O;
    .locals 45
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "verts",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/l;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-wide/from16 v0, p1

    move-object/from16 v12, p3

    move-object/from16 v15, p4

    array-length v2, v12

    const/4 v3, 0x3

    div-int/lit8 v14, v2, 0x3

    iget-object v2, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v0, v1}, Ljn/v;->S(J)Z

    move-result v2

    if-eqz v2, :cond_11

    if-lt v14, v3, :cond_11

    if-nez v15, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2}, Ljn/C;->a()V

    iget-object v2, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v2}, Ljn/E;->b()V

    new-array v2, v3, [F

    const/4 v3, 0x0

    const/4 v8, 0x0

    aput v8, v2, v3

    const/4 v4, 0x1

    aput v8, v2, v4

    const/4 v5, 0x2

    aput v8, v2, v5

    move v6, v3

    :goto_0
    if-ge v6, v14, :cond_1

    aget v7, v2, v3

    mul-int/lit8 v16, v6, 0x3

    aget v17, v12, v16

    add-float v7, v7, v17

    aput v7, v2, v3

    aget v7, v2, v4

    add-int/lit8 v17, v16, 0x1

    aget v17, v12, v17

    add-float v7, v7, v17

    aput v7, v2, v4

    aget v7, v2, v5

    add-int/lit8 v16, v16, 0x2

    aget v16, v12, v16

    add-float v7, v7, v16

    aput v7, v2, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    int-to-float v6, v14

    const/high16 v28, 0x3f800000    # 1.0f

    div-float v6, v28, v6

    aget v7, v2, v3

    mul-float/2addr v7, v6

    aput v7, v2, v3

    aget v7, v2, v4

    mul-float/2addr v7, v6

    aput v7, v2, v4

    aget v4, v2, v5

    mul-float/2addr v4, v6

    aput v4, v2, v5

    iget-object v4, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v4, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v4

    iget-object v5, v4, Ljn/B;->b:[F

    invoke-static {v5, v2}, Ljn/g;->w([F[F)V

    iput v3, v4, Ljn/B;->e:I

    iput v8, v4, Ljn/B;->c:F

    iput v8, v4, Ljn/B;->d:F

    iput-wide v0, v4, Ljn/B;->h:J

    sget v0, Ljn/B;->j:I

    iput v0, v4, Ljn/B;->g:I

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v4}, Ljn/E;->g(Ljn/B;)V

    :goto_1
    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0}, Ljn/E;->c()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0}, Ljn/E;->f()Ljn/B;

    move-result-object v7

    iget v0, v7, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, v7, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    or-int/2addr v0, v1

    iput v0, v7, Ljn/B;->g:I

    iget-wide v5, v7, Ljn/B;->h:J

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v5, v6}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljn/G;

    iget v0, v7, Ljn/B;->e:I

    const-wide/16 v29, 0x0

    if-eqz v0, :cond_2

    iget-object v1, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v0}, Ljn/C;->g(I)Ljn/B;

    move-result-object v0

    iget-wide v0, v0, Ljn/B;->h:J

    move-wide v1, v0

    goto :goto_2

    :cond_2
    move-wide/from16 v1, v29

    :goto_2
    cmp-long v0, v1, v29

    if-eqz v0, :cond_3

    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v1, v2}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v8, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v8, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljn/G;

    move-object/from16 v31, v0

    move-object/from16 v32, v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    move-object/from16 v31, v8

    move-object/from16 v32, v31

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v7, Ljn/B;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Ljn/s;->d:[I

    iget v8, v3, Ljn/G;->a:I

    aget v0, v0, v8

    move v8, v0

    :goto_4
    const/4 v0, -0x1

    if-eq v8, v0, :cond_f

    iget-object v0, v4, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    iget-wide v9, v0, Ljn/p;->a:J

    cmp-long v0, v9, v29

    if-eqz v0, :cond_e

    cmp-long v0, v9, v1

    if-nez v0, :cond_4

    move-wide/from16 v33, v1

    :goto_5
    move-object/from16 v35, v3

    move-object v1, v4

    move-wide/from16 v36, v5

    move-object v0, v7

    move/from16 v40, v8

    move-object v6, v13

    move v7, v14

    move-object/from16 v43, v17

    move-object/from16 v44, v18

    const/16 v39, 0x0

    goto/16 :goto_8

    :cond_4
    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v9, v10}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    move-wide/from16 p1, v1

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v1, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljn/G;

    invoke-interface {v15, v9, v10, v1, v2}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_5

    move-wide/from16 v33, p1

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v33, p1

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-wide v1, v5

    move-object/from16 v35, v3

    move-object/from16 p1, v4

    move-wide/from16 v36, v5

    move-wide v5, v9

    move-object/from16 v38, v7

    move-object/from16 v7, v27

    move/from16 v40, v8

    const/16 v39, 0x0

    move-object/from16 v8, v26

    move-wide/from16 v41, v9

    move-object/from16 v10, v18

    move/from16 v9, v19

    move-object/from16 v44, v10

    move-object/from16 v43, v17

    move/from16 v10, v20

    invoke-virtual/range {v0 .. v10}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_6
    move-object/from16 v1, p1

    move-object v6, v13

    move v7, v14

    move-object/from16 v0, v38

    goto/16 :goto_8

    :cond_6
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/A$b;

    iget-object v1, v1, Ljn/A$b;->a:[F

    check-cast v0, Ljn/A$b;

    iget-object v0, v0, Ljn/A$b;->b:[F

    invoke-static {v1, v0, v12, v14}, Ljn/g;->i([F[F[FI)Ljn/g$a;

    move-result-object v2

    iget-boolean v3, v2, Ljn/g$a;->a:Z

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    iget v3, v2, Ljn/g$a;->b:F

    cmpl-float v3, v3, v28

    if-gtz v3, :cond_d

    iget v2, v2, Ljn/g$a;->c:F

    cmpg-float v2, v2, v39

    if-gez v2, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, v11, Ljn/A;->b:Ljn/C;

    move-wide/from16 v3, v41

    invoke-virtual {v2, v3, v4}, Ljn/C;->e(J)Ljn/B;

    move-result-object v2

    iget v5, v2, Ljn/B;->g:I

    sget v6, Ljn/B;->k:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    if-nez v5, :cond_a

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v5}, Ljn/g;->N([F[FF)[F

    move-result-object v0

    iput-object v0, v2, Ljn/B;->b:[F

    :cond_a
    move-object/from16 v0, v38

    iget-object v1, v0, Ljn/B;->b:[F

    iget-object v5, v2, Ljn/B;->b:[F

    move-object v6, v13

    move-object/from16 v13, p4

    move v7, v14

    move-object v14, v1

    move-object v15, v5

    move-wide/from16 v16, v33

    move-object/from16 v18, v32

    move-object/from16 v19, v31

    move-wide/from16 v20, v36

    move-object/from16 v22, p1

    move-object/from16 v23, v35

    move-wide/from16 v24, v3

    invoke-interface/range {v13 .. v27}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v1

    iget v5, v0, Ljn/B;->d:F

    add-float/2addr v5, v1

    iget v1, v2, Ljn/B;->g:I

    sget v8, Ljn/B;->j:I

    and-int/2addr v1, v8

    if-eqz v1, :cond_b

    iget v1, v2, Ljn/B;->d:F

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_b

    :goto_7
    move-object/from16 v1, p1

    goto :goto_8

    :cond_b
    iput-wide v3, v2, Ljn/B;->h:J

    iget-object v1, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v0}, Ljn/C;->h(Ljn/B;)I

    move-result v1

    iput v1, v2, Ljn/B;->e:I

    iput v5, v2, Ljn/B;->d:F

    iget v1, v2, Ljn/B;->g:I

    sget v3, Ljn/B;->j:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_c

    iget-object v1, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1, v2}, Ljn/E;->e(Ljn/B;)V

    goto :goto_7

    :cond_c
    iput v3, v2, Ljn/B;->g:I

    iget-object v1, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1, v2}, Ljn/E;->g(Ljn/B;)V

    goto :goto_7

    :cond_d
    move-object v6, v13

    move v7, v14

    move-object/from16 v0, v38

    goto :goto_7

    :cond_e
    move-wide/from16 v33, v1

    move-object/from16 v35, v3

    move-wide/from16 v36, v5

    move-object v0, v7

    move/from16 v40, v8

    move-object v6, v13

    move v7, v14

    move-object/from16 v43, v17

    move-object/from16 v44, v18

    const/16 v39, 0x0

    move-object v1, v4

    :goto_8
    iget-object v2, v1, Ljn/s;->e:Ljava/util/List;

    move/from16 v3, v40

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/p;

    iget v8, v2, Ljn/p;->b:I

    move-object/from16 v15, p4

    move-object v4, v1

    move-object v13, v6

    move v14, v7

    move-wide/from16 v1, v33

    move-object/from16 v3, v35

    move-wide/from16 v5, v36

    move-object/from16 v10, v43

    move-object/from16 v9, v44

    move-object v7, v0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v15, p4

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v44, v9

    move-object/from16 v43, v10

    move-object v6, v13

    new-instance v0, Ljn/l;

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v6, v1, v2}, Ljn/l;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_11
    :goto_9
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljn/L;Ljn/A$a;)Ljn/O;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "frand"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn/L;",
            "Ljn/A$a;",
            ")",
            "Ljn/O<",
            "Ljn/m;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v6, v2

    move v5, v4

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v8}, Ljn/v;->x()I

    move-result v8

    if-ge v5, v8, :cond_3

    iget-object v8, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v8, v5}, Ljn/v;->I(I)Ljn/s;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, v8, Ljn/s;->c:Ljn/q;

    if-eqz v9, :cond_2

    iget-object v9, v9, Ljn/q;->a:Ljn/r;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v7, v9

    invoke-virtual/range {p2 .. p2}, Ljn/A$a;->a()F

    move-result v10

    mul-float/2addr v10, v7

    cmpg-float v9, v10, v9

    if-gtz v9, :cond_2

    move-object v6, v8

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    const-string v1, "Tile not found"

    invoke-static {v1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v1

    return-object v1

    :cond_4
    iget-object v5, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v5, v6}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move v5, v4

    const/4 v11, 0x0

    :goto_2
    iget-object v12, v6, Ljn/s;->c:Ljn/q;

    iget-object v13, v12, Ljn/q;->a:Ljn/r;

    iget v13, v13, Ljn/r;->g:I

    if-ge v5, v13, :cond_9

    iget-object v12, v12, Ljn/q;->c:[Ljn/G;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Ljn/G;->b()I

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v14, v5

    or-long/2addr v14, v7

    invoke-interface {v1, v14, v15, v6, v12}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v16

    if-nez v16, :cond_6

    :goto_3
    move-wide/from16 v19, v7

    goto :goto_5

    :cond_6
    const/16 v16, 0x2

    move/from16 v3, v16

    const/16 v16, 0x0

    :goto_4
    iget v13, v12, Ljn/G;->e:I

    if-ge v3, v13, :cond_7

    iget-object v13, v12, Ljn/G;->b:[I

    aget v18, v13, v4

    const/16 v17, 0x3

    mul-int/lit8 v4, v18, 0x3

    add-int/lit8 v18, v3, -0x1

    aget v18, v13, v18

    mul-int/lit8 v1, v18, 0x3

    aget v13, v13, v3

    mul-int/lit8 v13, v13, 0x3

    move-wide/from16 v19, v7

    iget-object v7, v6, Ljn/s;->c:Ljn/q;

    iget-object v7, v7, Ljn/q;->b:[F

    invoke-static {v7, v4, v1, v13}, Ljn/g;->t([FIII)F

    move-result v1

    add-float v16, v16, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v7, v19

    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    move-wide/from16 v19, v7

    add-float v11, v11, v16

    invoke-virtual/range {p2 .. p2}, Ljn/A$a;->a()F

    move-result v1

    mul-float/2addr v1, v11

    cmpg-float v1, v1, v16

    if-gtz v1, :cond_8

    move-object v2, v12

    move-wide v9, v14

    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v7, v19

    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    const-string v1, "Poly not found"

    invoke-static {v1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v1

    return-object v1

    :cond_a
    iget-object v1, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v1}, Ljn/v;->y()I

    move-result v1

    const/4 v3, 0x3

    mul-int/2addr v1, v3

    new-array v1, v1, [F

    iget-object v4, v0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v4}, Ljn/v;->y()I

    move-result v4

    new-array v4, v4, [F

    iget-object v5, v6, Ljn/s;->c:Ljn/q;

    iget-object v5, v5, Ljn/q;->b:[F

    iget-object v7, v2, Ljn/G;->b:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-int/2addr v7, v3

    invoke-static {v5, v7, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    move v7, v5

    :goto_6
    iget v8, v2, Ljn/G;->e:I

    if-ge v7, v8, :cond_b

    iget-object v8, v6, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->b:[F

    iget-object v11, v2, Ljn/G;->b:[I

    aget v11, v11, v7

    mul-int/2addr v11, v3

    mul-int/lit8 v12, v7, 0x3

    invoke-static {v8, v11, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljn/A$a;->a()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljn/A$a;->a()F

    move-result v6

    iget v2, v2, Ljn/G;->e:I

    invoke-static {v1, v2, v4, v3, v6}, Ljn/g;->r([FI[FFF)[F

    move-result-object v1

    new-instance v2, Ljn/m;

    invoke-direct {v2, v9, v10, v1}, Ljn/m;-><init>(J[F)V

    invoke-virtual {v0, v9, v10, v1}, Ljn/A;->A(J[F)Ljn/O;

    move-result-object v3

    invoke-virtual {v3}, Ljn/O;->a()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v1, v3, Ljn/O;->b:Ljn/Q;

    invoke-static {v1, v2}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v1

    return-object v1

    :cond_c
    iget-object v3, v3, Ljn/O;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v5

    invoke-static {v2}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v1

    return-object v1

    :cond_d
    :goto_7
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v1

    return-object v1
.end method

.method public q(J[FFLjn/L;Ljn/A$a;)Ljn/O;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "centerPos",
            "maxRadius",
            "filter",
            "frand"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[FF",
            "Ljn/L;",
            "Ljn/A$a;",
            ")",
            "Ljn/O<",
            "Ljn/m;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljn/J;->c()Ljn/J;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Ljn/A;->r(J[FFLjn/L;Ljn/A$a;Ljn/J;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public r(J[FFLjn/L;Ljn/A$a;Ljn/J;)Ljn/O;
    .locals 33
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "centerPos",
            "maxRadius",
            "filter",
            "frand",
            "constraint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[FF",
            "Ljn/L;",
            "Ljn/A$a;",
            "Ljn/J;",
            ")",
            "Ljn/O<",
            "Ljn/m;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-wide/from16 v0, p1

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    iget-object v2, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v0, v1}, Ljn/v;->S(J)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v12, :cond_15

    invoke-static/range {p3 .. p3}, Ljn/g;->I([F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v15, 0x0

    cmpg-float v2, v13, v15

    if-ltz v2, :cond_15

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v14, :cond_15

    if-nez p6, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v0, v1}, Ljn/v;->K(J)Ljn/U;

    move-result-object v2

    iget-object v3, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v3, Ljn/s;

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljn/G;

    invoke-interface {v14, v0, v1, v3, v2}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Invalid start ref"

    invoke-static {v0}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2}, Ljn/C;->a()V

    iget-object v2, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v2}, Ljn/E;->b()V

    iget-object v2, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v2

    iget-object v3, v2, Ljn/B;->b:[F

    invoke-static {v3, v12}, Ljn/g;->w([F[F)V

    const/4 v10, 0x0

    iput v10, v2, Ljn/B;->e:I

    iput v15, v2, Ljn/B;->c:F

    iput v15, v2, Ljn/B;->d:F

    iput-wide v0, v2, Ljn/B;->h:J

    sget v0, Ljn/B;->j:I

    iput v0, v2, Ljn/B;->g:I

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v2}, Ljn/E;->g(Ljn/B;)V

    mul-float v16, v13, v13

    const/4 v0, 0x0

    const-wide/16 v17, 0x0

    move-object v1, v0

    move v4, v15

    move-wide/from16 v2, v17

    :goto_0
    iget-object v5, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v5}, Ljn/E;->c()Z

    move-result v5

    const/4 v6, 0x3

    if-nez v5, :cond_12

    iget-object v5, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v5}, Ljn/E;->f()Ljn/B;

    move-result-object v9

    iget v5, v9, Ljn/B;->g:I

    sget v7, Ljn/B;->j:I

    not-int v7, v7

    and-int/2addr v5, v7

    iput v5, v9, Ljn/B;->g:I

    sget v7, Ljn/B;->k:I

    or-int/2addr v5, v7

    iput v5, v9, Ljn/B;->g:I

    iget-wide v7, v9, Ljn/B;->h:J

    iget-object v5, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v5, v7, v8}, Ljn/v;->K(J)Ljn/U;

    move-result-object v5

    iget-object v15, v5, Ljn/U;->a:Ljava/lang/Object;

    check-cast v15, Ljn/s;

    iget-object v5, v5, Ljn/U;->b:Ljava/lang/Object;

    check-cast v5, Ljn/G;

    invoke-virtual {v5}, Ljn/G;->b()I

    move-result v19

    if-nez v19, :cond_6

    iget v10, v5, Ljn/G;->e:I

    mul-int/2addr v10, v6

    new-array v10, v10, [F

    move-wide/from16 v20, v2

    const/4 v6, 0x0

    :goto_1
    iget v2, v5, Ljn/G;->e:I

    if-ge v6, v2, :cond_2

    iget-object v2, v15, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    iget-object v3, v5, Ljn/G;->b:[I

    aget v3, v3, v6

    move-object/from16 p2, v1

    const/4 v1, 0x3

    mul-int/2addr v3, v1

    move-object/from16 v22, v0

    mul-int/lit8 v0, v6, 0x3

    invoke-static {v2, v3, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v0, v22

    goto :goto_1

    :cond_2
    move-object/from16 v6, p7

    move-object/from16 v22, v0

    move-object/from16 p2, v1

    const/4 v1, 0x3

    invoke-interface {v6, v10, v12, v13}, Ljn/J;->b([F[FF)[F

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v2, v0

    div-int/2addr v2, v1

    const/4 v3, 0x2

    const/4 v10, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    add-int/lit8 v23, v3, -0x1

    move/from16 v24, v2

    mul-int/lit8 v2, v23, 0x3

    mul-int/lit8 v1, v3, 0x3

    const/4 v13, 0x0

    invoke-static {v0, v13, v2, v1}, Ljn/g;->t([FIII)F

    move-result v1

    add-float/2addr v10, v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v13, p4

    move/from16 v2, v24

    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    add-float/2addr v4, v10

    invoke-virtual/range {p6 .. p6}, Ljn/A$a;->a()F

    move-result v1

    mul-float/2addr v1, v4

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_4

    move-object/from16 v19, v0

    move/from16 v23, v4

    move-object/from16 v22, v5

    move-wide/from16 v20, v7

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v19, p2

    move/from16 v23, v4

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v6, p7

    move-object/from16 v22, v0

    move-object/from16 p2, v1

    move-wide/from16 v20, v2

    move v13, v10

    goto :goto_3

    :goto_4
    iget v0, v9, Ljn/B;->e:I

    if-eqz v0, :cond_7

    iget-object v1, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v0}, Ljn/C;->g(I)Ljn/B;

    move-result-object v0

    iget-wide v0, v0, Ljn/B;->h:J

    move-wide/from16 v24, v0

    goto :goto_5

    :cond_7
    move-wide/from16 v24, v17

    :goto_5
    iget-object v0, v15, Ljn/s;->d:[I

    iget v1, v5, Ljn/G;->a:I

    aget v0, v0, v1

    move v10, v0

    :goto_6
    const/4 v0, -0x1

    if-eq v10, v0, :cond_11

    iget-object v0, v15, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget-wide v3, v0, Ljn/p;->a:J

    cmp-long v0, v3, v17

    if-eqz v0, :cond_8

    cmp-long v0, v3, v24

    if-nez v0, :cond_9

    :cond_8
    :goto_7
    move-object/from16 v30, v5

    move-wide/from16 v31, v7

    move v14, v10

    move/from16 v26, v13

    move-object v13, v9

    goto/16 :goto_8

    :cond_9
    iget-object v0, v11, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v3, v4}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v1, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljn/G;

    invoke-interface {v14, v3, v4, v1, v2}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-wide v1, v7

    move-wide/from16 p1, v3

    move-object v3, v5

    move-object v4, v15

    move-object/from16 v30, v5

    move-wide/from16 v5, p1

    move-wide/from16 v31, v7

    move-object/from16 v7, v29

    move-object/from16 v8, v28

    move-object v13, v9

    move/from16 v9, v26

    move v14, v10

    const/16 v26, 0x0

    move/from16 v10, v27

    invoke-virtual/range {v0 .. v10}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/A$b;

    iget-object v1, v1, Ljn/A$b;->a:[F

    check-cast v0, Ljn/A$b;

    iget-object v0, v0, Ljn/A$b;->b:[F

    invoke-static {v12, v1, v0}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object v2

    iget-object v2, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v16

    if-lez v2, :cond_c

    goto :goto_8

    :cond_c
    iget-object v2, v11, Ljn/A;->b:Ljn/C;

    move-wide/from16 v3, p1

    invoke-virtual {v2, v3, v4}, Ljn/C;->e(J)Ljn/B;

    move-result-object v2

    iget v5, v2, Ljn/B;->g:I

    sget v6, Ljn/B;->k:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    if-nez v5, :cond_e

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v5}, Ljn/g;->N([F[FF)[F

    move-result-object v0

    iput-object v0, v2, Ljn/B;->b:[F

    :cond_e
    iget v0, v13, Ljn/B;->d:F

    iget-object v1, v13, Ljn/B;->b:[F

    iget-object v5, v2, Ljn/B;->b:[F

    invoke-static {v1, v5}, Ljn/g;->z([F[F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v2, Ljn/B;->g:I

    sget v5, Ljn/B;->j:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_f

    iget v5, v2, Ljn/B;->d:F

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_f

    goto :goto_8

    :cond_f
    iput-wide v3, v2, Ljn/B;->h:J

    sget v3, Ljn/B;->k:I

    not-int v3, v3

    and-int/2addr v1, v3

    iput v1, v2, Ljn/B;->g:I

    iget-object v1, v11, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v13}, Ljn/C;->h(Ljn/B;)I

    move-result v1

    iput v1, v2, Ljn/B;->e:I

    iput v0, v2, Ljn/B;->d:F

    iget v0, v2, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v2}, Ljn/E;->e(Ljn/B;)V

    goto :goto_8

    :cond_10
    iput v1, v2, Ljn/B;->g:I

    iget-object v0, v11, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v2}, Ljn/E;->g(Ljn/B;)V

    :goto_8
    iget-object v0, v15, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v10, v0, Ljn/p;->b:I

    move-object/from16 v14, p5

    move-object/from16 v6, p7

    move-object v9, v13

    move/from16 v13, v26

    move-object/from16 v5, v30

    move-wide/from16 v7, v31

    goto/16 :goto_6

    :cond_11
    move-object/from16 v14, p5

    move v10, v13

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    move-object/from16 v0, v22

    move/from16 v4, v23

    const/4 v15, 0x0

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_12
    move-object/from16 v22, v0

    move-object/from16 p2, v1

    move-wide/from16 v20, v2

    if-nez v22, :cond_13

    invoke-static {}, Ljn/O;->b()Ljn/O;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual/range {p6 .. p6}, Ljn/A$a;->a()F

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljn/A$a;->a()F

    move-result v1

    move-object/from16 v2, p2

    array-length v3, v2

    const/4 v4, 0x3

    div-int/2addr v3, v4

    new-array v3, v3, [F

    array-length v5, v2

    div-int/2addr v5, v4

    invoke-static {v2, v5, v3, v0, v1}, Ljn/g;->r([FI[FFF)[F

    move-result-object v0

    new-instance v1, Ljn/m;

    move-wide/from16 v2, v20

    invoke-direct {v1, v2, v3, v0}, Ljn/m;-><init>(J[F)V

    invoke-virtual {v11, v2, v3, v0}, Ljn/A;->A(J[F)Ljn/O;

    move-result-object v2

    invoke-virtual {v2}, Ljn/O;->a()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v0, v2, Ljn/O;->b:Ljn/Q;

    invoke-static {v0, v1}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_14
    iget-object v2, v2, Ljn/O;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-static {v1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_15
    :goto_9
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public s(J[FFLjn/L;Ljn/A$a;)Ljn/O;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "centerPos",
            "maxRadius",
            "filter",
            "frand"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[FF",
            "Ljn/L;",
            "Ljn/A$a;",
            ")",
            "Ljn/O<",
            "Ljn/m;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljn/J;->a()Ljn/J;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Ljn/A;->r(J[FFLjn/L;Ljn/A$a;Ljn/J;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public t([F[FLjava/util/List;II)Ljn/O;
    .locals 31
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPos",
            "endPos",
            "path",
            "maxStraightPath",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljn/S;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1d

    invoke-static/range {p1 .. p1}, Ljn/g;->I([F)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v9, :cond_1d

    invoke-static/range {p2 .. p2}, Ljn/g;->I([F)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v10, :cond_1d

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-eqz v1, :cond_1d

    if-gtz p4, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2, v0}, Ljn/A;->e(J[F)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Cannot find start position"

    invoke-static {v0}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [F

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1, v9}, Ljn/A;->e(J[F)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Cannot find end position"

    invoke-static {v0}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [F

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v5, v11

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ljn/A;->c([FIJLjava/util/List;I)Ljn/Q;

    move-result-object v0

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v15, :cond_1c

    invoke-static {v7}, Ljn/g;->y([F)[F

    move-result-object v0

    invoke-static {v0}, Ljn/g;->y([F)[F

    move-result-object v1

    invoke-static {v0}, Ljn/g;->y([F)[F

    move-result-object v2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v7, v1

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move v1, v12

    move v3, v1

    move v5, v3

    move v6, v5

    move/from16 v21, v6

    move/from16 v22, v21

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_1b

    add-int/lit8 v4, v6, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_7

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move/from16 p1, v3

    move/from16 v25, v4

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v8, v13, v14, v3, v4}, Ljn/A;->C(JJ)Ljn/O;

    move-result-object v3

    invoke-virtual {v3}, Ljn/O;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3, v9}, Ljn/A;->e(J[F)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [F

    and-int/lit8 v0, p5, 0x3

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    move v2, v6

    move-object v3, v9

    move-object/from16 v4, p3

    move-object v5, v11

    move v12, v6

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Ljn/A;->b(II[FLjava/util/List;Ljava/util/List;II)Ljn/Q;

    goto :goto_1

    :cond_5
    move v12, v6

    :goto_1
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v5, v11

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ljn/A;->c([FIJLjava/util/List;I)Ljn/Q;

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_6
    move v12, v6

    iget-object v3, v3, Ljn/O;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljn/A$b;

    iget-object v4, v4, Ljn/A$b;->a:[F

    move-object v6, v3

    check-cast v6, Ljn/A$b;

    iget-object v6, v6, Ljn/A$b;->b:[F

    check-cast v3, Ljn/A$b;

    iget v3, v3, Ljn/A$b;->d:I

    if-nez v12, :cond_8

    invoke-static {v0, v4, v6}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object v13

    iget-object v13, v13, Ljn/U;->a:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const v14, 0x3a83126f    # 0.001f

    invoke-static {v14}, Ljn/g;->s(F)F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    move/from16 v3, p1

    move v6, v12

    const-wide/16 v23, 0x0

    goto/16 :goto_b

    :cond_7
    move/from16 p1, v3

    move/from16 v25, v4

    move v12, v6

    invoke-static/range {v16 .. v16}, Ljn/g;->y([F)[F

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljn/g;->y([F)[F

    move-result-object v6

    const/4 v3, 0x0

    :cond_8
    invoke-static {v0, v2, v6}, Ljn/g;->u([F[F[F)F

    move-result v13

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    const/16 v26, 0x4

    const/16 v27, 0x2

    if-gtz v13, :cond_11

    invoke-static {v0, v2}, Ljn/g;->H([F[F)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0, v7, v6}, Ljn/g;->u([F[F[F)F

    move-result v2

    cmpl-float v2, v2, v14

    if-lez v2, :cond_a

    :cond_9
    move v13, v5

    move-object v5, v7

    goto/16 :goto_4

    :cond_a
    and-int/lit8 v0, p5, 0x3

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    move/from16 v2, v21

    move-object v3, v7

    move-object/from16 v4, p3

    move v13, v5

    move-object v5, v11

    move/from16 v6, p4

    move-object v12, v7

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Ljn/A;->b(II[FLjava/util/List;Ljava/util/List;II)Ljn/Q;

    move-result-object v0

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_b
    move v13, v5

    move-object v12, v7

    :cond_c
    invoke-static {v12}, Ljn/g;->y([F)[F

    move-result-object v7

    const-wide/16 v0, 0x0

    cmp-long v2, v17, v0

    if-nez v2, :cond_d

    move/from16 v2, v27

    goto :goto_2

    :cond_d
    if-ne v13, v15, :cond_e

    move/from16 v2, v26

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide/from16 v3, v17

    move-object v5, v11

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ljn/A;->c([FIJLjava/util/List;I)Ljn/Q;

    move-result-object v0

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {v7}, Ljn/g;->y([F)[F

    move-result-object v0

    invoke-static {v7}, Ljn/g;->y([F)[F

    move-result-object v1

    move-object v2, v1

    move v5, v13

    move/from16 v1, v21

    move v3, v1

    move v6, v3

    const-wide/16 v23, 0x0

    :goto_3
    move-object/from16 v30, v7

    move-object v7, v0

    move-object/from16 v0, v30

    goto/16 :goto_b

    :goto_4
    invoke-static {v6}, Ljn/g;->y([F)[F

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v7, v25

    if-ge v7, v6, :cond_10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_5

    :cond_10
    const-wide/16 v19, 0x0

    :goto_5
    move-object v6, v2

    move v2, v3

    move-wide/from16 v28, v19

    move/from16 v19, v12

    goto :goto_6

    :cond_11
    move v13, v5

    move-object v5, v7

    move/from16 v7, v25

    move-object v6, v2

    move-wide/from16 v28, v19

    move/from16 v2, v22

    move/from16 v19, p1

    :goto_6
    invoke-static {v0, v5, v4}, Ljn/g;->u([F[F[F)F

    move-result v20

    cmpl-float v20, v20, v14

    if-ltz v20, :cond_1a

    invoke-static {v0, v5}, Ljn/g;->H([F[F)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v0, v6, v4}, Ljn/g;->u([F[F[F)F

    move-result v5

    cmpg-float v5, v5, v14

    if-gez v5, :cond_13

    :cond_12
    move v14, v2

    move-object/from16 v20, v6

    const-wide/16 v23, 0x0

    goto/16 :goto_8

    :cond_13
    and-int/lit8 v0, p5, 0x3

    if-eqz v0, :cond_14

    move-object/from16 v0, p0

    move v14, v2

    move/from16 v2, v19

    move-object v3, v6

    move-object/from16 v4, p3

    move-object v5, v11

    move-object/from16 v20, v6

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Ljn/A;->b(II[FLjava/util/List;Ljava/util/List;II)Ljn/Q;

    move-result-object v0

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_14
    move v14, v2

    move-object/from16 v20, v6

    :cond_15
    invoke-static/range {v20 .. v20}, Ljn/g;->y([F)[F

    move-result-object v7

    const-wide/16 v23, 0x0

    cmp-long v0, v28, v23

    if-nez v0, :cond_16

    move/from16 v2, v27

    goto :goto_7

    :cond_16
    if-ne v14, v15, :cond_17

    move/from16 v2, v26

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide/from16 v3, v28

    move-object v5, v11

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ljn/A;->c([FIJLjava/util/List;I)Ljn/Q;

    move-result-object v0

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-static {v7}, Ljn/g;->y([F)[F

    move-result-object v0

    invoke-static {v7}, Ljn/g;->y([F)[F

    move-result-object v1

    move-object v2, v1

    move v5, v13

    move/from16 v22, v14

    move/from16 v1, v19

    move v3, v1

    move v6, v3

    move/from16 v21, v6

    move-wide/from16 v19, v28

    goto/16 :goto_3

    :goto_8
    invoke-static {v4}, Ljn/g;->y([F)[F

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_19

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_9

    :cond_19
    move-wide/from16 v4, v23

    :goto_9
    move-object v7, v2

    move-wide/from16 v17, v4

    move v6, v12

    move/from16 v21, v6

    move/from16 v22, v14

    move-object/from16 v2, v20

    move v5, v3

    move/from16 v3, v19

    :goto_a
    move-wide/from16 v19, v28

    goto :goto_b

    :cond_1a
    move v14, v2

    move-object/from16 v20, v6

    const-wide/16 v23, 0x0

    move-object v7, v5

    move v6, v12

    move v5, v13

    move/from16 v22, v14

    move/from16 v3, v19

    move-object/from16 v2, v20

    goto :goto_a

    :goto_b
    add-int/2addr v6, v15

    move-wide/from16 v13, v23

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_1b
    and-int/lit8 v0, p5, 0x3

    if-eqz v0, :cond_1c

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Ljn/A;->b(II[FLjava/util/List;Ljava/util/List;II)Ljn/Q;

    move-result-object v0

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1c
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v5, v11

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ljn/A;->c([FIJLjava/util/List;I)Ljn/Q;

    invoke-static {v11}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1d
    :goto_c
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljn/v;
    .locals 1

    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    return-object v0
.end method

.method public v([FJLjn/G;Ljn/s;[FJLjn/G;Ljn/s;)Ljn/O;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromPos",
            "from",
            "fromPoly",
            "fromTile",
            "toPos",
            "to",
            "toPoly",
            "toTile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FJ",
            "Ljn/G;",
            "Ljn/s;",
            "[FJ",
            "Ljn/G;",
            "Ljn/s;",
            ")",
            "Ljn/O<",
            "[F>;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-virtual/range {v0 .. v10}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljn/O;->b:Ljn/Q;

    iget-object v0, v0, Ljn/O;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/A$b;

    iget-object v1, v1, Ljn/A$b;->a:[F

    check-cast v0, Ljn/A$b;

    iget-object v0, v0, Ljn/A$b;->b:[F

    move-object v2, p1

    move-object/from16 v3, p6

    invoke-static {p1, v3, v1, v0}, Ljn/g;->h([F[F[F[F)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/U;

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3f666666    # 0.9f

    invoke-static {v2, v3, v4}, Ljn/g;->a(FFF)F

    move-result v2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    invoke-static {v1, v0, v2}, Ljn/g;->N([F[FF)[F

    move-result-object v0

    invoke-static {v0}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public w(JLjn/G;Ljn/s;JLjn/G;Ljn/s;)Ljn/O;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "fromPoly",
            "fromTile",
            "to",
            "toPoly",
            "toTile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljn/G;",
            "Ljn/s;",
            "J",
            "Ljn/G;",
            "Ljn/s;",
            ")",
            "Ljn/O<",
            "[F>;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v13}, Ljn/A;->D(JLjn/G;Ljn/s;JLjn/G;Ljn/s;II)Ljn/O;

    move-result-object v3

    invoke-virtual {v3}, Ljn/O;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v3, Ljn/O;->b:Ljn/Q;

    iget-object v1, v3, Ljn/O;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljn/O;->h(Ljn/Q;Ljava/lang/String;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, v3, Ljn/O;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljn/A$b;

    iget-object v4, v4, Ljn/A$b;->a:[F

    check-cast v3, Ljn/A$b;

    iget-object v3, v3, Ljn/A$b;->b:[F

    aget v5, v4, v2

    aget v6, v3, v2

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    aget v7, v4, v1

    aget v8, v3, v1

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    aget v4, v4, v0

    aget v3, v3, v0

    add-float/2addr v4, v3

    mul-float/2addr v4, v6

    const/4 v3, 0x3

    new-array v3, v3, [F

    aput v5, v3, v2

    aput v7, v3, v1

    aput v4, v3, v0

    invoke-static {v3}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljn/C;
    .locals 1

    iget-object v0, p0, Ljn/A;->b:Ljn/C;

    return-object v0
.end method

.method public y(J)Ljn/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, p1, p2}, Ljn/v;->S(J)Z

    move-result v0

    const-string v1, "Invalid end ref"

    if-nez v0, :cond_0

    invoke-static {v1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ljn/A;->b:Ljn/C;

    invoke-virtual {v0, p1, p2}, Ljn/C;->d(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    invoke-static {v1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljn/B;

    iget p2, p1, Ljn/B;->g:I

    sget v0, Ljn/B;->k:I

    and-int/2addr p2, v0

    if-nez p2, :cond_2

    invoke-static {v1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Ljn/A;->z(Ljn/B;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljn/B;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn/B;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lin/a;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    iget-wide v3, p1, Ljn/B;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v3, p1, Ljn/B;->i:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljn/A;->b:Ljn/C;

    iget v4, p1, Ljn/B;->e:I

    invoke-virtual {v3, v4}, Ljn/C;->g(I)Ljn/B;

    move-result-object v3

    iget-object v4, p1, Ljn/B;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p1, Ljn/B;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p1, Ljn/B;->h:J

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    iget-wide v8, v3, Ljn/B;->h:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move-object p1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Ljn/A;->e:I

    if-lt v2, v3, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavMesh getPathToNode stopped due to maximum of "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljn/A;->e:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max fails!"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->U1(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Ljn/A;->b:Ljn/C;

    iget p1, p1, Ljn/B;->e:I

    invoke-virtual {v3, p1}, Ljn/C;->g(I)Ljn/B;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_0

    return-object v0
.end method
