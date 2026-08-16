.class public LOi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOi/a$b;,
        LOi/a$c;,
        LOi/a$d;
    }
.end annotation


# static fields
.field public static final e:I = 0x400

.field public static final f:I = 0x80

.field public static final g:I = 0x80

.field public static final h:I = 0x40

.field public static final i:I = 0x48

.field public static final j:I = 0x4

.field public static final k:I = 0x1

.field public static final l:I = 0x1000000

.field public static final m:I = 0x4

.field public static final n:I = 0x1

.field public static final o:J = 0xffffffffL

.field public static final p:[B


# instance fields
.field public a:LXi/b;

.field public b:[LOi/a$b;

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, LOi/a;->p:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([JIIII)V
    .locals 12

    aget-wide v0, p0, p1

    aget-wide v2, p0, p2

    aget-wide v4, p0, p3

    const-wide v6, 0xffffffffL

    and-long v8, v0, v6

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    and-long/2addr v6, v2

    mul-long/2addr v8, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    xor-long v2, v4, v0

    move/from16 v4, p4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v2

    aput-wide v0, p0, p1

    aput-wide v2, p0, p3

    return-void
.end method

.method public static C(LOi/a$b;IIIIIIIIIIIIIIII)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    invoke-static/range {p0 .. p0}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v3

    invoke-static {v3, v0, v4, v8, v12}, LOi/a;->a([JIIII)V

    invoke-static {v3, v1, v5, v9, v13}, LOi/a;->a([JIIII)V

    invoke-static {v3, v2, v6, v10, v14}, LOi/a;->a([JIIII)V

    move-object v4, v3

    move/from16 v3, p4

    invoke-static {v4, v3, v7, v11, v15}, LOi/a;->a([JIIII)V

    invoke-static {v4, v0, v5, v10, v15}, LOi/a;->a([JIIII)V

    invoke-static {v4, v1, v6, v11, v12}, LOi/a;->a([JIIII)V

    invoke-static {v4, v2, v7, v8, v13}, LOi/a;->a([JIIII)V

    move/from16 v0, p5

    move-object v1, v4

    invoke-static {v1, v3, v0, v9, v14}, LOi/a;->a([JIIII)V

    return-void
.end method

.method public static a([JIIII)V
    .locals 1

    const/16 v0, 0x20

    invoke-static {p0, p1, p2, p4, v0}, LOi/a;->A([JIIII)V

    const/16 v0, 0x18

    invoke-static {p0, p3, p4, p2, v0}, LOi/a;->A([JIIII)V

    const/16 v0, 0x10

    invoke-static {p0, p1, p2, p4, v0}, LOi/a;->A([JIIII)V

    const/16 p1, 0x3f

    invoke-static {p0, p3, p4, p2, p1}, LOi/a;->A([JIIII)V

    return-void
.end method

.method public static synthetic b(LOi/a$b;IIIIIIIIIIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p16}, LOi/a;->C(LOi/a$b;IIIIIIIIIIIIIIII)V

    return-void
.end method

.method public static c([BLBi/y;[B)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-object p0, LOi/a;->p:[B

    invoke-interface {p1, p0, v1, v0}, LBi/y;->update([BII)V

    return-void

    :cond_0
    array-length v2, p2

    invoke-static {v2, p0, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    invoke-interface {p1, p0, v1, v0}, LBi/y;->update([BII)V

    array-length p0, p2

    invoke-interface {p1, p2, v1, p0}, LBi/y;->update([BII)V

    return-void
.end method

.method public static q(LOi/a$d;)I
    .locals 1

    iget v0, p0, LOi/a$d;->a:I

    if-nez v0, :cond_0

    iget p0, p0, LOi/a$d;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final B()V
    .locals 3

    iget-object v0, p0, LOi/a;->b:[LOi/a$b;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOi/a;->b:[LOi/a$b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LOi/a$b;->f()LOi/a$b;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d([B[BII)V
    .locals 5

    iget-object v0, p0, LOi/a;->b:[LOi/a$b;

    iget v1, p0, LOi/a;->d:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    move v1, v2

    :goto_0
    iget-object v3, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v3}, LXi/b;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v3, p0, LOi/a;->d:I

    mul-int v4, v1, v3

    sub-int/2addr v3, v2

    add-int/2addr v4, v3

    iget-object v3, p0, LOi/a;->b:[LOi/a$b;

    aget-object v3, v3, v4

    invoke-static {v0, v3}, LOi/a$b;->c(LOi/a$b;LOi/a$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, LOi/a$b;->i([B)V

    invoke-virtual {p0, p1, p2, p3, p4}, LOi/a;->r([B[BII)V

    return-void
.end method

.method public final e(LXi/b;)V
    .locals 2

    invoke-virtual {p1}, LXi/b;->f()I

    move-result v0

    invoke-virtual {p1}, LXi/b;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, LXi/b;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    :cond_0
    invoke-virtual {p1}, LXi/b;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    iput v0, p0, LOi/a;->c:I

    mul-int/lit8 v1, v0, 0x4

    iput v1, p0, LOi/a;->d:I

    invoke-virtual {p1}, LXi/b;->e()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0}, LOi/a;->u(I)V

    return-void
.end method

.method public final f([B[B)V
    .locals 7

    const/16 v0, 0x48

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    move v2, v1

    :goto_0
    iget-object v4, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v4}, LXi/b;->e()I

    move-result v4

    if-ge v2, v4, :cond_0

    const/16 v4, 0x44

    invoke-static {v2, p2, v4}, Lorg/bouncycastle/util/p;->m(I[BI)V

    invoke-static {v2, v0, v4}, Lorg/bouncycastle/util/p;->m(I[BI)V

    const/16 v4, 0x400

    invoke-virtual {p0, p2, p1, v1, v4}, LOi/a;->r([B[BII)V

    iget-object v5, p0, LOi/a;->b:[LOi/a$b;

    iget v6, p0, LOi/a;->d:I

    mul-int/2addr v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, LOi/a$b;->h([B)V

    invoke-virtual {p0, v0, p1, v1, v4}, LOi/a;->r([B[BII)V

    iget-object v4, p0, LOi/a;->b:[LOi/a$b;

    iget v5, p0, LOi/a;->d:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, LOi/a$b;->h([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 7

    new-instance v0, LOi/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LOi/a$c;-><init>(LOi/a$a;)V

    new-instance v1, LOi/a$d;

    invoke-direct {v1}, LOi/a$d;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v4}, LXi/b;->d()I

    move-result v4

    if-ge v3, v4, :cond_2

    iput v3, v1, LOi/a$d;->a:I

    move v4, v2

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    iput v4, v1, LOi/a$d;->c:I

    move v5, v2

    :goto_2
    iget-object v6, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v6}, LXi/b;->e()I

    move-result v6

    if-ge v5, v6, :cond_0

    iput v5, v1, LOi/a$d;->b:I

    invoke-virtual {p0, v0, v1}, LOi/a;->h(LOi/a$c;LOi/a$d;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final h(LOi/a$c;LOi/a$d;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual {v7, v9}, LOi/a;->x(LOi/a$d;)Z

    move-result v10

    invoke-static/range {p2 .. p2}, LOi/a;->q(LOi/a$d;)I

    move-result v0

    iget v1, v9, LOi/a$d;->b:I

    iget v2, v7, LOi/a;->d:I

    mul-int/2addr v1, v2

    iget v2, v9, LOi/a$d;->c:I

    iget v3, v7, LOi/a;->c:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {v7, v1}, LOi/a;->m(I)I

    move-result v2

    if-eqz v10, :cond_0

    iget-object v3, v8, LOi/a$c;->c:LOi/a$b;

    invoke-virtual {v3}, LOi/a$b;->f()LOi/a$b;

    move-result-object v3

    iget-object v4, v8, LOi/a$c;->d:LOi/a$b;

    invoke-virtual {v4}, LOi/a$b;->f()LOi/a$b;

    move-result-object v4

    invoke-virtual {v7, v8, v9, v4, v3}, LOi/a;->t(LOi/a$c;LOi/a$d;LOi/a$b;LOi/a$b;)V

    move-object v11, v3

    move-object v12, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v11, v3

    move-object v12, v11

    :goto_0
    invoke-virtual {v7, v9}, LOi/a;->y(LOi/a$d;)Z

    move-result v13

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    :goto_1
    iget v0, v7, LOi/a;->c:I

    if-ge v14, v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move-object v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move v6, v10

    invoke-virtual/range {v0 .. v6}, LOi/a;->n(LOi/a$c;ILOi/a$b;LOi/a$b;IZ)J

    move-result-wide v3

    invoke-virtual {v7, v9, v3, v4}, LOi/a;->p(LOi/a$d;J)I

    move-result v6

    iget v0, v9, LOi/a$d;->b:I

    if-ne v6, v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v14

    invoke-virtual/range {v0 .. v5}, LOi/a;->o(LOi/a$d;IJZ)I

    move-result v0

    iget-object v1, v7, LOi/a;->b:[LOi/a$b;

    aget-object v2, v1, v16

    iget v3, v7, LOi/a;->d:I

    mul-int/2addr v3, v6

    add-int/2addr v3, v0

    aget-object v0, v1, v3

    aget-object v1, v1, v15

    if-eqz v13, :cond_2

    invoke-static {v8, v2, v0, v1}, LOi/a$c;->a(LOi/a$c;LOi/a$b;LOi/a$b;LOi/a$b;)V

    goto :goto_4

    :cond_2
    invoke-static {v8, v2, v0, v1}, LOi/a$c;->b(LOi/a$c;LOi/a$b;LOi/a$b;LOi/a$b;)V

    :goto_4
    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v15

    move v15, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public i([B[B)I
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, LOi/a;->j([B[BII)I

    move-result p1

    return p1
.end method

.method public j([B[BII)I
    .locals 1

    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-virtual {p0, v0, p1, p4}, LOi/a;->v([B[BI)V

    invoke-virtual {p0}, LOi/a;->g()V

    invoke-virtual {p0, v0, p2, p3, p4}, LOi/a;->d([B[BII)V

    invoke-virtual {p0}, LOi/a;->B()V

    return p4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output length less than 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k([C[B)I
    .locals 1

    iget-object v0, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v0}, LXi/b;->c()LBi/i;

    move-result-object v0

    invoke-interface {v0, p1}, LBi/i;->a([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LOi/a;->i([B[B)I

    move-result p1

    return p1
.end method

.method public l([C[BII)I
    .locals 1

    iget-object v0, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v0}, LXi/b;->c()LBi/i;

    move-result-object v0

    invoke-interface {v0, p1}, LBi/i;->a([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, LOi/a;->j([B[BII)I

    move-result p1

    return p1
.end method

.method public final m(I)I
    .locals 2

    iget v0, p0, LOi/a;->d:I

    rem-int v1, p1, v0

    if-nez v1, :cond_0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final n(LOi/a$c;ILOi/a$b;LOi/a$b;IZ)J
    .locals 0

    if-eqz p6, :cond_1

    rem-int/lit16 p2, p2, 0x80

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p4, p3}, LOi/a;->z(LOi/a$c;LOi/a$b;LOi/a$b;)V

    :cond_0
    invoke-static {p3}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object p1

    aget-wide p2, p1, p2

    return-wide p2

    :cond_1
    iget-object p1, p0, LOi/a;->b:[LOi/a$b;

    aget-object p1, p1, p5

    invoke-static {p1}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object p1

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    return-wide p2
.end method

.method public final o(LOi/a$d;IJZ)I
    .locals 5

    iget v0, p1, LOi/a$d;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget p1, p1, LOi/a$d;->c:I

    if-nez v0, :cond_2

    if-eqz p5, :cond_0

    iget p5, p0, LOi/a;->c:I

    mul-int/2addr p1, p5

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_0
    iget p5, p0, LOi/a;->c:I

    mul-int/2addr p1, p5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr p1, v1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, LOi/a;->c:I

    mul-int/2addr p1, v0

    iget v3, p0, LOi/a;->d:I

    rem-int/2addr p1, v3

    sub-int/2addr v3, v0

    if-eqz p5, :cond_3

    add-int/2addr v3, p2

    add-int/lit8 p2, v3, -0x1

    :goto_1
    move v2, p1

    move p1, p2

    goto :goto_3

    :cond_3
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    add-int p2, v3, v1

    goto :goto_1

    :goto_3
    const-wide v0, 0xffffffffL

    and-long p2, p3, v0

    mul-long/2addr p2, p2

    const/16 p4, 0x20

    ushr-long/2addr p2, p4

    add-int/lit8 p5, p1, -0x1

    int-to-long v0, p5

    int-to-long v3, p1

    mul-long/2addr v3, p2

    ushr-long p1, v3, p4

    sub-long/2addr v0, p1

    int-to-long p1, v2

    add-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, LOi/a;->d:I

    rem-int/2addr p1, p2

    return p1
.end method

.method public final p(LOi/a$d;J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p2, v0

    iget-object v0, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v0}, LXi/b;->e()I

    move-result v0

    int-to-long v0, v0

    rem-long/2addr p2, v0

    long-to-int p2, p2

    iget p3, p1, LOi/a$d;->a:I

    if-nez p3, :cond_0

    iget p3, p1, LOi/a$d;->c:I

    if-nez p3, :cond_0

    iget p2, p1, LOi/a$d;->b:I

    :cond_0
    return p2
.end method

.method public final r([B[BII)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p4, v1, v2}, Lorg/bouncycastle/util/p;->m(I[BI)V

    const/16 v3, 0x40

    if-gt p4, v3, :cond_0

    new-instance v3, LIi/c;

    mul-int/lit8 p4, p4, 0x8

    invoke-direct {v3, p4}, LIi/c;-><init>(I)V

    invoke-virtual {v3, v1, v2, v0}, LIi/c;->update([BII)V

    array-length p4, p1

    invoke-virtual {v3, p1, v2, p4}, LIi/c;->update([BII)V

    invoke-virtual {v3, p2, p3}, LIi/c;->c([BI)I

    goto :goto_1

    :cond_0
    new-instance v4, LIi/c;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, LIi/c;-><init>(I)V

    new-array v5, v3, [B

    invoke-virtual {v4, v1, v2, v0}, LIi/c;->update([BII)V

    array-length v0, p1

    invoke-virtual {v4, p1, v2, v0}, LIi/c;->update([BII)V

    invoke-virtual {v4, v5, v2}, LIi/c;->c([BI)I

    const/16 p1, 0x20

    invoke-static {v5, v2, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p1

    add-int/lit8 v0, p4, 0x1f

    div-int/2addr v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-virtual {v4, v5, v2, v3}, LIi/c;->update([BII)V

    invoke-virtual {v4, v5, v2}, LIi/c;->c([BI)I

    invoke-static {v5, v2, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, 0x20

    goto :goto_0

    :cond_1
    mul-int/2addr v0, p1

    sub-int/2addr p4, v0

    new-instance p1, LIi/c;

    mul-int/lit8 p4, p4, 0x8

    invoke-direct {p1, p4}, LIi/c;-><init>(I)V

    invoke-virtual {p1, v5, v2, v3}, LIi/c;->update([BII)V

    invoke-virtual {p1, p2, p3}, LIi/c;->c([BI)I

    :goto_1
    return-void
.end method

.method public s(LXi/b;)V
    .locals 3

    iput-object p1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {p1}, LXi/b;->e()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, LXi/b;->e()I

    move-result v0

    const/high16 v2, 0x1000000

    if-gt v0, v2, :cond_2

    invoke-virtual {p1}, LXi/b;->f()I

    move-result v0

    invoke-virtual {p1}, LXi/b;->e()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, LXi/b;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, LOi/a;->e(LXi/b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "iterations is less than: 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory is less than: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LXi/b;->e()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LXi/b;->e()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be less than 16777216"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be greater than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(LOi/a$c;LOi/a$d;LOi/a$b;LOi/a$b;)V
    .locals 4

    invoke-static {p3}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v0

    iget v1, p2, LOi/a$d;->a:I

    invoke-virtual {p0, v1}, LOi/a;->w(I)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-static {p3}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v0

    iget v1, p2, LOi/a$d;->b:I

    invoke-virtual {p0, v1}, LOi/a;->w(I)J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    invoke-static {p3}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v0

    iget v1, p2, LOi/a$d;->c:I

    invoke-virtual {p0, v1}, LOi/a;->w(I)J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    invoke-static {p3}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v0

    iget-object v1, p0, LOi/a;->b:[LOi/a$b;

    array-length v1, v1

    invoke-virtual {p0, v1}, LOi/a;->w(I)J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    invoke-static {p3}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v0

    iget-object v1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v1}, LXi/b;->d()I

    move-result v1

    invoke-virtual {p0, v1}, LOi/a;->w(I)J

    move-result-wide v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    invoke-static {p3}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v0

    iget-object v1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v1}, LXi/b;->i()I

    move-result v1

    invoke-virtual {p0, v1}, LOi/a;->w(I)J

    move-result-wide v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    iget v0, p2, LOi/a$d;->a:I

    if-nez v0, :cond_0

    iget p2, p2, LOi/a$d;->c:I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3, p4}, LOi/a;->z(LOi/a$c;LOi/a$b;LOi/a$b;)V

    :cond_0
    return-void
.end method

.method public final u(I)V
    .locals 3

    new-array p1, p1, [LOi/a$b;

    iput-object p1, p0, LOi/a;->b:[LOi/a$b;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LOi/a;->b:[LOi/a$b;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, LOi/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LOi/a$b;-><init>(LOi/a$a;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v([B[BI)V
    .locals 8

    new-instance v0, LIi/c;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, LIi/c;-><init>(I)V

    iget-object v1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v1}, LXi/b;->e()I

    move-result v2

    iget-object v1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v1}, LXi/b;->f()I

    move-result v4

    iget-object v1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v1}, LXi/b;->d()I

    move-result v5

    iget-object v1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v1}, LXi/b;->j()I

    move-result v6

    iget-object v1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v1}, LXi/b;->i()I

    move-result v7

    move v3, p3

    filled-new-array/range {v2 .. v7}, [I

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {p3, p1, v1}, Lorg/bouncycastle/util/p;->o([I[BI)V

    const/16 p3, 0x18

    invoke-virtual {v0, p1, v1, p3}, LIi/c;->update([BII)V

    invoke-static {p1, v0, p2}, LOi/a;->c([BLBi/y;[B)V

    iget-object p2, p0, LOi/a;->a:LXi/b;

    invoke-virtual {p2}, LXi/b;->g()[B

    move-result-object p2

    invoke-static {p1, v0, p2}, LOi/a;->c([BLBi/y;[B)V

    iget-object p2, p0, LOi/a;->a:LXi/b;

    invoke-virtual {p2}, LXi/b;->h()[B

    move-result-object p2

    invoke-static {p1, v0, p2}, LOi/a;->c([BLBi/y;[B)V

    iget-object p2, p0, LOi/a;->a:LXi/b;

    invoke-virtual {p2}, LXi/b;->b()[B

    move-result-object p2

    invoke-static {p1, v0, p2}, LOi/a;->c([BLBi/y;[B)V

    const/16 p2, 0x48

    new-array p2, p2, [B

    invoke-virtual {v0, p2, v1}, LIi/c;->c([BI)I

    invoke-virtual {p0, p1, p2}, LOi/a;->f([B[B)V

    return-void
.end method

.method public final w(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final x(LOi/a$d;)Z
    .locals 3

    iget-object v0, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v0}, LXi/b;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LOi/a;->a:LXi/b;

    invoke-virtual {v0}, LXi/b;->i()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p1, LOi/a$d;->a:I

    if-nez v0, :cond_0

    iget p1, p1, LOi/a$d;->c:I

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final y(LOi/a$d;)Z
    .locals 1

    iget p1, p1, LOi/a$d;->a:I

    if-eqz p1, :cond_0

    iget-object p1, p0, LOi/a;->a:LXi/b;

    invoke-virtual {p1}, LXi/b;->j()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final z(LOi/a$c;LOi/a$b;LOi/a$b;)V
    .locals 6

    invoke-static {p2}, LOi/a$b;->b(LOi/a$b;)[J

    move-result-object v0

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    invoke-static {p1, p2, p3}, LOi/a$c;->c(LOi/a$c;LOi/a$b;LOi/a$b;)V

    invoke-static {p1, p3, p3}, LOi/a$c;->c(LOi/a$c;LOi/a$b;LOi/a$b;)V

    return-void
.end method
