.class public Lkl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x40

.field public static final B:I = 0x10

.field public static final C:I = 0x100

.field public static final D:I = 0x478

.field public static final E:I = 0xb0

.field public static final F:I = 0x20

.field public static final G:I = 0x0

.field public static final H:I = 0x1

.field public static final I:I = 0xff

.field public static final w:Ljava/util/logging/Logger;

.field public static final x:I = 0x20

.field public static final y:I = 0x40

.field public static final z:I = 0x20


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:LBi/a0;

.field public final s:I

.field public final t:I

.field public u:I

.field public final v:Lkl/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkl/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILkl/c;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lkl/h;->v:Lkl/c;

    iput v1, v0, Lkl/h;->t:I

    const/16 v2, 0x149

    const/16 v3, 0x55

    const/16 v4, 0x1b6

    const/16 v8, 0x81

    const/16 v9, 0x30

    const/16 v10, 0xc0

    const/16 v11, 0x60

    const/16 v12, 0xff

    const/16 v13, 0x20

    const/4 v14, 0x4

    const/16 v15, 0x80

    const/4 v5, 0x3

    const/16 v6, 0x40

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown parameter set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iput v15, v0, Lkl/h;->q:I

    iput v12, v0, Lkl/h;->f:I

    iput v4, v0, Lkl/h;->l:I

    iput v5, v0, Lkl/h;->n:I

    iput v3, v0, Lkl/h;->e:I

    iput v14, v0, Lkl/h;->d:I

    :goto_0
    iput v6, v0, Lkl/h;->p:I

    :goto_1
    iput v7, v0, Lkl/h;->m:I

    goto/16 :goto_4

    :pswitch_1
    iput v11, v0, Lkl/h;->q:I

    iput v10, v0, Lkl/h;->f:I

    iput v2, v0, Lkl/h;->l:I

    iput v5, v0, Lkl/h;->n:I

    iput v6, v0, Lkl/h;->e:I

    iput v14, v0, Lkl/h;->d:I

    :goto_2
    iput v9, v0, Lkl/h;->p:I

    goto :goto_1

    :pswitch_2
    iput v6, v0, Lkl/h;->q:I

    iput v8, v0, Lkl/h;->f:I

    const/16 v2, 0xdb

    iput v2, v0, Lkl/h;->l:I

    iput v5, v0, Lkl/h;->n:I

    const/16 v2, 0x2b

    iput v2, v0, Lkl/h;->e:I

    iput v14, v0, Lkl/h;->d:I

    :goto_3
    iput v13, v0, Lkl/h;->p:I

    goto :goto_1

    :pswitch_3
    iput v15, v0, Lkl/h;->q:I

    iput v12, v0, Lkl/h;->f:I

    const/16 v2, 0x259

    iput v2, v0, Lkl/h;->l:I

    const/16 v2, 0x44

    iput v2, v0, Lkl/h;->m:I

    const/16 v2, 0x10

    iput v2, v0, Lkl/h;->n:I

    iput v3, v0, Lkl/h;->e:I

    iput v14, v0, Lkl/h;->d:I

    iput v6, v0, Lkl/h;->p:I

    goto :goto_4

    :pswitch_4
    const/16 v2, 0x10

    iput v11, v0, Lkl/h;->q:I

    iput v10, v0, Lkl/h;->f:I

    const/16 v3, 0x1a3

    iput v3, v0, Lkl/h;->l:I

    const/16 v3, 0x34

    iput v3, v0, Lkl/h;->m:I

    iput v2, v0, Lkl/h;->n:I

    iput v6, v0, Lkl/h;->e:I

    iput v14, v0, Lkl/h;->d:I

    iput v9, v0, Lkl/h;->p:I

    goto :goto_4

    :pswitch_5
    const/16 v2, 0x10

    iput v6, v0, Lkl/h;->q:I

    iput v8, v0, Lkl/h;->f:I

    const/16 v3, 0xfa

    iput v3, v0, Lkl/h;->l:I

    const/16 v3, 0x24

    iput v3, v0, Lkl/h;->m:I

    iput v2, v0, Lkl/h;->n:I

    const/16 v2, 0x2b

    iput v2, v0, Lkl/h;->e:I

    iput v14, v0, Lkl/h;->d:I

    iput v13, v0, Lkl/h;->p:I

    goto :goto_4

    :pswitch_6
    iput v15, v0, Lkl/h;->q:I

    const/16 v2, 0x100

    iput v2, v0, Lkl/h;->f:I

    iput v4, v0, Lkl/h;->l:I

    iput v5, v0, Lkl/h;->n:I

    const/16 v3, 0xa

    iput v3, v0, Lkl/h;->e:I

    const/16 v2, 0x26

    iput v2, v0, Lkl/h;->d:I

    goto/16 :goto_0

    :pswitch_7
    const/16 v3, 0xa

    iput v11, v0, Lkl/h;->q:I

    iput v10, v0, Lkl/h;->f:I

    iput v2, v0, Lkl/h;->l:I

    iput v5, v0, Lkl/h;->n:I

    iput v3, v0, Lkl/h;->e:I

    const/16 v2, 0x1e

    iput v2, v0, Lkl/h;->d:I

    goto/16 :goto_2

    :pswitch_8
    const/16 v3, 0xa

    iput v6, v0, Lkl/h;->q:I

    iput v15, v0, Lkl/h;->f:I

    const/16 v2, 0xdb

    iput v2, v0, Lkl/h;->l:I

    iput v5, v0, Lkl/h;->n:I

    iput v3, v0, Lkl/h;->e:I

    const/16 v2, 0x14

    iput v2, v0, Lkl/h;->d:I

    goto/16 :goto_3

    :goto_4
    const/16 v2, 0x49

    const/16 v3, 0x41

    const/16 v4, 0x61

    const/16 v6, 0x31

    packed-switch v1, :pswitch_data_1

    const/4 v2, -0x1

    iput v2, v0, Lkl/h;->a:I

    iput v2, v0, Lkl/h;->b:I

    :goto_5
    iput v2, v0, Lkl/h;->c:I

    goto/16 :goto_6

    :pswitch_9
    iput v4, v0, Lkl/h;->a:I

    iput v3, v0, Lkl/h;->b:I

    const v2, 0x1ed4e

    goto :goto_5

    :pswitch_a
    iput v2, v0, Lkl/h;->a:I

    iput v6, v0, Lkl/h;->b:I

    const v2, 0x1160b

    goto :goto_5

    :pswitch_b
    const/16 v2, 0x34

    iput v2, v0, Lkl/h;->a:I

    const/16 v2, 0x23

    iput v2, v0, Lkl/h;->b:I

    const/16 v2, 0x7d3d

    goto :goto_5

    :pswitch_c
    iput v4, v0, Lkl/h;->a:I

    iput v3, v0, Lkl/h;->b:I

    const v2, 0xee64

    goto :goto_5

    :pswitch_d
    iput v2, v0, Lkl/h;->a:I

    iput v6, v0, Lkl/h;->b:I

    const v2, 0x88d4

    goto :goto_5

    :pswitch_e
    const/16 v2, 0x34

    iput v2, v0, Lkl/h;->a:I

    const/16 v2, 0x23

    iput v2, v0, Lkl/h;->b:I

    const/16 v2, 0x3914

    goto :goto_5

    :pswitch_f
    iput v4, v0, Lkl/h;->a:I

    iput v3, v0, Lkl/h;->b:I

    const v2, 0x33276

    goto :goto_5

    :pswitch_10
    iput v4, v0, Lkl/h;->a:I

    iput v3, v0, Lkl/h;->b:I

    const v2, 0x2070c

    goto :goto_5

    :pswitch_11
    iput v2, v0, Lkl/h;->a:I

    iput v6, v0, Lkl/h;->b:I

    const v2, 0x1dc01

    goto :goto_5

    :pswitch_12
    iput v2, v0, Lkl/h;->a:I

    iput v6, v0, Lkl/h;->b:I

    const v2, 0x12bf0

    goto :goto_5

    :pswitch_13
    iput v6, v0, Lkl/h;->a:I

    const/16 v2, 0x21

    iput v2, v0, Lkl/h;->b:I

    const v2, 0xd2cd

    goto :goto_5

    :pswitch_14
    iput v6, v0, Lkl/h;->a:I

    const/16 v2, 0x21

    iput v2, v0, Lkl/h;->b:I

    const v2, 0x84f4

    goto :goto_5

    :goto_6
    iget v2, v0, Lkl/h;->e:I

    mul-int/2addr v2, v5

    iget v3, v0, Lkl/h;->d:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Lkl/t;->i(I)I

    move-result v2

    iput v2, v0, Lkl/h;->i:I

    iget v3, v0, Lkl/h;->f:I

    invoke-static {v3}, Lkl/t;->i(I)I

    move-result v3

    iput v3, v0, Lkl/h;->g:I

    iget v4, v0, Lkl/h;->q:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lkl/t;->i(I)I

    move-result v4

    iput v4, v0, Lkl/h;->o:I

    iget v5, v0, Lkl/h;->f:I

    add-int/lit8 v6, v5, 0x1f

    div-int/2addr v6, v13

    iput v6, v0, Lkl/h;->h:I

    packed-switch v1, :pswitch_data_2

    iput v12, v0, Lkl/h;->s:I

    goto :goto_7

    :pswitch_15
    const/4 v1, 0x1

    iput v1, v0, Lkl/h;->s:I

    goto :goto_7

    :pswitch_16
    iput v7, v0, Lkl/h;->s:I

    :goto_7
    iget v1, v0, Lkl/h;->s:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    add-int/2addr v4, v2

    iput v4, v0, Lkl/h;->j:I

    add-int/2addr v4, v3

    iput v4, v0, Lkl/h;->k:I

    goto :goto_8

    :cond_0
    iput v7, v0, Lkl/h;->j:I

    iput v7, v0, Lkl/h;->k:I

    :goto_8
    if-eq v5, v15, :cond_2

    if-ne v5, v8, :cond_1

    goto :goto_a

    :cond_1
    new-instance v1, LIi/Q;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, LIi/Q;-><init>(I)V

    :goto_9
    iput-object v1, v0, Lkl/h;->r:LBi/a0;

    goto :goto_b

    :cond_2
    :goto_a
    new-instance v1, LIi/Q;

    invoke-direct {v1, v15}, LIi/Q;-><init>(I)V

    goto :goto_9

    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static B(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    not-int p0, p0

    return p0
.end method

.method public static K([III)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static L(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static g([III)I
    .locals 2

    if-nez p2, :cond_0

    aput p1, p0, p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aput p1, p0, p2

    goto :goto_0
.end method

.method public static l(I[BI[I)I
    .locals 5

    mul-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    if-le p0, p2, :cond_0

    return v0

    :cond_0
    div-int/2addr p2, p0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    aput v0, p3, v1

    move v2, v0

    :goto_1
    if-ge v2, p0, :cond_1

    aget v3, p3, v1

    mul-int v4, v1, p0

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Lkl/t;->b([BI)B

    move-result v4

    shl-int/2addr v4, v2

    add-int/2addr v3, v4

    aput v3, p3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public static n0([B[BI)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static o0([I[II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    aget v2, p0, v0

    aget v3, p1, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public final A([B[I[I)V
    .locals 10

    iget v0, p0, Lkl/h;->l:I

    invoke-static {v0}, Lkl/t;->a(I)I

    move-result v0

    iget v1, p0, Lkl/h;->n:I

    invoke-static {v1}, Lkl/t;->a(I)I

    move-result v1

    iget v2, p0, Lkl/h;->p:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v2, v3

    new-array v2, v2, [I

    const/16 v3, 0x40

    new-array v3, v3, [B

    iget v4, p0, Lkl/h;->p:I

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v5

    :goto_0
    iget v4, p0, Lkl/h;->m:I

    const/4 v6, 0x1

    if-ge p1, v4, :cond_3

    iget v4, p0, Lkl/h;->p:I

    invoke-static {v0, v3, v4, v2}, Lkl/h;->l(I[BI[I)I

    move-result v4

    move v7, v5

    :goto_1
    if-ge v7, v4, :cond_2

    aget v8, v2, v7

    iget v9, p0, Lkl/h;->l:I

    if-ge v8, v9, :cond_0

    invoke-static {p2, v8, p1}, Lkl/h;->g([III)I

    move-result p1

    :cond_0
    iget v8, p0, Lkl/h;->m:I

    if-ne p1, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    invoke-interface {v4, v6}, LBi/y;->update(B)V

    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    iget v6, p0, Lkl/h;->p:I

    invoke-interface {v4, v3, v5, v6}, LBi/y;->update([BII)V

    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    iget v6, p0, Lkl/h;->p:I

    invoke-interface {v4, v3, v5, v6}, LBi/a0;->e([BII)I

    goto :goto_0

    :cond_3
    move p1, v5

    :goto_3
    iget p2, p0, Lkl/h;->m:I

    if-ge p1, p2, :cond_7

    iget p2, p0, Lkl/h;->p:I

    invoke-static {v1, v3, p2, v2}, Lkl/h;->l(I[BI[I)I

    move-result p2

    move v0, v5

    :goto_4
    if-ge v0, p2, :cond_6

    aget v4, v2, v0

    iget v7, p0, Lkl/h;->n:I

    if-ge v4, v7, :cond_4

    aput v4, p3, p1

    add-int/lit8 p1, p1, 0x1

    :cond_4
    iget v4, p0, Lkl/h;->m:I

    if-ne p1, v4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    invoke-interface {p2, v6}, LBi/y;->update(B)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget v0, p0, Lkl/h;->p:I

    invoke-interface {p2, v3, v5, v0}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget v0, p0, Lkl/h;->p:I

    invoke-interface {p2, v3, v5, v0}, LBi/a0;->e([BII)I

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final C([BLkl/r;)V
    .locals 8

    iget-object p2, p2, Lkl/r;->a:[[B

    iget v0, p0, Lkl/h;->n:I

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    iget v0, p0, Lkl/h;->f:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lkl/h;->d:I

    if-ge v2, v5, :cond_1

    add-int/2addr v3, v0

    move v5, v1

    :goto_1
    if-ge v5, v0, :cond_0

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-static {p2, v3}, Lkl/t;->b([BI)B

    move-result v3

    invoke-static {p1, v4, v3}, Lkl/t;->n([BIB)V

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    move v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D([BI)I
    .locals 0

    invoke-static {p1, p2}, Lkl/t;->f([BI)B

    move-result p1

    return p1
.end method

.method public final E([I)[I
    .locals 4

    iget v0, p0, Lkl/h;->l:I

    iget v1, p0, Lkl/h;->m:I

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lkl/h;->l:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lkl/h;->m:I

    invoke-virtual {p0, p1, v3, v1}, Lkl/h;->r([III)Z

    move-result v3

    if-nez v3, :cond_0

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lkl/h;->b:I

    return v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lkl/h;->a:I

    return v0
.end method

.method public H(I)I
    .locals 1

    iget v0, p0, Lkl/h;->c:I

    add-int/2addr v0, p1

    return v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Lkl/h;->u:I

    return v0
.end method

.method public final J([I[I[[[B[B[B[B[[[B)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    iget v3, v0, Lkl/h;->p:I

    new-array v3, v3, [B

    iget v4, v0, Lkl/h;->l:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v4}, Lkl/t;->i(I)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    aput-byte v7, v1, v4

    move v4, v7

    :goto_0
    iget v8, v0, Lkl/h;->l:I

    const/4 v9, 0x3

    if-ge v4, v8, :cond_1

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_0

    iget-object v10, v0, Lkl/h;->r:LBi/a0;

    aget-object v11, p3, v4

    aget-object v11, v11, v8

    iget v12, v0, Lkl/h;->p:I

    invoke-interface {v10, v11, v7, v12}, LBi/y;->update([BII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v4, v0, Lkl/h;->s:I

    if-ne v4, v6, :cond_4

    move v4, v7

    :goto_2
    iget v8, v0, Lkl/h;->l:I

    if-ge v4, v8, :cond_4

    move v8, v7

    :goto_3
    if-ge v8, v9, :cond_3

    if-ne v8, v5, :cond_2

    iget v10, v0, Lkl/h;->k:I

    goto :goto_4

    :cond_2
    iget v10, v0, Lkl/h;->j:I

    :goto_4
    iget-object v11, v0, Lkl/h;->r:LBi/a0;

    aget-object v12, p7, v4

    aget-object v12, v12, v8

    invoke-interface {v11, v12, v7, v10}, LBi/y;->update([BII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lkl/h;->r:LBi/a0;

    invoke-static {p1}, Lorg/bouncycastle/util/p;->q([I)[B

    move-result-object v5

    iget v8, v0, Lkl/h;->g:I

    invoke-interface {v4, v5, v7, v8}, LBi/y;->update([BII)V

    iget-object v4, v0, Lkl/h;->r:LBi/a0;

    invoke-static {p2}, Lorg/bouncycastle/util/p;->q([I)[B

    move-result-object v5

    iget v8, v0, Lkl/h;->g:I

    invoke-interface {v4, v5, v7, v8}, LBi/y;->update([BII)V

    iget-object v4, v0, Lkl/h;->r:LBi/a0;

    const/16 v5, 0x20

    move-object/from16 v8, p5

    invoke-interface {v4, v8, v7, v5}, LBi/y;->update([BII)V

    iget-object v4, v0, Lkl/h;->r:LBi/a0;

    array-length v5, v2

    invoke-interface {v4, v2, v7, v5}, LBi/y;->update([BII)V

    iget-object v2, v0, Lkl/h;->r:LBi/a0;

    iget v4, v0, Lkl/h;->p:I

    invoke-interface {v2, v3, v7, v4}, LBi/a0;->e([BII)I

    move v2, v6

    move v4, v7

    :goto_5
    if-eqz v2, :cond_a

    move v5, v7

    :goto_6
    iget v8, v0, Lkl/h;->p:I

    if-ge v5, v8, :cond_8

    aget-byte v8, v3, v5

    move v10, v7

    :goto_7
    const/16 v11, 0x8

    if-ge v10, v11, :cond_6

    rsub-int/lit8 v11, v10, 0x6

    ushr-int v11, v8, v11

    and-int/2addr v11, v9

    if-ge v11, v9, :cond_5

    invoke-virtual {p0, v1, v4, v11}, Lkl/h;->j0([BII)V

    add-int/lit8 v4, v4, 0x1

    iget v11, v0, Lkl/h;->l:I

    if-ne v4, v11, :cond_5

    move v2, v7

    goto :goto_8

    :cond_5
    add-int/lit8 v10, v10, 0x2

    goto :goto_7

    :cond_6
    :goto_8
    if-nez v2, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    :goto_9
    if-nez v2, :cond_9

    goto :goto_a

    :cond_9
    iget-object v5, v0, Lkl/h;->r:LBi/a0;

    invoke-interface {v5, v6}, LBi/y;->update(B)V

    iget-object v5, v0, Lkl/h;->r:LBi/a0;

    iget v8, v0, Lkl/h;->p:I

    invoke-interface {v5, v3, v7, v8}, LBi/y;->update([BII)V

    iget-object v5, v0, Lkl/h;->r:LBi/a0;

    iget v8, v0, Lkl/h;->p:I

    invoke-interface {v5, v3, v7, v8}, LBi/a0;->e([BII)I

    goto :goto_5

    :cond_a
    :goto_a
    return-void
.end method

.method public M([I[I[II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lkl/h;->N([II[II[II)V

    return-void
.end method

.method public N([II[II[II)V
    .locals 11

    move-object v0, p0

    const/16 v1, 0x10

    new-array v1, v1, [I

    iget v2, v0, Lkl/h;->h:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    iget v3, v0, Lkl/h;->f:I

    div-int/lit8 v5, v3, 0x20

    mul-int/lit8 v2, v2, 0x20

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    ushr-int/2addr v3, v2

    const v6, 0x55555555

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lsk/a;->c(III)I

    move-result v3

    const v6, 0x33333333

    const/4 v7, 0x2

    invoke-static {v3, v6, v7}, Lsk/a;->c(III)I

    move-result v3

    const v6, 0xf0f0f0f

    const/4 v7, 0x4

    invoke-static {v3, v6, v7}, Lsk/a;->c(III)I

    move-result v3

    move v6, v4

    :goto_0
    iget v7, v0, Lkl/h;->f:I

    if-ge v6, v7, :cond_2

    move v7, v4

    move v8, v7

    :goto_1
    if-ge v7, v5, :cond_0

    iget v9, v0, Lkl/h;->h:I

    mul-int/2addr v9, v6

    add-int/2addr v9, v7

    add-int v10, p4, v7

    aget v10, p3, v10

    add-int v9, p6, v9

    aget v9, p5, v9

    and-int/2addr v9, v10

    xor-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    iget v7, v0, Lkl/h;->h:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int v9, p4, v5

    aget v9, p3, v9

    add-int v7, p6, v7

    aget v7, p5, v7

    and-int/2addr v7, v9

    and-int/2addr v7, v3

    xor-int/2addr v8, v7

    :cond_1
    invoke-static {v8}, Lkl/t;->l(I)I

    move-result v7

    invoke-static {v1, v6, v7}, Lkl/t;->o([III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget v2, v0, Lkl/h;->h:I

    move-object v3, p1

    move v5, p2

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final O(IIIILkl/r;Lkl/g;)I
    .locals 1

    invoke-virtual {p5}, Lkl/r;->d()I

    move-result p5

    invoke-static {p1}, Lkl/h;->B(I)I

    move-result v0

    and-int/2addr p4, v0

    invoke-static {p2}, Lkl/h;->B(I)I

    move-result v0

    and-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int/2addr p3, p5

    iget p4, p6, Lkl/g;->c:I

    if-ltz p4, :cond_0

    iget-object p5, p6, Lkl/g;->a:[[B

    aget-object p4, p5, p4

    iget p5, p6, Lkl/g;->b:I

    invoke-static {p4, p5}, Lkl/t;->b([BI)B

    move-result p4

    iget p5, p6, Lkl/g;->c:I

    invoke-static {p3, p5, p4}, Lkl/t;->m(III)I

    move-result p3

    :cond_0
    invoke-virtual {p0, p3, p6}, Lkl/h;->v0(ILkl/g;)V

    invoke-static {p3}, Lkl/t;->k(I)I

    move-result p3

    and-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method public final P([I[I[ILkl/r;[Lkl/u;)V
    .locals 14

    move-object/from16 v0, p4

    iget-object v1, v0, Lkl/r;->a:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v3, v0, Lkl/r;->b:I

    invoke-static {v1, v3}, Lkl/t;->b([BI)B

    move-result v1

    iget-object v3, v0, Lkl/r;->a:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v5, v0, Lkl/r;->b:I

    invoke-static {v3, v5}, Lkl/t;->b([BI)B

    move-result v3

    iget-object v5, v0, Lkl/r;->a:[[B

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v7, v0, Lkl/r;->b:I

    invoke-static {v5, v7}, Lkl/t;->b([BI)B

    move-result v5

    aget v7, p1, v2

    aget v8, p2, v4

    and-int v9, v7, v8

    aget v10, p1, v4

    aget v11, p2, v2

    and-int v12, v10, v11

    xor-int/2addr v9, v12

    and-int/2addr v7, v11

    xor-int/2addr v7, v9

    xor-int/2addr v7, v1

    xor-int/2addr v7, v3

    aput v7, p3, v2

    aget v9, p2, v6

    and-int v11, v10, v9

    aget v12, p1, v6

    and-int v13, v12, v8

    xor-int/2addr v11, v13

    and-int/2addr v8, v10

    xor-int/2addr v8, v11

    xor-int/2addr v3, v8

    xor-int/2addr v3, v5

    aput v3, p3, v4

    aget v3, p2, v2

    and-int/2addr v3, v12

    aget v8, p1, v2

    and-int/2addr v8, v9

    xor-int/2addr v3, v8

    and-int v8, v12, v9

    xor-int/2addr v3, v8

    xor-int/2addr v3, v5

    xor-int/2addr v1, v3

    aput v1, p3, v6

    aget-object v1, p5, v2

    iget-object v1, v1, Lkl/u;->b:[B

    iget v2, v0, Lkl/r;->b:I

    int-to-byte v3, v7

    invoke-static {v1, v2, v3}, Lkl/t;->n([BIB)V

    aget-object v1, p5, v4

    iget-object v1, v1, Lkl/u;->b:[B

    iget v2, v0, Lkl/r;->b:I

    aget v3, p3, v4

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lkl/t;->n([BIB)V

    aget-object v1, p5, v6

    iget-object v1, v1, Lkl/u;->b:[B

    iget v2, v0, Lkl/r;->b:I

    aget v3, p3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lkl/t;->n([BIB)V

    iget v1, v0, Lkl/r;->b:I

    add-int/2addr v1, v4

    iput v1, v0, Lkl/r;->b:I

    return-void
.end method

.method public Q([I[I[ILkl/r;Lkl/u;Lkl/u;)V
    .locals 6

    iget-object v0, p4, Lkl/r;->a:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, p4, Lkl/r;->b:I

    invoke-static {v0, v2}, Lkl/t;->b([BI)B

    move-result v0

    iget-object v2, p4, Lkl/r;->a:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v4, p4, Lkl/r;->b:I

    invoke-static {v2, v4}, Lkl/t;->b([BI)B

    move-result v2

    aget v4, p1, v1

    aget p1, p1, v3

    aget v5, p2, v1

    aget p2, p2, v3

    and-int/2addr p2, v4

    and-int/2addr p1, v5

    xor-int/2addr p1, p2

    and-int p2, v4, v5

    xor-int/2addr p1, p2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v2

    aput p1, p3, v1

    iget-object p2, p5, Lkl/u;->b:[B

    iget p5, p4, Lkl/r;->b:I

    int-to-byte p1, p1

    invoke-static {p2, p5, p1}, Lkl/t;->n([BIB)V

    iget-object p1, p6, Lkl/u;->b:[B

    iget p2, p4, Lkl/r;->b:I

    invoke-static {p1, p2}, Lkl/t;->b([BI)B

    move-result p1

    aput p1, p3, v3

    iget p1, p4, Lkl/r;->b:I

    add-int/2addr p1, v3

    iput p1, p4, Lkl/r;->b:I

    return-void
.end method

.method public final R(Lkl/r;[Lkl/u;[I[I)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    array-length v0, v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v0, v11}, Lorg/bouncycastle/util/a;->j0([IIII)V

    iget v5, v8, Lkl/h;->h:I

    mul-int/lit8 v2, v5, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lkl/h;->Y([II[III)V

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    invoke-virtual {v0, v8, v11}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object v7

    move v12, v11

    :goto_0
    const/4 v13, 0x3

    if-ge v12, v13, :cond_0

    iget v0, v8, Lkl/h;->h:I

    mul-int v2, v12, v0

    aget-object v0, v9, v12

    iget-object v3, v0, Lkl/u;->a:[I

    invoke-virtual {v7}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v7}, Lkl/b;->f()I

    move-result v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lkl/h;->N([II[II[II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v10, v10, v13}, Lkl/h;->X([I[II)V

    const/4 v0, 0x1

    move v12, v0

    :goto_1
    iget v0, v8, Lkl/h;->d:I

    if-gt v12, v0, :cond_2

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    invoke-virtual {v0, v8, v12}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object v7

    move v14, v11

    :goto_2
    if-ge v14, v13, :cond_1

    iget v0, v8, Lkl/h;->h:I

    mul-int v2, v14, v0

    aget-object v0, v9, v14

    iget-object v3, v0, Lkl/u;->a:[I

    invoke-virtual {v7}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v7}, Lkl/b;->f()I

    move-result v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lkl/h;->N([II[II[II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v14, p1

    invoke-virtual {v8, v10, v14, v9}, Lkl/h;->V([ILkl/r;[Lkl/u;)V

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v0, v8, v15}, Lkl/c;->d(Lkl/h;I)Lkl/b;

    move-result-object v0

    iget v1, v8, Lkl/h;->h:I

    mul-int/lit8 v2, v1, 0x3

    mul-int/lit8 v4, v1, 0x3

    invoke-virtual {v0}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v0}, Lkl/b;->f()I

    move-result v6

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v7}, Lkl/h;->T([II[II[III)V

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    invoke-virtual {v0, v8, v15}, Lkl/c;->f(Lkl/h;I)Lkl/b;

    move-result-object v0

    iget v1, v8, Lkl/h;->h:I

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Lkl/a;->b()[I

    move-result-object v3

    invoke-virtual {v0}, Lkl/b;->f()I

    move-result v4

    iget v5, v8, Lkl/h;->h:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lkl/h;->Y([II[III)V

    invoke-virtual {v8, v10, v10, v13}, Lkl/h;->X([I[II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_3
    if-ge v0, v13, :cond_3

    add-int/lit8 v1, v0, 0x3

    iget v2, v8, Lkl/h;->h:I

    mul-int/2addr v1, v2

    aget-object v3, v9, v0

    iget-object v3, v3, Lkl/u;->c:[I

    invoke-static {v10, v1, v3, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public S(Lkl/u;Lkl/u;Lkl/r;[I[II)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    array-length v0, v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v0, v12}, Lorg/bouncycastle/util/a;->j0([IIII)V

    const/4 v3, 0x0

    iget v4, v8, Lkl/h;->h:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lkl/h;->Z([I[IIII)V

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    invoke-virtual {v0, v8, v12}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object v7

    iget-object v3, v9, Lkl/u;->a:[I

    invoke-virtual {v7}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v7}, Lkl/b;->f()I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lkl/h;->N([II[II[II)V

    iget v2, v8, Lkl/h;->h:I

    iget-object v3, v10, Lkl/u;->a:[I

    invoke-virtual {v7}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v7}, Lkl/b;->f()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lkl/h;->N([II[II[II)V

    const/4 v13, 0x2

    invoke-virtual {v8, v11, v11, v13}, Lkl/h;->X([I[II)V

    const/4 v0, 0x1

    move v14, v0

    :goto_0
    iget v0, v8, Lkl/h;->d:I

    if-gt v14, v0, :cond_0

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    invoke-virtual {v0, v8, v14}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object v7

    iget-object v3, v9, Lkl/u;->a:[I

    invoke-virtual {v7}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v7}, Lkl/b;->f()I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lkl/h;->N([II[II[II)V

    iget v2, v8, Lkl/h;->h:I

    iget-object v3, v10, Lkl/u;->a:[I

    invoke-virtual {v7}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v7}, Lkl/b;->f()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lkl/h;->N([II[II[II)V

    move-object/from16 v15, p3

    invoke-virtual {v8, v11, v15, v9, v10}, Lkl/h;->W([ILkl/r;Lkl/u;Lkl/u;)V

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v0, v8, v7}, Lkl/c;->d(Lkl/h;I)Lkl/b;

    move-result-object v0

    iget v1, v8, Lkl/h;->h:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v0}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v0}, Lkl/b;->f()I

    move-result v6

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, p4

    move v12, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lkl/h;->T([II[II[III)V

    iget-object v0, v8, Lkl/h;->v:Lkl/c;

    invoke-virtual {v0, v8, v12}, Lkl/c;->f(Lkl/h;I)Lkl/b;

    move-result-object v0

    invoke-virtual {v0}, Lkl/a;->b()[I

    move-result-object v2

    invoke-virtual {v0}, Lkl/b;->f()I

    move-result v3

    iget v4, v8, Lkl/h;->h:I

    move-object/from16 v0, p0

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lkl/h;->Z([I[IIII)V

    invoke-virtual {v8, v11, v11, v13}, Lkl/h;->X([I[II)V

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    iget v0, v8, Lkl/h;->h:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, v9, Lkl/u;->c:[I

    const/4 v3, 0x0

    invoke-static {v11, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v8, Lkl/h;->h:I

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, v10, Lkl/u;->c:[I

    invoke-static {v11, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final T([II[II[III)V
    .locals 10

    const/4 v0, 0x0

    move/from16 v1, p7

    :goto_0
    move-object v9, p0

    if-ge v0, v1, :cond_0

    iget v2, v9, Lkl/h;->h:I

    mul-int v3, v0, v2

    add-int v4, p2, v3

    mul-int/2addr v2, v0

    add-int v6, p4, v2

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lkl/h;->N([II[II[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final U([I[ILkl/r;Lkl/g;)V
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x0

    move-object/from16 v9, p0

    :goto_0
    iget v2, v9, Lkl/h;->e:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    add-int/lit8 v10, v1, 0x2

    invoke-static {v0, v10}, Lkl/t;->e([II)I

    move-result v11

    aget v12, p2, v10

    add-int/lit8 v13, v1, 0x1

    invoke-static {v0, v13}, Lkl/t;->e([II)I

    move-result v14

    aget v15, p2, v13

    invoke-static {v0, v1}, Lkl/t;->e([II)I

    move-result v16

    aget v17, p2, v1

    move-object/from16 v2, p0

    move v3, v11

    move v4, v14

    move v5, v12

    move v6, v15

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lkl/h;->O(IIIILkl/r;Lkl/g;)I

    move-result v18

    move v3, v14

    move/from16 v4, v16

    move v5, v15

    move/from16 v6, v17

    invoke-virtual/range {v2 .. v8}, Lkl/h;->O(IIIILkl/r;Lkl/g;)I

    move-result v15

    move/from16 v3, v16

    move v4, v11

    move/from16 v5, v17

    move v6, v12

    invoke-virtual/range {v2 .. v8}, Lkl/h;->O(IIIILkl/r;Lkl/g;)I

    move-result v2

    xor-int v3, v11, v15

    xor-int v4, v11, v14

    xor-int/2addr v2, v4

    xor-int v4, v4, v16

    xor-int v4, v4, v18

    invoke-static {v0, v10, v3}, Lkl/t;->p([III)V

    invoke-static {v0, v13, v2}, Lkl/t;->p([III)V

    invoke-static {v0, v1, v4}, Lkl/t;->p([III)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final V([ILkl/r;[Lkl/u;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x3

    new-array v9, v8, [I

    new-array v10, v8, [I

    new-array v11, v8, [I

    new-array v12, v8, [I

    new-array v13, v8, [I

    new-array v14, v8, [I

    const/4 v15, 0x0

    move v5, v15

    :goto_0
    iget v0, v6, Lkl/h;->e:I

    mul-int/2addr v0, v8

    if-ge v5, v0, :cond_2

    move v0, v15

    :goto_1
    if-ge v0, v8, :cond_0

    add-int/lit8 v1, v0, 0x3

    iget v2, v6, Lkl/h;->h:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v5

    add-int/lit8 v2, v1, 0x2

    invoke-static {v7, v2}, Lkl/t;->e([II)I

    move-result v2

    aput v2, v9, v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v7, v2}, Lkl/t;->e([II)I

    move-result v2

    aput v2, v10, v0

    invoke-static {v7, v1}, Lkl/t;->e([II)I

    move-result v1

    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v16, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lkl/h;->P([I[I[ILkl/r;[Lkl/u;)V

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lkl/h;->P([I[I[ILkl/r;[Lkl/u;)V

    move-object v1, v11

    move-object v2, v9

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lkl/h;->P([I[I[ILkl/r;[Lkl/u;)V

    move v0, v15

    :goto_2
    if-ge v0, v8, :cond_1

    add-int/lit8 v1, v0, 0x3

    iget v2, v6, Lkl/h;->h:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int v1, v1, v16

    add-int/lit8 v2, v1, 0x2

    aget v3, v9, v0

    aget v4, v13, v0

    xor-int/2addr v3, v4

    invoke-static {v7, v2, v3}, Lkl/t;->p([III)V

    add-int/lit8 v2, v1, 0x1

    aget v3, v9, v0

    aget v4, v10, v0

    xor-int/2addr v3, v4

    aget v4, v14, v0

    xor-int/2addr v3, v4

    invoke-static {v7, v2, v3}, Lkl/t;->p([III)V

    aget v2, v9, v0

    aget v3, v10, v0

    xor-int/2addr v2, v3

    aget v3, v11, v0

    xor-int/2addr v2, v3

    aget v3, v12, v0

    xor-int/2addr v2, v3

    invoke-static {v7, v1, v2}, Lkl/t;->p([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v16, 0x3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public W([ILkl/r;Lkl/u;Lkl/u;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x2

    new-array v10, v9, [I

    new-array v11, v9, [I

    new-array v12, v9, [I

    new-array v13, v9, [I

    new-array v14, v9, [I

    new-array v15, v9, [I

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_0
    iget v0, v7, Lkl/h;->e:I

    mul-int/lit8 v0, v0, 0x3

    if-ge v6, v0, :cond_2

    move/from16 v0, v16

    :goto_1
    if-ge v0, v9, :cond_0

    add-int/lit8 v1, v0, 0x2

    iget v2, v7, Lkl/h;->h:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v6

    add-int/lit8 v2, v1, 0x2

    invoke-static {v8, v2}, Lkl/t;->e([II)I

    move-result v2

    aput v2, v10, v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v8, v2}, Lkl/t;->e([II)I

    move-result v2

    aput v2, v11, v0

    invoke-static {v8, v1}, Lkl/t;->e([II)I

    move-result v1

    aput v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v17, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lkl/h;->Q([I[I[ILkl/r;Lkl/u;Lkl/u;)V

    move-object v1, v11

    move-object v2, v12

    move-object v3, v14

    invoke-virtual/range {v0 .. v6}, Lkl/h;->Q([I[I[ILkl/r;Lkl/u;Lkl/u;)V

    move-object v1, v12

    move-object v2, v10

    move-object v3, v15

    invoke-virtual/range {v0 .. v6}, Lkl/h;->Q([I[I[ILkl/r;Lkl/u;Lkl/u;)V

    move/from16 v0, v16

    :goto_2
    if-ge v0, v9, :cond_1

    add-int/lit8 v1, v0, 0x2

    iget v2, v7, Lkl/h;->h:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x20

    add-int v1, v1, v17

    add-int/lit8 v2, v1, 0x2

    aget v3, v10, v0

    aget v4, v14, v0

    xor-int/2addr v3, v4

    invoke-static {v8, v2, v3}, Lkl/t;->p([III)V

    add-int/lit8 v2, v1, 0x1

    aget v3, v10, v0

    aget v4, v11, v0

    xor-int/2addr v3, v4

    aget v4, v15, v0

    xor-int/2addr v3, v4

    invoke-static {v8, v2, v3}, Lkl/t;->p([III)V

    aget v2, v10, v0

    aget v3, v11, v0

    xor-int/2addr v2, v3

    aget v3, v12, v0

    xor-int/2addr v2, v3

    aget v3, v13, v0

    xor-int/2addr v2, v3

    invoke-static {v8, v1, v2}, Lkl/t;->p([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v17, 0x3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final X([I[II)V
    .locals 5

    iget v0, p0, Lkl/h;->h:I

    mul-int/2addr v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget v2, p0, Lkl/h;->h:I

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    aget v3, p1, v2

    aget v4, p2, v1

    xor-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Y([II[III)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p2

    aget v2, p1, v1

    add-int v3, v0, p4

    aget v3, p3, v3

    xor-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Z([I[IIII)V
    .locals 4

    const/4 v0, 0x2

    if-nez p5, :cond_0

    iget p5, p0, Lkl/h;->h:I

    mul-int/2addr p5, v0

    goto :goto_0

    :cond_0
    if-ne p5, v0, :cond_1

    iget p5, p0, Lkl/h;->h:I

    mul-int/lit8 p5, p5, 0x3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_1

    add-int v1, v0, p5

    aget v2, p1, v1

    add-int v3, v0, p3

    aget v3, p2, v3

    xor-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a([BILkl/u;[B)V
    .locals 2

    iget-object v0, p0, Lkl/h;->r:LBi/a0;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, LBi/y;->update(B)V

    iget-object v0, p0, Lkl/h;->r:LBi/a0;

    iget v1, p0, Lkl/h;->o:I

    invoke-interface {v0, p1, p2, v1}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget p2, p0, Lkl/h;->p:I

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0, p2}, LBi/a0;->e([BII)I

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget p2, p0, Lkl/h;->p:I

    invoke-interface {p1, p4, v0, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget-object p2, p3, Lkl/u;->a:[I

    invoke-static {p2}, Lorg/bouncycastle/util/p;->q([I)[B

    move-result-object p2

    iget v1, p0, Lkl/h;->g:I

    invoke-interface {p1, p2, v0, v1}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget-object p2, p3, Lkl/u;->b:[B

    iget v1, p0, Lkl/h;->i:I

    invoke-interface {p1, p2, v0, v1}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget-object p2, p3, Lkl/u;->c:[I

    invoke-static {p2}, Lorg/bouncycastle/util/p;->q([I)[B

    move-result-object p2

    iget p3, p0, Lkl/h;->g:I

    invoke-interface {p1, p2, v0, p3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget p2, p0, Lkl/h;->p:I

    invoke-interface {p1, p4, v0, p2}, LBi/a0;->e([BII)I

    return-void
.end method

.method public final a0([B[B[BLjava/security/SecureRandom;)V
    .locals 5

    array-length v0, p3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    array-length v2, p2

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v3, 0x0

    invoke-static {p3, v3, v0}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget v4, p0, Lkl/h;->f:I

    invoke-static {v0, v4}, Lkl/t;->q([II)V

    invoke-virtual {p4, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v3, v1}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget p4, p0, Lkl/h;->f:I

    invoke-static {v1, p4}, Lkl/t;->q([II)V

    invoke-virtual {p0, v1, v2, v0}, Lkl/h;->f([I[I[I)V

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/util/p;->o([I[BI)V

    invoke-static {v1, p1, v3}, Lorg/bouncycastle/util/p;->o([I[BI)V

    invoke-static {v2, p2, v3}, Lorg/bouncycastle/util/p;->o([I[BI)V

    return-void
.end method

.method public final b(I[BILkl/u;[B)V
    .locals 3

    iget v0, p0, Lkl/h;->o:I

    iget v1, p0, Lkl/h;->i:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lkl/h;->r:LBi/a0;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, LBi/y;->update(B)V

    iget-object v1, p0, Lkl/h;->r:LBi/a0;

    iget v2, p0, Lkl/h;->o:I

    invoke-interface {v1, p2, p3, v2}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget p3, p0, Lkl/h;->p:I

    const/4 v1, 0x0

    invoke-interface {p2, p5, v1, p3}, LBi/a0;->e([BII)I

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget p3, p0, Lkl/h;->p:I

    invoke-interface {p2, p5, v1, p3}, LBi/y;->update([BII)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget-object p3, p4, Lkl/u;->a:[I

    invoke-static {p3}, Lorg/bouncycastle/util/p;->q([I)[B

    move-result-object p3

    iget v2, p0, Lkl/h;->g:I

    invoke-interface {p1, p3, v1, v2}, LBi/y;->update([BII)V

    iget p1, p0, Lkl/h;->g:I

    add-int/2addr v0, p1

    :cond_0
    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget-object p3, p4, Lkl/u;->b:[B

    iget p4, p0, Lkl/h;->i:I

    invoke-interface {p1, p3, v1, p4}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    invoke-static {v0}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object p3

    invoke-interface {p1, p3, v1, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    invoke-interface {p1, p5, v1, v0}, LBi/a0;->e([BII)I

    return-void
.end method

.method public final b0([I[I[B)V
    .locals 5

    iget v0, p0, Lkl/h;->g:I

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p3, v2, p1, v3, v0}, Lorg/bouncycastle/util/p;->t([BI[III)V

    invoke-static {p3, v1, p2, v3, v0}, Lorg/bouncycastle/util/p;->t([BI[III)V

    iget v2, p0, Lkl/h;->h:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    iget v3, p0, Lkl/h;->g:I

    sub-int/2addr v3, v2

    add-int/lit8 v4, v2, 0x1

    invoke-static {p3, v4, v3}, Lorg/bouncycastle/util/p;->w([BII)I

    move-result v4

    aput v4, p1, v0

    add-int/2addr v1, v2

    invoke-static {p3, v1, v3}, Lorg/bouncycastle/util/p;->w([BII)I

    move-result p1

    aput p1, p2, v0

    :cond_0
    return-void
.end method

.method public final c([I[I[[Lkl/u;[[[B[B[B[B[[[B)V
    .locals 9

    move-object v8, p0

    iget-object v0, v8, Lkl/h;->r:LBi/a0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LBi/y;->update(B)V

    iget v0, v8, Lkl/h;->h:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v8, Lkl/h;->l:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    aget-object v4, p3, v2

    aget-object v4, v4, v3

    iget-object v4, v4, Lkl/u;->c:[I

    invoke-static {v4, v0, v1}, Lorg/bouncycastle/util/p;->o([I[BI)V

    iget-object v4, v8, Lkl/h;->r:LBi/a0;

    iget v5, v8, Lkl/h;->g:I

    invoke-interface {v4, v0, v1, v5}, LBi/y;->update([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lkl/h;->J([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method public final c0([B[B[B)Z
    .locals 11

    iget v0, p0, Lkl/h;->h:I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    iget v0, p0, Lkl/h;->g:I

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v5, v0, 0x2

    const/4 v7, 0x1

    add-int/2addr v5, v7

    div-int/lit8 v0, v0, 0x4

    const/4 v8, 0x0

    invoke-static {p1, v7, v2, v8, v0}, Lorg/bouncycastle/util/p;->t([BI[III)V

    invoke-static {p1, v1, v3, v8, v0}, Lorg/bouncycastle/util/p;->t([BI[III)V

    invoke-static {p1, v5, v4, v8, v0}, Lorg/bouncycastle/util/p;->t([BI[III)V

    iget v6, p0, Lkl/h;->h:I

    if-ge v0, v6, :cond_0

    mul-int/lit8 v6, v0, 0x4

    iget v9, p0, Lkl/h;->g:I

    sub-int/2addr v9, v6

    add-int/lit8 v10, v6, 0x1

    invoke-static {p1, v10, v9}, Lorg/bouncycastle/util/p;->w([BII)I

    move-result v10

    aput v10, v2, v0

    add-int/2addr v1, v6

    invoke-static {p1, v1, v9}, Lorg/bouncycastle/util/p;->w([BII)I

    move-result v1

    aput v1, v3, v0

    add-int/2addr v5, v6

    invoke-static {p1, v5, v9}, Lorg/bouncycastle/util/p;->w([BII)I

    move-result p1

    aput p1, v4, v0

    :cond_0
    iget p1, p0, Lkl/h;->t:I

    invoke-static {p1}, Lkl/h;->L(I)Z

    move-result p1

    const-string v0, "Failed to serialize signature"

    const-string v9, "Failed to create signature"

    if-nez p1, :cond_3

    new-instance p1, Lkl/p;

    invoke-direct {p1, p0}, Lkl/p;-><init>(Lkl/h;)V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lkl/h;->k0([I[I[I[BLkl/p;)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {p1, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_1
    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p3, p2}, Lkl/h;->h0(Lkl/p;[BI)I

    move-result p1

    if-gez p1, :cond_2

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_2
    iput p1, p0, Lkl/h;->u:I

    invoke-static {p1, p3, v8}, Lorg/bouncycastle/util/p;->m(I[BI)V

    return v7

    :cond_3
    new-instance p1, Lkl/q;

    invoke-direct {p1, p0}, Lkl/q;-><init>(Lkl/h;)V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lkl/h;->l0([I[I[I[BLkl/q;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {p1, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8

    :cond_4
    array-length p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p3, p2}, Lkl/h;->i0(Lkl/q;[BI)I

    move-result p1

    if-gez p1, :cond_2

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v8
.end method

.method public final d([I[I[[[I[[[B[B[B[B[[[B)V
    .locals 9

    move-object v8, p0

    iget-object v0, v8, Lkl/h;->r:LBi/a0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LBi/y;->update(B)V

    iget v0, v8, Lkl/h;->h:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v8, Lkl/h;->l:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    aget-object v4, p3, v2

    aget-object v4, v4, v3

    invoke-static {v4, v0, v1}, Lorg/bouncycastle/util/p;->o([I[BI)V

    iget-object v4, v8, Lkl/h;->r:LBi/a0;

    iget v5, v8, Lkl/h;->g:I

    invoke-interface {v4, v0, v1, v5}, LBi/y;->update([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lkl/h;->J([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method public final d0([B[B[BI)I
    .locals 4

    iget v0, p0, Lkl/h;->h:I

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p0, v1, v0, p1}, Lkl/h;->b0([I[I[B)V

    iget p1, p0, Lkl/h;->t:I

    invoke-static {p1}, Lkl/h;->L(I)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    new-instance p1, Lkl/q;

    invoke-direct {p1, p0}, Lkl/q;-><init>(Lkl/h;)V

    array-length v3, p2

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, p1, p3, p4, v3}, Lkl/h;->z(Lkl/q;[BII)I

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string p2, "Error couldn\'t deserialize signature (2)!"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p0, p1, v1, v0, p2}, Lkl/h;->u0(Lkl/q;[I[I[B)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lkl/p;

    invoke-direct {p1, p0}, Lkl/p;-><init>(Lkl/h;)V

    array-length v3, p2

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, p1, p3, p4, v3}, Lkl/h;->y(Lkl/p;[BII)I

    move-result p3

    if-eqz p3, :cond_2

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string p2, "Error couldn\'t deserialize signature!"

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1, v0, p2}, Lkl/h;->s0(Lkl/p;[I[I[B)I

    move-result p1

    return p1
.end method

.method public final e([B[I[I[[B[B[B[I[I[B)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lkl/h;->l:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lkl/h;->r:LBi/a0;

    aget-object v3, p4, v1

    iget v4, p0, Lkl/h;->p:I

    invoke-interface {v2, v3, v0, v4}, LBi/y;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p4, 0x20

    new-array v1, p4, [B

    iget-object v2, p0, Lkl/h;->r:LBi/a0;

    iget v3, p0, Lkl/h;->p:I

    invoke-interface {v2, p5, v0, v3}, LBi/y;->update([BII)V

    iget-object p5, p0, Lkl/h;->r:LBi/a0;

    invoke-interface {p5, p6, v0, p4}, LBi/y;->update([BII)V

    invoke-virtual {p0, p7, v1}, Lkl/h;->r0([I[B)V

    invoke-virtual {p0, p8, v1}, Lkl/h;->r0([I[B)V

    iget-object p4, p0, Lkl/h;->r:LBi/a0;

    array-length p5, p9

    invoke-interface {p4, p9, v0, p5}, LBi/y;->update([BII)V

    iget-object p4, p0, Lkl/h;->r:LBi/a0;

    iget p5, p0, Lkl/h;->p:I

    invoke-interface {p4, p1, v0, p5}, LBi/a0;->e([BII)I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lkl/h;->A([B[I[I)V

    :cond_1
    return-void
.end method

.method public final e0([B[B[B[B)I
    .locals 5

    iget v0, p0, Lkl/h;->g:I

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p4

    if-ge v3, v1, :cond_0

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string p2, "Failed writing private key!"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v3, p0, Lkl/h;->t:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, p4, v4

    invoke-static {p1, v4, p4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lkl/h;->g:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v4, p4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lkl/h;->g:I

    mul-int/lit8 p2, p1, 0x2

    add-int/2addr p2, v2

    invoke-static {p3, v4, p4, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public final f([I[I[I)V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    iget v2, p0, Lkl/h;->h:I

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lkl/h;->v:Lkl/c;

    invoke-virtual {p1, p0, v1}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object p1

    invoke-virtual {p1}, Lkl/a;->b()[I

    move-result-object v2

    invoke-virtual {p1}, Lkl/b;->f()I

    move-result p1

    invoke-virtual {p0, v0, p3, v2, p1}, Lkl/h;->M([I[I[II)V

    invoke-virtual {p0, p2, p2, v0, v1}, Lkl/h;->w0([I[I[II)V

    const/4 p1, 0x1

    :goto_0
    iget v2, p0, Lkl/h;->d:I

    if-gt p1, v2, :cond_1

    iget-object v2, p0, Lkl/h;->v:Lkl/c;

    invoke-virtual {v2, p0, p1}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object v2

    invoke-virtual {v2}, Lkl/a;->b()[I

    move-result-object v3

    invoke-virtual {v2}, Lkl/b;->f()I

    move-result v2

    invoke-virtual {p0, v0, p3, v3, v2}, Lkl/h;->M([I[I[II)V

    invoke-virtual {p0, p2}, Lkl/h;->p0([I)V

    iget-object v2, p0, Lkl/h;->v:Lkl/c;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, p0, v3}, Lkl/c;->d(Lkl/h;I)Lkl/b;

    move-result-object v2

    invoke-virtual {v2}, Lkl/a;->b()[I

    move-result-object v4

    invoke-virtual {v2}, Lkl/b;->f()I

    move-result v2

    invoke-virtual {p0, p2, p2, v4, v2}, Lkl/h;->M([I[I[II)V

    iget-object v2, p0, Lkl/h;->v:Lkl/c;

    invoke-virtual {v2, p0, v3}, Lkl/c;->f(Lkl/h;I)Lkl/b;

    move-result-object v2

    invoke-virtual {v2}, Lkl/a;->b()[I

    move-result-object v3

    invoke-virtual {v2}, Lkl/b;->f()I

    move-result v2

    invoke-virtual {p0, p2, p2, v3, v2}, Lkl/h;->w0([I[I[II)V

    invoke-virtual {p0, p2, p2, v0, v1}, Lkl/h;->w0([I[I[II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f0([B[B[B)I
    .locals 5

    iget v0, p0, Lkl/h;->g:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p3

    if-ge v3, v1, :cond_0

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string p2, "Failed writing public key!"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v3, p0, Lkl/h;->t:I

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, p3, v4

    invoke-static {p1, v4, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lkl/h;->g:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v4, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public g0(Lkl/p$a;I[BI[Lkl/u;[[B[[B)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget v3, p0, Lkl/h;->o:I

    iget-object v4, p1, Lkl/p$a;->a:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lkl/h;->o:I

    add-int/2addr p4, v3

    iget-object v4, p1, Lkl/p$a;->b:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    iget v3, p0, Lkl/h;->o:I

    add-int v4, p4, v3

    iget-object v5, p1, Lkl/p$a;->a:[B

    invoke-static {p3, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lkl/h;->o:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr p4, v4

    iget-object v4, p1, Lkl/p$a;->b:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_6

    iget v3, p0, Lkl/h;->o:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p4

    iget-object v5, p1, Lkl/p$a;->a:[B

    invoke-static {p3, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lkl/h;->o:I

    iget-object v4, p1, Lkl/p$a;->b:[B

    invoke-static {p3, p4, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_3

    :cond_2
    aget-object p3, p5, v1

    iget-object p3, p3, Lkl/u;->a:[I

    iget-object p4, p1, Lkl/p$a;->c:[I

    iget v1, p0, Lkl/h;->h:I

    invoke-static {p3, v2, p4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    add-int/lit8 p3, p2, 0x1

    rem-int/lit8 p3, p3, 0x3

    aget-object p3, p5, p3

    iget-object p3, p3, Lkl/u;->b:[B

    iget-object p4, p1, Lkl/p$a;->d:[B

    iget p5, p0, Lkl/h;->i:I

    invoke-static {p3, v2, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p2, 0x2

    rem-int/lit8 p3, p3, 0x3

    aget-object p4, p6, p3

    iget-object p5, p1, Lkl/p$a;->e:[B

    iget p6, p0, Lkl/h;->p:I

    invoke-static {p4, v2, p5, v2, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p4, p0, Lkl/h;->s:I

    if-ne p4, v0, :cond_5

    if-nez p2, :cond_4

    iget p2, p0, Lkl/h;->k:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lkl/h;->j:I

    :goto_1
    aget-object p3, p7, p3

    iget-object p1, p1, Lkl/p$a;->f:[B

    invoke-static {p3, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-void

    :cond_6
    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string p2, "Invalid challenge"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "challenge"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h([BI)Z
    .locals 2

    invoke-static {p2}, Lkl/t;->i(I)I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x8

    if-ge p2, v1, :cond_1

    invoke-static {p1, p2}, Lkl/t;->b([BI)B

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public h0(Lkl/p;[BI)I
    .locals 9

    iget-object v0, p1, Lkl/p;->c:[Lkl/p$a;

    iget-object v1, p1, Lkl/p;->a:[B

    iget v2, p0, Lkl/h;->l:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-static {v2}, Lkl/t;->i(I)I

    move-result v2

    const/16 v4, 0x20

    add-int/2addr v2, v4

    iget v5, p0, Lkl/h;->l:I

    iget v6, p0, Lkl/h;->o:I

    mul-int/2addr v6, v3

    iget v7, p0, Lkl/h;->g:I

    add-int/2addr v6, v7

    iget v7, p0, Lkl/h;->i:I

    add-int/2addr v6, v7

    iget v7, p0, Lkl/h;->p:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v5

    add-int/2addr v2, v6

    iget v6, p0, Lkl/h;->s:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget v6, p0, Lkl/h;->j:I

    mul-int/2addr v6, v5

    add-int/2addr v2, v6

    :cond_0
    iget v6, p0, Lkl/h;->c:I

    if-ge v6, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    mul-int/2addr v5, v3

    invoke-static {v5}, Lkl/t;->i(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v1, v5, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lkl/h;->l:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Lkl/t;->i(I)I

    move-result v2

    add-int/2addr v2, p3

    iget-object p1, p1, Lkl/p;->b:[B

    invoke-static {p1, v5, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    move p1, v5

    :goto_0
    iget v4, p0, Lkl/h;->l:I

    if-ge p1, v4, :cond_6

    invoke-virtual {p0, v1, p1}, Lkl/h;->D([BI)I

    move-result v4

    aget-object v6, v0, p1

    iget-object v6, v6, Lkl/p$a;->e:[B

    iget v8, p0, Lkl/h;->p:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lkl/h;->p:I

    add-int/2addr v2, v6

    iget v6, p0, Lkl/h;->s:I

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_2

    iget v6, p0, Lkl/h;->k:I

    goto :goto_1

    :cond_2
    iget v6, p0, Lkl/h;->j:I

    :goto_1
    aget-object v8, v0, p1

    iget-object v8, v8, Lkl/p$a;->f:[B

    invoke-static {v8, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    :cond_3
    aget-object v6, v0, p1

    iget-object v6, v6, Lkl/p$a;->d:[B

    iget v8, p0, Lkl/h;->i:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lkl/h;->i:I

    add-int/2addr v2, v6

    aget-object v6, v0, p1

    iget-object v6, v6, Lkl/p$a;->a:[B

    iget v8, p0, Lkl/h;->o:I

    invoke-static {v6, v5, p2, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lkl/h;->o:I

    add-int/2addr v2, v6

    aget-object v8, v0, p1

    iget-object v8, v8, Lkl/p$a;->b:[B

    invoke-static {v8, v5, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lkl/h;->o:I

    add-int/2addr v2, v6

    if-eq v4, v7, :cond_4

    if-ne v4, v3, :cond_5

    :cond_4
    aget-object v4, v0, p1

    iget-object v4, v4, Lkl/p$a;->c:[I

    iget v6, p0, Lkl/h;->h:I

    invoke-static {v4, v5, v6, p2, v2}, Lorg/bouncycastle/util/p;->n([III[BI)V

    iget v4, p0, Lkl/h;->g:I

    add-int/2addr v2, v4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    sub-int/2addr v2, p3

    return v2
.end method

.method public final i([II)Z
    .locals 2

    and-int/lit8 v0, p2, 0x1f

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lkl/t;->g(I)I

    move-result v0

    ushr-int/lit8 p2, p2, 0x5

    aget p1, p1, p2

    not-int p2, v0

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final i0(Lkl/q;[BI)I
    .locals 7

    iget v0, p0, Lkl/h;->p:I

    const/16 v1, 0x20

    add-int/2addr v0, v1

    iget v2, p1, Lkl/q;->c:I

    add-int/2addr v0, v2

    iget v2, p1, Lkl/q;->e:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lkl/h;->l:I

    if-ge v3, v4, :cond_2

    iget-object v4, p1, Lkl/q;->g:[I

    iget v5, p0, Lkl/h;->m:I

    invoke-virtual {p0, v4, v5, v3}, Lkl/h;->r([III)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lkl/q;->h:[I

    iget-object v5, p1, Lkl/q;->g:[I

    iget v6, p0, Lkl/h;->m:I

    invoke-static {v5, v6, v3}, Lkl/h;->K([III)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v5, v5, v3

    iget v5, v5, Lkl/q$a;->b:I

    add-int/2addr v0, v5

    iget v5, p0, Lkl/h;->n:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lkl/h;->i:I

    add-int/2addr v0, v4

    :cond_0
    iget v4, p0, Lkl/h;->g:I

    add-int/2addr v0, v4

    iget v4, p0, Lkl/h;->i:I

    add-int/2addr v0, v4

    iget v4, p0, Lkl/h;->p:I

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v3, p2

    if-ge v3, v0, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    iget-object v0, p1, Lkl/q;->f:[B

    iget v3, p0, Lkl/h;->p:I

    invoke-static {v0, v2, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lkl/h;->p:I

    add-int/2addr v0, p3

    iget-object v3, p1, Lkl/q;->a:[B

    invoke-static {v3, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p1, Lkl/q;->b:[B

    iget v3, p1, Lkl/q;->c:I

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lkl/q;->c:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lkl/q;->d:[B

    iget v3, p1, Lkl/q;->e:I

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lkl/q;->e:I

    add-int/2addr v0, v1

    move v1, v2

    :goto_1
    iget v3, p0, Lkl/h;->l:I

    if-ge v1, v3, :cond_6

    iget-object v3, p1, Lkl/q;->g:[I

    iget v4, p0, Lkl/h;->m:I

    invoke-virtual {p0, v3, v4, v1}, Lkl/h;->r([III)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v1

    iget-object v4, v3, Lkl/q$a;->a:[B

    iget v3, v3, Lkl/q$a;->b:I

    invoke-static {v4, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v1

    iget v3, v3, Lkl/q$a;->b:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lkl/q;->h:[I

    iget-object v4, p1, Lkl/q;->g:[I

    iget v5, p0, Lkl/h;->m:I

    invoke-static {v4, v5, v1}, Lkl/h;->K([III)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lkl/h;->n:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v3, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v1

    iget-object v3, v3, Lkl/q$a;->c:[B

    iget v4, p0, Lkl/h;->i:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lkl/h;->i:I

    add-int/2addr v0, v3

    :cond_4
    iget-object v3, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v1

    iget-object v3, v3, Lkl/q$a;->e:[B

    iget v4, p0, Lkl/h;->g:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lkl/h;->g:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v1

    iget-object v3, v3, Lkl/q$a;->f:[B

    iget v4, p0, Lkl/h;->i:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lkl/h;->i:I

    add-int/2addr v0, v3

    iget-object v3, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v1

    iget-object v3, v3, Lkl/q$a;->d:[B

    iget v4, p0, Lkl/h;->p:I

    invoke-static {v3, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lkl/h;->p:I

    add-int/2addr v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v0, p3

    return v0
.end method

.method public final j(IIILkl/r;)V
    .locals 4

    iget v0, p0, Lkl/h;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4}, Lkl/r;->d()I

    move-result v1

    invoke-static {v1}, Lkl/t;->k(I)I

    move-result v1

    iget-object v2, p4, Lkl/r;->a:[[B

    aget-object v2, v2, v0

    iget v3, p4, Lkl/r;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lkl/t;->b([BI)B

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr p1, p2

    xor-int/2addr p1, v1

    xor-int/2addr p1, p3

    iget-object p2, p4, Lkl/r;->a:[[B

    aget-object p2, p2, v0

    iget p3, p4, Lkl/r;->b:I

    add-int/lit8 p3, p3, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {p2, p3, p1}, Lkl/t;->n([BIB)V

    return-void
.end method

.method public final j0([BII)V
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    and-int/lit8 v0, p3, 0x1

    int-to-byte v0, v0

    invoke-static {p1, p2, v0}, Lkl/t;->n([BIB)V

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p3, p3, 0x1

    and-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    invoke-static {p1, p2, p3}, Lkl/t;->n([BIB)V

    return-void
.end method

.method public k([I[ILkl/r;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lkl/h;->e:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lkl/t;->e([II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lkl/t;->e([II)I

    move-result v4

    invoke-static {p1, v0}, Lkl/t;->e([II)I

    move-result v5

    invoke-static {p2, v1}, Lkl/t;->e([II)I

    move-result v1

    invoke-static {p2, v3}, Lkl/t;->e([II)I

    move-result v3

    invoke-static {p2, v0}, Lkl/t;->e([II)I

    move-result v6

    xor-int/2addr v6, v2

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    xor-int/2addr v1, v2

    xor-int/2addr v3, v2

    xor-int/2addr v3, v4

    invoke-virtual {p0, v2, v4, v6, p3}, Lkl/h;->j(IIILkl/r;)V

    invoke-virtual {p0, v4, v5, v1, p3}, Lkl/h;->j(IIILkl/r;)V

    invoke-virtual {p0, v5, v2, v3, p3}, Lkl/h;->j(IIILkl/r;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k0([I[I[I[BLkl/p;)I
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    iget v0, v9, Lkl/h;->l:I

    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v11, 0x1

    const/4 v2, 0x3

    aput v2, v1, v11

    const/4 v12, 0x0

    aput v0, v1, v12

    const-class v0, Lkl/u;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [[Lkl/u;

    iget v0, v9, Lkl/h;->l:I

    iget v1, v9, Lkl/h;->n:I

    iget v3, v9, Lkl/h;->p:I

    new-array v4, v2, [I

    aput v3, v4, v8

    aput v1, v4, v11

    aput v0, v4, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[[B

    iget v1, v9, Lkl/h;->l:I

    iget v3, v9, Lkl/h;->k:I

    new-array v4, v2, [I

    aput v3, v4, v8

    aput v2, v4, v11

    aput v1, v4, v12

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[[B

    invoke-virtual/range {p0 .. p4}, Lkl/h;->q([I[I[I[B)[B

    move-result-object v7

    iget v0, v9, Lkl/h;->n:I

    iget v1, v9, Lkl/h;->o:I

    mul-int v16, v0, v1

    iget v0, v9, Lkl/h;->l:I

    mul-int v0, v0, v16

    iget-object v1, v10, Lkl/p;->b:[B

    const/16 v2, 0x20

    invoke-static {v7, v0, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Lkl/r;

    invoke-direct {v6, v9}, Lkl/r;-><init>(Lkl/h;)V

    iget v0, v9, Lkl/h;->g:I

    mul-int/lit8 v1, v0, 0x9

    iget v2, v9, Lkl/h;->i:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v4, v5, [B

    move v3, v12

    :goto_0
    iget v0, v9, Lkl/h;->l:I

    if-ge v3, v0, :cond_5

    aget-object v0, v13, v3

    new-instance v1, Lkl/u;

    invoke-direct {v1, v9}, Lkl/u;-><init>(Lkl/h;)V

    aput-object v1, v0, v12

    aget-object v0, v13, v3

    new-instance v1, Lkl/u;

    invoke-direct {v1, v9}, Lkl/u;-><init>(Lkl/h;)V

    aput-object v1, v0, v11

    aget-object v0, v13, v3

    new-instance v1, Lkl/u;

    invoke-direct {v1, v9}, Lkl/u;-><init>(Lkl/h;)V

    aput-object v1, v0, v8

    move v2, v12

    :goto_1
    const-string v1, "createRandomTape failed"

    const/16 v17, -0x1

    if-ge v2, v8, :cond_1

    mul-int v0, v16, v3

    iget v11, v9, Lkl/h;->o:I

    mul-int/2addr v11, v2

    add-int/2addr v11, v0

    iget-object v0, v10, Lkl/p;->b:[B

    iget v8, v9, Lkl/h;->g:I

    iget v12, v9, Lkl/h;->i:I

    add-int/2addr v8, v12

    move-object v12, v0

    move-object/from16 v0, p0

    move-object/from16 v18, v15

    move-object v15, v1

    move-object v1, v7

    move/from16 v19, v2

    move v2, v11

    move v11, v3

    move-object v3, v12

    move-object v12, v4

    move v4, v11

    move/from16 v20, v5

    move/from16 v5, v19

    move-object/from16 v21, v14

    move-object v14, v6

    move-object v6, v12

    move-object/from16 v22, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {v0, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v17

    :cond_0
    aget-object v0, v13, v11

    aget-object v0, v0, v19

    iget-object v0, v0, Lkl/u;->a:[I

    const/4 v1, 0x0

    invoke-static {v12, v1, v0}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget v2, v9, Lkl/h;->f:I

    invoke-static {v0, v2}, Lkl/t;->q([II)V

    iget v0, v9, Lkl/h;->g:I

    iget-object v2, v14, Lkl/r;->a:[[B

    aget-object v2, v2, v19

    iget v3, v9, Lkl/h;->i:I

    invoke-static {v12, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v19, 0x1

    move v3, v11

    move-object v4, v12

    move-object v6, v14

    move-object/from16 v15, v18

    move/from16 v5, v20

    move-object/from16 v14, v21

    move-object/from16 v7, v22

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    move v11, v3

    move-object v12, v4

    move/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v21, v14

    move-object/from16 v18, v15

    move-object v15, v1

    move-object v14, v6

    mul-int v8, v16, v11

    iget v0, v9, Lkl/h;->o:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int v2, v8, v0

    iget-object v3, v10, Lkl/p;->b:[B

    iget-object v0, v14, Lkl/r;->a:[[B

    aget-object v6, v0, v1

    iget v7, v9, Lkl/h;->i:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v4, v11

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {v0, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v17

    :cond_2
    aget-object v0, v13, v11

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v1, v2, Lkl/u;->a:[I

    const/4 v2, 0x0

    aget-object v3, v0, v2

    iget-object v3, v3, Lkl/u;->a:[I

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v0, v0, Lkl/u;->a:[I

    move-object/from16 v6, p1

    invoke-virtual {v9, v1, v6, v3, v0}, Lkl/h;->x0([I[I[I[I)V

    iput v2, v14, Lkl/r;->b:I

    div-int/lit8 v5, v20, 0x4

    invoke-static {v12, v2, v5}, Lorg/bouncycastle/util/p;->u([BII)[I

    move-result-object v0

    aget-object v1, v13, v11

    move-object/from16 v7, p3

    invoke-virtual {v9, v14, v1, v7, v0}, Lkl/h;->R(Lkl/r;[Lkl/u;[I[I)V

    invoke-static {v0, v12, v2}, Lorg/bouncycastle/util/p;->o([I[BI)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    aget-object v1, v13, v11

    aget-object v3, v1, v2

    iget-object v2, v3, Lkl/u;->c:[I

    const/4 v3, 0x1

    aget-object v4, v1, v3

    iget-object v3, v4, Lkl/u;->c:[I

    const/4 v4, 0x2

    aget-object v1, v1, v4

    iget-object v1, v1, Lkl/u;->c:[I

    invoke-virtual {v9, v0, v2, v3, v1}, Lkl/h;->x0([I[I[I[I)V

    iget v1, v9, Lkl/h;->h:I

    move-object/from16 v15, p2

    invoke-static {v0, v15, v1}, Lkl/h;->o0([I[II)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simulation failed; output does not match public key (round = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v17

    :cond_3
    aget-object v0, v13, v11

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v2, v21, v11

    aget-object v2, v2, v1

    move-object/from16 v5, v22

    invoke-virtual {v9, v5, v8, v0, v2}, Lkl/h;->a([BILkl/u;[B)V

    iget v0, v9, Lkl/h;->o:I

    add-int/2addr v0, v8

    aget-object v1, v13, v11

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v3, v21, v11

    aget-object v3, v3, v2

    invoke-virtual {v9, v5, v0, v1, v3}, Lkl/h;->a([BILkl/u;[B)V

    iget v0, v9, Lkl/h;->o:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v0, v8

    aget-object v3, v13, v11

    aget-object v3, v3, v1

    aget-object v4, v21, v11

    aget-object v4, v4, v1

    invoke-virtual {v9, v5, v0, v3, v4}, Lkl/h;->a([BILkl/u;[B)V

    iget v0, v9, Lkl/h;->s:I

    if-ne v0, v2, :cond_4

    aget-object v0, v13, v11

    const/4 v1, 0x0

    aget-object v4, v0, v1

    aget-object v0, v18, v11

    aget-object v17, v0, v1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v5

    move v3, v8

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lkl/h;->b(I[BILkl/u;[B)V

    iget v0, v9, Lkl/h;->o:I

    add-int v3, v8, v0

    aget-object v0, v13, v11

    const/4 v1, 0x1

    aget-object v4, v0, v1

    aget-object v0, v18, v11

    aget-object v5, v0, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v19

    invoke-virtual/range {v0 .. v5}, Lkl/h;->b(I[BILkl/u;[B)V

    iget v0, v9, Lkl/h;->o:I

    const/16 v17, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int v3, v8, v0

    aget-object v0, v13, v11

    aget-object v4, v0, v17

    aget-object v0, v18, v11

    aget-object v5, v0, v17

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lkl/h;->b(I[BILkl/u;[B)V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v5

    const/16 v17, 0x2

    :goto_2
    add-int/lit8 v3, v11, 0x1

    move-object v4, v12

    move-object v6, v14

    move/from16 v8, v17

    move-object/from16 v15, v18

    move-object/from16 v7, v19

    move/from16 v5, v20

    move-object/from16 v14, v21

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v19, v7

    move-object/from16 v21, v14

    move-object/from16 v18, v15

    move-object/from16 v15, p2

    move-object/from16 v7, p3

    iget-object v5, v10, Lkl/p;->a:[B

    iget-object v6, v10, Lkl/p;->b:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, v21

    move-object/from16 v7, p4

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lkl/h;->c([I[I[[Lkl/u;[[[B[B[B[B[[[B)V

    const/4 v8, 0x0

    :goto_3
    iget v0, v9, Lkl/h;->l:I

    if-ge v8, v0, :cond_7

    iget-object v0, v10, Lkl/p;->c:[Lkl/p$a;

    aget-object v1, v0, v8

    iget-object v0, v10, Lkl/p;->a:[B

    invoke-virtual {v9, v0, v8}, Lkl/h;->D([BI)I

    move-result v2

    mul-int v4, v16, v8

    aget-object v5, v13, v8

    aget-object v6, v21, v8

    iget v0, v9, Lkl/h;->s:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_6

    const/4 v0, 0x0

    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_6
    aget-object v0, v18, v8

    goto :goto_4

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v3, v19

    invoke-virtual/range {v0 .. v7}, Lkl/h;->g0(Lkl/p$a;I[BI[Lkl/u;[[B[[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final l0([I[I[I[BLkl/q;)Z
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    iget v0, v10, Lkl/h;->o:I

    const/16 v6, 0x20

    add-int/lit8 v7, v0, 0x20

    new-array v8, v7, [B

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lkl/h;->p([B[I[I[I[B)V

    invoke-static {v8, v6, v7}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v8, v12, v6}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    iput-object v1, v11, Lkl/q;->a:[B

    new-instance v13, Lkl/s;

    iget v1, v10, Lkl/h;->l:I

    iget v2, v10, Lkl/h;->o:I

    invoke-direct {v13, v10, v1, v2}, Lkl/s;-><init>(Lkl/h;II)V

    iget-object v1, v11, Lkl/q;->a:[B

    invoke-virtual {v13, v0, v1, v12}, Lkl/s;->g([B[BI)V

    invoke-virtual {v13}, Lkl/s;->i()[[B

    move-result-object v6

    invoke-virtual {v13}, Lkl/s;->j()I

    move-result v7

    iget v0, v10, Lkl/h;->l:I

    new-array v14, v0, [Lkl/r;

    new-array v15, v0, [Lkl/s;

    move v8, v12

    :goto_0
    iget v0, v10, Lkl/h;->l:I

    if-ge v8, v0, :cond_0

    new-instance v0, Lkl/r;

    invoke-direct {v0, v10}, Lkl/r;-><init>(Lkl/h;)V

    aput-object v0, v14, v8

    new-instance v0, Lkl/s;

    iget v1, v10, Lkl/h;->n:I

    iget v2, v10, Lkl/h;->o:I

    invoke-direct {v0, v10, v1, v2}, Lkl/s;-><init>(Lkl/h;II)V

    aput-object v0, v15, v8

    add-int v1, v8, v7

    aget-object v1, v6, v1

    iget-object v2, v11, Lkl/q;->a:[B

    invoke-virtual {v0, v1, v2, v8}, Lkl/s;->g([B[BI)V

    aget-object v1, v14, v8

    aget-object v0, v15, v8

    invoke-virtual {v0}, Lkl/s;->i()[[B

    move-result-object v2

    aget-object v0, v15, v8

    invoke-virtual {v0}, Lkl/s;->j()I

    move-result v3

    iget-object v4, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lkl/h;->u(Lkl/r;[[BI[BI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget v1, v10, Lkl/h;->h:I

    mul-int/lit8 v1, v1, 0x4

    const/4 v7, 0x2

    new-array v2, v7, [I

    const/4 v9, 0x1

    aput v1, v2, v9

    aput v0, v2, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[B

    const/16 v0, 0xb0

    new-array v8, v0, [B

    move v0, v12

    :goto_1
    iget v1, v10, Lkl/h;->l:I

    if-ge v0, v1, :cond_1

    aget-object v1, v14, v0

    aget-object v2, v16, v0

    invoke-virtual {v1, v2}, Lkl/r;->a([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, v10, Lkl/h;->n:I

    iget v2, v10, Lkl/h;->p:I

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v2, v3, v7

    aput v0, v3, v9

    aput v1, v3, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[[B

    move v6, v12

    :goto_2
    iget v0, v10, Lkl/h;->l:I

    if-ge v6, v0, :cond_3

    move v5, v12

    :goto_3
    iget v0, v10, Lkl/h;->n:I

    add-int/lit8 v1, v0, -0x1

    if-ge v5, v1, :cond_2

    aget-object v0, v17, v6

    aget-object v1, v0, v5

    aget-object v0, v15, v6

    invoke-virtual {v0, v5}, Lkl/s;->h(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move/from16 v18, v5

    move v5, v6

    move/from16 v19, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m([B[B[B[BII)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v19

    goto :goto_3

    :cond_2
    move/from16 v19, v6

    add-int/lit8 v6, v0, -0x1

    aget-object v0, v14, v19

    invoke-virtual {v10, v8, v0}, Lkl/h;->C([BLkl/r;)V

    aget-object v0, v17, v19

    aget-object v1, v0, v6

    aget-object v0, v15, v19

    invoke-virtual {v0, v6}, Lkl/s;->h(I)[B

    move-result-object v2

    iget-object v4, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move-object v3, v8

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m([B[B[B[BII)V

    add-int/lit8 v6, v19, 0x1

    goto :goto_2

    :cond_3
    new-array v8, v0, [Lkl/g;

    iget v0, v10, Lkl/h;->f:I

    new-array v6, v0, [I

    move v5, v12

    :goto_4
    iget v0, v10, Lkl/h;->l:I

    if-ge v5, v0, :cond_5

    new-instance v0, Lkl/g;

    invoke-direct {v0, v10}, Lkl/g;-><init>(Lkl/h;)V

    aput-object v0, v8, v5

    aget-object v0, v16, v5

    iget v1, v10, Lkl/h;->h:I

    invoke-static {v0, v12, v1}, Lorg/bouncycastle/util/p;->u([BII)[I

    move-result-object v4

    move-object/from16 v3, p1

    invoke-virtual {v10, v4, v4, v3, v12}, Lkl/h;->w0([I[I[II)V

    aget-object v2, v14, v5

    aget-object v18, v8, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v3, v6

    move-object v9, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object/from16 v5, p3

    move-object/from16 v20, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m0([ILkl/r;[ILkl/g;[I[I)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string v1, "MPC simulation failed, aborting signature"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v12

    :cond_4
    aget-object v0, v16, v18

    invoke-static {v9, v0, v12}, Lorg/bouncycastle/util/p;->o([I[BI)V

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v20

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    iget v1, v10, Lkl/h;->p:I

    new-array v2, v7, [I

    const/4 v9, 0x1

    aput v1, v2, v9

    aput v0, v2, v12

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [[B

    iget v1, v10, Lkl/h;->l:I

    iget v2, v10, Lkl/h;->p:I

    new-array v3, v7, [I

    aput v2, v3, v9

    aput v1, v3, v12

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v12

    :goto_5
    iget v2, v10, Lkl/h;->l:I

    if-ge v1, v2, :cond_6

    aget-object v2, v4, v1

    aget-object v3, v17, v1

    invoke-virtual {v10, v2, v3}, Lkl/h;->n([B[[B)V

    aget-object v2, v0, v1

    aget-object v3, v16, v1

    aget-object v5, v8, v1

    invoke-virtual {v10, v2, v3, v5}, Lkl/h;->o([B[BLkl/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    new-instance v7, Lkl/s;

    iget v1, v10, Lkl/h;->l:I

    iget v2, v10, Lkl/h;->p:I

    invoke-direct {v7, v10, v1, v2}, Lkl/s;-><init>(Lkl/h;II)V

    iget-object v1, v11, Lkl/q;->a:[B

    invoke-virtual {v7, v0, v1}, Lkl/s;->b([[B[B)V

    iget v0, v10, Lkl/h;->m:I

    new-array v2, v0, [I

    iput-object v2, v11, Lkl/q;->g:[I

    new-array v3, v0, [I

    iput-object v3, v11, Lkl/q;->h:[I

    iget v0, v10, Lkl/h;->p:I

    new-array v1, v0, [B

    iput-object v1, v11, Lkl/q;->f:[B

    iget-object v0, v7, Lkl/s;->b:[[B

    aget-object v5, v0, v12

    iget-object v6, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move-object v12, v7

    move-object/from16 v7, p2

    move-object/from16 v19, v8

    move-object/from16 v8, p3

    move-object/from16 v20, v14

    move v14, v9

    move-object/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Lkl/h;->e([B[I[I[[B[B[B[I[I[B)V

    iget v0, v10, Lkl/h;->l:I

    iget v1, v10, Lkl/h;->m:I

    sub-int/2addr v0, v1

    iget-object v1, v11, Lkl/q;->g:[I

    invoke-virtual {v10, v1}, Lkl/h;->E([I)[I

    move-result-object v1

    new-array v2, v14, [I

    invoke-virtual {v12, v1, v0, v2}, Lkl/s;->u([II[I)[B

    move-result-object v0

    iput-object v0, v11, Lkl/q;->d:[B

    const/4 v0, 0x0

    aget v1, v2, v0

    iput v1, v11, Lkl/q;->e:I

    iget v0, v10, Lkl/h;->l:I

    iget v1, v10, Lkl/h;->o:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, v11, Lkl/q;->b:[B

    iget-object v3, v11, Lkl/q;->g:[I

    iget v4, v10, Lkl/h;->m:I

    mul-int/2addr v0, v1

    invoke-virtual {v13, v3, v4, v2, v0}, Lkl/s;->x([II[BI)I

    move-result v0

    iput v0, v11, Lkl/q;->c:I

    iget v0, v10, Lkl/h;->l:I

    new-array v0, v0, [Lkl/q$a;

    iput-object v0, v11, Lkl/q;->i:[Lkl/q$a;

    const/4 v0, 0x0

    :goto_6
    iget v1, v10, Lkl/h;->l:I

    if-ge v0, v1, :cond_9

    iget-object v1, v11, Lkl/q;->g:[I

    iget v2, v10, Lkl/h;->m:I

    invoke-virtual {v10, v1, v2, v0}, Lkl/h;->r([III)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v11, Lkl/q;->i:[Lkl/q$a;

    new-instance v2, Lkl/q$a;

    invoke-direct {v2, v10}, Lkl/q$a;-><init>(Lkl/h;)V

    aput-object v2, v1, v0

    iget-object v1, v11, Lkl/q;->g:[I

    iget v2, v10, Lkl/h;->m:I

    invoke-static {v1, v2, v0}, Lkl/h;->K([III)I

    move-result v1

    iget-object v2, v11, Lkl/q;->h:[I

    aget v2, v2, v1

    filled-new-array {v2}, [I

    move-result-object v2

    iget-object v3, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v0

    iget v4, v10, Lkl/h;->n:I

    iget v5, v10, Lkl/h;->o:I

    mul-int v6, v4, v5

    new-array v6, v6, [B

    iput-object v6, v3, Lkl/q$a;->a:[B

    aget-object v7, v15, v0

    mul-int/2addr v4, v5

    invoke-virtual {v7, v2, v14, v6, v4}, Lkl/s;->x([II[BI)I

    move-result v2

    iput v2, v3, Lkl/q$a;->b:I

    iget v2, v10, Lkl/h;->n:I

    sub-int/2addr v2, v14

    iget-object v3, v11, Lkl/q;->h:[I

    aget v3, v3, v1

    if-eq v3, v2, :cond_7

    iget-object v2, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lkl/q$a;->c:[B

    aget-object v3, v20, v0

    invoke-virtual {v10, v2, v3}, Lkl/h;->C([BLkl/r;)V

    :cond_7
    aget-object v2, v16, v0

    iget-object v3, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lkl/q$a;->e:[B

    iget v4, v10, Lkl/h;->g:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v19, v0

    iget-object v2, v2, Lkl/g;->a:[[B

    iget-object v3, v11, Lkl/q;->h:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    iget-object v3, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lkl/q$a;->f:[B

    iget v4, v10, Lkl/h;->i:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v17, v0

    iget-object v3, v11, Lkl/q;->h:[I

    aget v1, v3, v1

    aget-object v1, v2, v1

    iget-object v2, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lkl/q$a;->d:[B

    iget v3, v10, Lkl/h;->p:I

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_9
    return v14
.end method

.method public final m([B[B[B[BII)V
    .locals 3

    iget-object v0, p0, Lkl/h;->r:LBi/a0;

    iget v1, p0, Lkl/h;->o:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, LBi/y;->update([BII)V

    if-eqz p3, :cond_0

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget v0, p0, Lkl/h;->i:I

    invoke-interface {p2, p3, v2, v0}, LBi/y;->update([BII)V

    :cond_0
    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    const/16 p3, 0x20

    invoke-interface {p2, p4, v2, p3}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    invoke-static {p5}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object p3

    const/4 p4, 0x2

    invoke-interface {p2, p3, v2, p4}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    invoke-static {p6}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object p3

    invoke-interface {p2, p3, v2, p4}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget p3, p0, Lkl/h;->p:I

    invoke-interface {p2, p1, v2, p3}, LBi/a0;->e([BII)I

    return-void
.end method

.method public final m0([ILkl/r;[ILkl/g;[I[I)I
    .locals 6

    const/16 v0, 0x10

    new-array v1, v0, [I

    new-array v0, v0, [I

    iget-object v2, p0, Lkl/h;->v:Lkl/c;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object v2

    invoke-virtual {v2}, Lkl/a;->b()[I

    move-result-object v4

    invoke-virtual {v2}, Lkl/b;->f()I

    move-result v2

    invoke-virtual {p0, v1, p1, v4, v2}, Lkl/h;->M([I[I[II)V

    invoke-virtual {p0, v0, v1, p5, v3}, Lkl/h;->w0([I[I[II)V

    const/4 p5, 0x1

    :goto_0
    iget v2, p0, Lkl/h;->d:I

    if-gt p5, v2, :cond_0

    invoke-virtual {p0, p3, p2}, Lkl/h;->q0([ILkl/r;)V

    invoke-virtual {p0, v0, p3, p2, p4}, Lkl/h;->U([I[ILkl/r;Lkl/g;)V

    iget-object v2, p0, Lkl/h;->v:Lkl/c;

    add-int/lit8 v4, p5, -0x1

    invoke-virtual {v2, p0, v4}, Lkl/c;->d(Lkl/h;I)Lkl/b;

    move-result-object v2

    invoke-virtual {v2}, Lkl/a;->b()[I

    move-result-object v5

    invoke-virtual {v2}, Lkl/b;->f()I

    move-result v2

    invoke-virtual {p0, v0, v0, v5, v2}, Lkl/h;->M([I[I[II)V

    iget-object v2, p0, Lkl/h;->v:Lkl/c;

    invoke-virtual {v2, p0, v4}, Lkl/c;->f(Lkl/h;I)Lkl/b;

    move-result-object v2

    invoke-virtual {v2}, Lkl/a;->b()[I

    move-result-object v4

    invoke-virtual {v2}, Lkl/b;->f()I

    move-result v2

    invoke-virtual {p0, v0, v0, v4, v2}, Lkl/h;->w0([I[I[II)V

    iget-object v2, p0, Lkl/h;->v:Lkl/c;

    invoke-virtual {v2, p0, p5}, Lkl/c;->b(Lkl/h;I)Lkl/b;

    move-result-object v2

    invoke-virtual {v2}, Lkl/a;->b()[I

    move-result-object v4

    invoke-virtual {v2}, Lkl/b;->f()I

    move-result v2

    invoke-virtual {p0, v1, p1, v4, v2}, Lkl/h;->M([I[I[II)V

    invoke-virtual {p0, v0, v1, v0, v3}, Lkl/h;->w0([I[I[II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lkl/h;->h:I

    invoke-static {v0, p6, p1}, Lkl/h;->o0([I[II)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v3, -0x1

    :cond_1
    return v3
.end method

.method public final n([B[[B)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lkl/h;->n:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lkl/h;->r:LBi/a0;

    aget-object v3, p2, v1

    iget v4, p0, Lkl/h;->p:I

    invoke-interface {v2, v3, v0, v4}, LBi/y;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget v1, p0, Lkl/h;->p:I

    invoke-interface {p2, p1, v0, v1}, LBi/a0;->e([BII)I

    return-void
.end method

.method public final o([B[BLkl/g;)V
    .locals 4

    iget-object v0, p0, Lkl/h;->r:LBi/a0;

    iget v1, p0, Lkl/h;->g:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, LBi/y;->update([BII)V

    move p2, v2

    :goto_0
    iget v0, p0, Lkl/h;->n:I

    if-ge p2, v0, :cond_0

    iget v0, p3, Lkl/g;->b:I

    invoke-static {v0}, Lkl/t;->i(I)I

    move-result v0

    iget-object v1, p0, Lkl/h;->r:LBi/a0;

    iget-object v3, p3, Lkl/g;->a:[[B

    aget-object v3, v3, p2

    invoke-interface {v1, v3, v2, v0}, LBi/y;->update([BII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    iget p3, p0, Lkl/h;->p:I

    invoke-interface {p2, p1, v2, p3}, LBi/a0;->e([BII)I

    return-void
.end method

.method public final p([B[I[I[I[B)V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p0, p2, v0}, Lkl/h;->r0([I[B)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    array-length v1, p5

    const/4 v2, 0x0

    invoke-interface {p2, p5, v2, v1}, LBi/y;->update([BII)V

    invoke-virtual {p0, p3, v0}, Lkl/h;->r0([I[B)V

    invoke-virtual {p0, p4, v0}, Lkl/h;->r0([I[B)V

    iget p2, p0, Lkl/h;->f:I

    int-to-short p2, p2

    invoke-static {p2, v0, v2}, Lorg/bouncycastle/util/p;->R(S[BI)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    const/4 p3, 0x2

    invoke-interface {p2, v0, v2, p3}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/h;->r:LBi/a0;

    array-length p3, p1

    invoke-interface {p2, p1, v2, p3}, LBi/a0;->e([BII)I

    return-void
.end method

.method public final p0([I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lkl/h;->e:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lkl/t;->e([II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v3}, Lkl/t;->e([II)I

    move-result v4

    invoke-static {p1, v0}, Lkl/t;->e([II)I

    move-result v5

    and-int v6, v4, v5

    xor-int/2addr v6, v2

    invoke-static {p1, v1, v6}, Lkl/t;->p([III)V

    xor-int v1, v2, v4

    and-int v6, v2, v5

    xor-int/2addr v6, v1

    invoke-static {p1, v3, v6}, Lkl/t;->p([III)V

    xor-int/2addr v1, v5

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lkl/t;->p([III)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q([I[I[I[B)[B
    .locals 5

    iget v0, p0, Lkl/h;->o:I

    iget v1, p0, Lkl/h;->n:I

    iget v2, p0, Lkl/h;->l:I

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    add-int/2addr v0, v1

    new-array v0, v0, [B

    new-array v2, v1, [B

    invoke-virtual {p0, p1, v2}, Lkl/h;->r0([I[B)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    array-length v3, p4

    const/4 v4, 0x0

    invoke-interface {p1, p4, v4, v3}, LBi/y;->update([BII)V

    invoke-virtual {p0, p2, v2}, Lkl/h;->r0([I[B)V

    invoke-virtual {p0, p3, v2}, Lkl/h;->r0([I[B)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget p2, p0, Lkl/h;->f:I

    invoke-static {p2}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p1, p2, v4, p3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget p2, p0, Lkl/h;->o:I

    iget p3, p0, Lkl/h;->n:I

    iget p4, p0, Lkl/h;->l:I

    mul-int/2addr p3, p4

    mul-int/2addr p2, p3

    add-int/2addr p2, v1

    invoke-interface {p1, v0, v4, p2}, LBi/a0;->e([BII)I

    return-object v0
.end method

.method public final q0([ILkl/r;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lkl/h;->f:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lkl/r;->d()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r([III)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p1, v1

    if-ne v2, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final r0([I[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/p;->o([I[BI)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget v1, p0, Lkl/h;->g:I

    invoke-interface {p1, p2, v0, v1}, LBi/y;->update([BII)V

    return-void
.end method

.method public final s([BI)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, 0x10

    iget v4, p0, Lkl/h;->l:I

    const v5, 0x55555555

    if-gt v3, v4, :cond_0

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v0

    ushr-int/lit8 v4, v0, 0x1

    and-int v6, v0, v4

    or-int/2addr v1, v6

    xor-int/2addr v0, v4

    and-int/2addr v0, v5

    invoke-static {v0}, Lorg/bouncycastle/util/k;->a(I)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_1

    add-int/lit8 v3, v4, 0x7

    div-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-static {p1, p2, v3}, Lorg/bouncycastle/util/p;->w([BII)I

    move-result p1

    invoke-static {v4}, Lkl/t;->g(I)I

    move-result p2

    and-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x1

    and-int v0, p1, p2

    or-int/2addr v1, v0

    xor-int/2addr p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Lorg/bouncycastle/util/k;->a(I)I

    move-result p1

    add-int/2addr v2, p1

    :cond_1
    and-int p1, v1, v5

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method public final s0(Lkl/p;[I[I[B)I
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Lkl/h;->l:I

    iget v1, v10, Lkl/h;->n:I

    iget v2, v10, Lkl/h;->p:I

    const/4 v12, 0x3

    new-array v3, v12, [I

    const/4 v13, 0x2

    aput v2, v3, v13

    const/4 v14, 0x1

    aput v1, v3, v14

    const/4 v15, 0x0

    aput v0, v3, v15

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [[[B

    iget v1, v10, Lkl/h;->l:I

    iget v2, v10, Lkl/h;->k:I

    new-array v3, v12, [I

    aput v2, v3, v13

    aput v12, v3, v14

    aput v1, v3, v15

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[[B

    iget v0, v10, Lkl/h;->l:I

    iget v1, v10, Lkl/h;->g:I

    new-array v2, v12, [I

    aput v1, v2, v13

    aput v12, v2, v14

    aput v0, v2, v15

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [[[I

    iget-object v9, v11, Lkl/p;->c:[Lkl/p$a;

    iget-object v8, v11, Lkl/p;->a:[B

    iget v0, v10, Lkl/h;->g:I

    mul-int/lit8 v1, v0, 0x6

    iget v2, v10, Lkl/h;->i:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v7, v0, [B

    new-instance v6, Lkl/r;

    invoke-direct {v6, v10}, Lkl/r;-><init>(Lkl/h;)V

    iget v0, v10, Lkl/h;->l:I

    new-array v5, v0, [Lkl/u;

    new-array v4, v0, [Lkl/u;

    move v3, v15

    :goto_0
    iget v0, v10, Lkl/h;->l:I

    const/16 v19, -0x1

    const-string v2, "Invalid signature. Did not verify"

    if-ge v3, v0, :cond_3

    new-instance v0, Lkl/u;

    invoke-direct {v0, v10}, Lkl/u;-><init>(Lkl/h;)V

    aput-object v0, v5, v3

    new-instance v1, Lkl/u;

    invoke-direct {v1, v10}, Lkl/u;-><init>(Lkl/h;)V

    aput-object v1, v4, v3

    aget-object v20, v9, v3

    aget-object v21, v5, v3

    invoke-virtual {v10, v8, v3}, Lkl/h;->D([BI)I

    move-result v22

    iget-object v0, v11, Lkl/p;->b:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v24, v1

    move-object/from16 v1, v20

    move-object v13, v2

    move-object/from16 v2, v21

    move/from16 v21, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v4

    move/from16 v4, v22

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v6

    move/from16 v6, v21

    move-object/from16 v25, v7

    move-object v14, v8

    move-object/from16 v8, p3

    move-object/from16 v26, v9

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lkl/h;->t0(Lkl/p$a;Lkl/u;Lkl/u;I[BI[B[ILkl/r;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {v0, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v19

    :cond_0
    move/from16 v6, v21

    invoke-virtual {v10, v14, v6}, Lkl/h;->D([BI)I

    move-result v7

    aget-object v0, v26, v6

    iget-object v0, v0, Lkl/p$a;->a:[B

    aget-object v1, v22, v6

    aget-object v2, v16, v6

    aget-object v2, v2, v7

    invoke-virtual {v10, v0, v15, v1, v2}, Lkl/h;->a([BILkl/u;[B)V

    aget-object v0, v26, v6

    iget-object v0, v0, Lkl/p$a;->b:[B

    aget-object v1, v24, v6

    aget-object v2, v16, v6

    add-int/lit8 v3, v7, 0x1

    rem-int/lit8 v8, v3, 0x3

    aget-object v2, v2, v8

    invoke-virtual {v10, v0, v15, v1, v2}, Lkl/h;->a([BILkl/u;[B)V

    aget-object v0, v26, v6

    iget-object v0, v0, Lkl/p$a;->e:[B

    aget-object v1, v16, v6

    add-int/lit8 v2, v7, 0x2

    rem-int/lit8 v9, v2, 0x3

    aget-object v1, v1, v9

    iget v2, v10, Lkl/h;->p:I

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v10, Lkl/h;->s:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_2

    aget-object v0, v26, v6

    iget-object v2, v0, Lkl/p$a;->a:[B

    aget-object v4, v22, v6

    aget-object v0, v17, v6

    aget-object v5, v0, v7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Lkl/h;->b(I[BILkl/u;[B)V

    aget-object v0, v26, v6

    iget-object v2, v0, Lkl/p$a;->b:[B

    aget-object v4, v24, v6

    aget-object v0, v17, v6

    aget-object v5, v0, v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Lkl/h;->b(I[BILkl/u;[B)V

    if-nez v7, :cond_1

    iget v0, v10, Lkl/h;->k:I

    goto :goto_1

    :cond_1
    iget v0, v10, Lkl/h;->j:I

    :goto_1
    aget-object v1, v26, v6

    iget-object v1, v1, Lkl/p$a;->f:[B

    aget-object v2, v17, v6

    aget-object v2, v2, v9

    invoke-static {v1, v15, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    aget-object v0, v18, v6

    aget-object v1, v22, v6

    iget-object v1, v1, Lkl/u;->c:[I

    aput-object v1, v0, v7

    aget-object v0, v18, v6

    aget-object v1, v24, v6

    iget-object v1, v1, Lkl/u;->c:[I

    aput-object v1, v0, v8

    iget v0, v10, Lkl/h;->h:I

    new-array v0, v0, [I

    aget-object v1, v22, v6

    iget-object v1, v1, Lkl/u;->c:[I

    aget-object v2, v24, v6

    iget-object v2, v2, Lkl/u;->c:[I

    move-object/from16 v3, p2

    invoke-virtual {v10, v0, v1, v2, v3}, Lkl/h;->x0([I[I[I[I)V

    aget-object v1, v18, v6

    aput-object v0, v1, v9

    add-int/lit8 v0, v6, 0x1

    move v3, v0

    move-object v8, v14

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v4, v24

    move-object/from16 v7, v25

    move-object/from16 v9, v26

    move v14, v13

    const/4 v13, 0x2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v3, p2

    move-object v14, v8

    move v1, v13

    move-object v13, v2

    mul-int/2addr v0, v1

    invoke-static {v0}, Lkl/t;->i(I)I

    move-result v0

    new-array v9, v0, [B

    iget-object v6, v11, Lkl/p;->b:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object v5, v9

    move-object/from16 v7, p4

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lkl/h;->d([I[I[[[I[[[B[B[B[B[[[B)V

    iget v0, v10, Lkl/h;->l:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v0}, Lkl/t;->i(I)I

    move-result v0

    invoke-static {v14, v9, v0}, Lkl/h;->n0([B[BI)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    invoke-virtual {v0, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move/from16 v15, v19

    :cond_4
    return v15
.end method

.method public final t([BI[BII[BI)Z
    .locals 4

    iget v0, p0, Lkl/h;->p:I

    const/4 v1, 0x0

    if-ge p7, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lkl/h;->r:LBi/a0;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, LBi/y;->update(B)V

    iget-object v0, p0, Lkl/h;->r:LBi/a0;

    iget v3, p0, Lkl/h;->o:I

    invoke-interface {v0, p1, p2, v3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget p2, p0, Lkl/h;->p:I

    invoke-interface {p1, p6, v1, p2}, LBi/a0;->e([BII)I

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    iget p2, p0, Lkl/h;->p:I

    invoke-interface {p1, p6, v1, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    const/16 p2, 0x20

    invoke-interface {p1, p3, v1, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    invoke-static {p4}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    invoke-static {p5}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    invoke-static {p7}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lkl/h;->r:LBi/a0;

    invoke-interface {p1, p6, v1, p7}, LBi/a0;->e([BII)I

    const/4 p1, 0x1

    return p1
.end method

.method public t0(Lkl/p$a;Lkl/u;Lkl/u;I[BI[B[ILkl/r;)Z
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    iget-object v0, v9, Lkl/p$a;->d:[B

    iget-object v1, v11, Lkl/u;->b:[B

    iget v2, v8, Lkl/h;->i:I

    const/4 v15, 0x0

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v15, v14, Lkl/r;->b:I

    const/4 v7, 0x1

    if-eqz v12, :cond_6

    if-eq v12, v7, :cond_3

    const/4 v0, 0x2

    if-eq v12, v0, :cond_0

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string v1, "Invalid Challenge!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move/from16 v16, v7

    move v7, v15

    goto/16 :goto_3

    :cond_0
    iget-object v1, v9, Lkl/p$a;->a:[B

    iget-object v0, v14, Lkl/r;->a:[[B

    aget-object v6, v0, v15

    iget v5, v8, Lkl/h;->i:I

    const/4 v2, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v17, v5

    move/from16 v5, v16

    move/from16 v16, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    iget-object v1, v9, Lkl/p$a;->c:[I

    iget-object v2, v10, Lkl/u;->a:[I

    iget v3, v8, Lkl/h;->h:I

    invoke-static {v1, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_1

    iget-object v1, v9, Lkl/p$a;->b:[B

    iget v0, v8, Lkl/h;->g:I

    iget v2, v8, Lkl/h;->i:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v7, v16

    goto :goto_0

    :cond_1
    move v7, v15

    :goto_0
    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, v11, Lkl/u;->a:[I

    invoke-static {v13, v15, v0}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget v0, v8, Lkl/h;->g:I

    iget-object v1, v14, Lkl/r;->a:[[B

    aget-object v1, v1, v16

    iget v2, v8, Lkl/h;->i:I

    invoke-static {v13, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    :cond_3
    move/from16 v16, v7

    iget-object v1, v9, Lkl/p$a;->a:[B

    iget v0, v8, Lkl/h;->g:I

    iget v2, v8, Lkl/h;->i:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    iget-object v1, v10, Lkl/u;->a:[I

    invoke-static {v13, v15, v1}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget v1, v8, Lkl/h;->g:I

    iget-object v2, v14, Lkl/r;->a:[[B

    aget-object v2, v2, v15

    iget v3, v8, Lkl/h;->i:I

    invoke-static {v13, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_4

    iget-object v1, v9, Lkl/p$a;->b:[B

    iget-object v0, v14, Lkl/r;->a:[[B

    aget-object v6, v0, v16

    iget v7, v8, Lkl/h;->i:I

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    if-eqz v0, :cond_4

    move/from16 v7, v16

    goto :goto_1

    :cond_4
    move v7, v15

    :goto_1
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lkl/p$a;->c:[I

    iget-object v1, v11, Lkl/u;->a:[I

    iget v2, v8, Lkl/h;->h:I

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    move/from16 v16, v7

    iget-object v1, v9, Lkl/p$a;->a:[B

    iget v0, v8, Lkl/h;->g:I

    iget v2, v8, Lkl/h;->i:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    iget-object v1, v10, Lkl/u;->a:[I

    invoke-static {v13, v15, v1}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget v1, v8, Lkl/h;->g:I

    iget-object v2, v14, Lkl/r;->a:[[B

    aget-object v2, v2, v15

    iget v3, v8, Lkl/h;->i:I

    invoke-static {v13, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_7

    iget-object v1, v9, Lkl/p$a;->b:[B

    iget v0, v8, Lkl/h;->g:I

    iget v2, v8, Lkl/h;->i:I

    add-int v7, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lkl/h;->t([BI[BII[BI)Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v7, v16

    goto :goto_2

    :cond_7
    move v7, v15

    :goto_2
    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, v11, Lkl/u;->a:[I

    invoke-static {v13, v15, v0}, Lorg/bouncycastle/util/p;->s([BI[I)V

    iget v0, v8, Lkl/h;->g:I

    iget-object v1, v14, Lkl/r;->a:[[B

    aget-object v1, v1, v16

    iget v2, v8, Lkl/h;->i:I

    invoke-static {v13, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    if-nez v7, :cond_9

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string v1, "Failed to generate random tapes, signature verification will fail (but signature may actually be valid)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v15

    :cond_9
    iget-object v0, v10, Lkl/u;->a:[I

    iget v1, v8, Lkl/h;->f:I

    invoke-static {v0, v1}, Lkl/t;->q([II)V

    iget-object v0, v11, Lkl/u;->a:[I

    iget v1, v8, Lkl/h;->f:I

    invoke-static {v0, v1}, Lkl/t;->q([II)V

    array-length v0, v13

    div-int/lit8 v0, v0, 0x4

    invoke-static {v13, v15, v0}, Lorg/bouncycastle/util/p;->u([BII)[I

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p9

    move-object/from16 v5, p8

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lkl/h;->S(Lkl/u;Lkl/u;Lkl/r;[I[II)V

    return v16
.end method

.method public final u(Lkl/r;[[BI[BI)V
    .locals 7

    iget v0, p0, Lkl/h;->i:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lkl/h;->n:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    add-int v5, v3, p3

    aget-object v5, p2, v5

    iget v6, p0, Lkl/h;->o:I

    invoke-interface {v4, v5, v2, v6}, LBi/y;->update([BII)V

    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    const/16 v5, 0x20

    invoke-interface {v4, p4, v2, v5}, LBi/y;->update([BII)V

    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    invoke-static {p5}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, LBi/y;->update([BII)V

    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    invoke-static {v3}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, LBi/y;->update([BII)V

    iget-object v4, p0, Lkl/h;->r:LBi/a0;

    iget-object v5, p1, Lkl/r;->a:[[B

    aget-object v5, v5, v3

    invoke-interface {v4, v5, v2, v0}, LBi/a0;->e([BII)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u0(Lkl/q;[I[I[B)I
    .locals 31

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Lkl/h;->l:I

    iget v1, v10, Lkl/h;->n:I

    iget v2, v10, Lkl/h;->p:I

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v1, v3, v2

    const/4 v7, 0x0

    aput v0, v3, v7

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[[B

    iget v1, v10, Lkl/h;->l:I

    iget v3, v10, Lkl/h;->p:I

    new-array v5, v4, [I

    aput v3, v5, v2

    aput v1, v5, v7

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[B

    iget v1, v10, Lkl/h;->l:I

    iget v3, v10, Lkl/h;->p:I

    new-array v4, v4, [I

    aput v3, v4, v2

    aput v1, v4, v7

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [[B

    iget v0, v10, Lkl/h;->l:I

    new-array v13, v0, [Lkl/g;

    new-instance v14, Lkl/s;

    iget v0, v10, Lkl/h;->l:I

    iget v1, v10, Lkl/h;->p:I

    invoke-direct {v14, v10, v0, v1}, Lkl/s;-><init>(Lkl/h;II)V

    const/16 v0, 0x40

    new-array v15, v0, [B

    iget v0, v10, Lkl/h;->l:I

    new-array v6, v0, [Lkl/s;

    new-array v5, v0, [Lkl/r;

    new-instance v0, Lkl/s;

    iget v1, v10, Lkl/h;->l:I

    iget v3, v10, Lkl/h;->o:I

    invoke-direct {v0, v10, v1, v3}, Lkl/s;-><init>(Lkl/h;II)V

    iget-object v1, v11, Lkl/q;->g:[I

    iget v3, v10, Lkl/h;->m:I

    iget-object v4, v11, Lkl/q;->b:[B

    iget v7, v11, Lkl/q;->c:I

    iget-object v2, v11, Lkl/q;->a:[B

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v7

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v22}, Lkl/s;->w([II[BI[BI)I

    move-result v1

    const/16 v16, -0x1

    if-eqz v1, :cond_0

    return v16

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v10, Lkl/h;->l:I

    if-ge v1, v2, :cond_3

    iget-object v2, v11, Lkl/q;->g:[I

    iget v3, v10, Lkl/h;->m:I

    invoke-virtual {v10, v2, v3, v1}, Lkl/h;->r([III)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lkl/s;

    iget v3, v10, Lkl/h;->n:I

    iget v4, v10, Lkl/h;->o:I

    invoke-direct {v2, v10, v3, v4}, Lkl/s;-><init>(Lkl/h;II)V

    aput-object v2, v6, v1

    invoke-virtual {v0, v1}, Lkl/s;->h(I)[B

    move-result-object v3

    iget-object v4, v11, Lkl/q;->a:[B

    invoke-virtual {v2, v3, v4, v1}, Lkl/s;->g([B[BI)V

    goto :goto_2

    :cond_1
    new-instance v2, Lkl/s;

    iget v3, v10, Lkl/h;->n:I

    iget v4, v10, Lkl/h;->o:I

    invoke-direct {v2, v10, v3, v4}, Lkl/s;-><init>(Lkl/h;II)V

    aput-object v2, v6, v1

    iget-object v2, v11, Lkl/q;->g:[I

    iget v3, v10, Lkl/h;->m:I

    invoke-static {v2, v3, v1}, Lkl/h;->K([III)I

    move-result v2

    iget-object v3, v11, Lkl/q;->h:[I

    aget v2, v3, v2

    filled-new-array {v2}, [I

    move-result-object v24

    aget-object v23, v6, v1

    iget-object v2, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v2, v2, v1

    iget-object v3, v2, Lkl/q$a;->a:[B

    iget v2, v2, Lkl/q$a;->b:I

    iget-object v4, v11, Lkl/q;->a:[B

    const/16 v25, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v2

    move-object/from16 v28, v4

    move/from16 v29, v1

    invoke-virtual/range {v23 .. v29}, Lkl/s;->w([II[BI[BI)I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reconstruct seeds for round "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v16

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v0, v10, Lkl/h;->n:I

    const/4 v1, 0x1

    add-int/lit8 v7, v0, -0x1

    const/16 v0, 0xb0

    new-array v4, v0, [B

    const/4 v3, 0x0

    :goto_3
    iget v0, v10, Lkl/h;->l:I

    const/4 v2, 0x0

    if-ge v3, v0, :cond_9

    new-instance v1, Lkl/r;

    invoke-direct {v1, v10}, Lkl/r;-><init>(Lkl/h;)V

    aput-object v1, v5, v3

    aget-object v0, v6, v3

    invoke-virtual {v0}, Lkl/s;->i()[[B

    move-result-object v17

    aget-object v0, v6, v3

    invoke-virtual {v0}, Lkl/s;->j()I

    move-result v18

    iget-object v0, v11, Lkl/q;->a:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, v17

    move/from16 v17, v3

    move/from16 v3, v18

    move-object/from16 v30, v4

    move-object/from16 v4, v19

    move-object/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lkl/h;->u(Lkl/r;[[BI[BI)V

    iget-object v0, v11, Lkl/q;->g:[I

    iget v1, v10, Lkl/h;->m:I

    invoke-virtual {v10, v0, v1, v5}, Lkl/h;->r([III)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, v18, v5

    invoke-virtual {v0, v15}, Lkl/r;->a([B)V

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v7, :cond_4

    aget-object v0, v8, v5

    aget-object v1, v0, v15

    aget-object v0, v6, v5

    invoke-virtual {v0, v15}, Lkl/s;->h(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move/from16 v17, v5

    move-object/from16 v19, v6

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m([B[B[B[BII)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v19

    goto :goto_4

    :cond_4
    move v15, v5

    move-object/from16 v19, v6

    aget-object v0, v18, v15

    move-object/from16 v6, v30

    invoke-virtual {v10, v6, v0}, Lkl/h;->C([BLkl/r;)V

    aget-object v0, v8, v15

    aget-object v1, v0, v7

    aget-object v0, v19, v15

    invoke-virtual {v0, v7}, Lkl/s;->h(I)[B

    move-result-object v2

    iget-object v4, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move-object v3, v6

    move-object/from16 v17, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m([B[B[B[BII)V

    move-object/from16 v22, v14

    goto/16 :goto_7

    :cond_5
    move v15, v5

    move-object/from16 v19, v6

    move-object/from16 v17, v30

    iget-object v0, v11, Lkl/q;->h:[I

    iget-object v1, v11, Lkl/q;->g:[I

    iget v2, v10, Lkl/h;->m:I

    invoke-static {v1, v2, v15}, Lkl/h;->K([III)I

    move-result v1

    aget v6, v0, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_7

    if-eq v5, v6, :cond_6

    aget-object v0, v8, v15

    aget-object v1, v0, v5

    aget-object v0, v19, v15

    invoke-virtual {v0, v5}, Lkl/s;->h(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move/from16 v21, v5

    move v5, v15

    move-object/from16 v22, v14

    move v14, v6

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m([B[B[B[BII)V

    goto :goto_6

    :cond_6
    move/from16 v21, v5

    move-object/from16 v22, v14

    move v14, v6

    :goto_6
    add-int/lit8 v5, v21, 0x1

    move v6, v14

    move-object/from16 v14, v22

    goto :goto_5

    :cond_7
    move-object/from16 v22, v14

    move v14, v6

    if-eq v7, v14, :cond_8

    aget-object v0, v8, v15

    aget-object v1, v0, v7

    aget-object v0, v19, v15

    invoke-virtual {v0, v7}, Lkl/s;->h(I)[B

    move-result-object v2

    iget-object v0, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v0, v0, v15

    iget-object v3, v0, Lkl/q$a;->c:[B

    iget-object v4, v11, Lkl/q;->a:[B

    move-object/from16 v0, p0

    move v5, v15

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m([B[B[B[BII)V

    :cond_8
    iget-object v0, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v0, v0, v15

    iget-object v0, v0, Lkl/q$a;->d:[B

    aget-object v1, v8, v15

    aget-object v1, v1, v14

    iget v2, v10, Lkl/h;->p:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v15, v20

    move-object/from16 v14, v22

    goto/16 :goto_3

    :cond_9
    move-object/from16 v18, v5

    move-object/from16 v22, v14

    move-object/from16 v20, v15

    move-object v15, v2

    const/4 v0, 0x0

    :goto_8
    iget v1, v10, Lkl/h;->l:I

    if-ge v0, v1, :cond_a

    aget-object v1, v9, v0

    aget-object v2, v8, v0

    invoke-virtual {v10, v1, v2}, Lkl/h;->n([B[[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    iget v0, v10, Lkl/h;->f:I

    new-array v8, v0, [I

    const/4 v14, 0x0

    :goto_9
    iget v0, v10, Lkl/h;->l:I

    if-ge v14, v0, :cond_e

    new-instance v0, Lkl/g;

    invoke-direct {v0, v10}, Lkl/g;-><init>(Lkl/h;)V

    aput-object v0, v13, v14

    iget-object v0, v11, Lkl/q;->g:[I

    iget v1, v10, Lkl/h;->m:I

    invoke-virtual {v10, v0, v1, v14}, Lkl/h;->r([III)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v11, Lkl/q;->h:[I

    iget-object v1, v11, Lkl/q;->g:[I

    iget v2, v10, Lkl/h;->m:I

    invoke-static {v1, v2, v14}, Lkl/h;->K([III)I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v7, :cond_b

    aget-object v1, v18, v14

    iget-object v2, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v2, v2, v14

    iget-object v2, v2, Lkl/q$a;->c:[B

    invoke-virtual {v1, v2}, Lkl/r;->b([B)V

    :cond_b
    iget-object v1, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, v14

    iget-object v1, v1, Lkl/q$a;->f:[B

    aget-object v2, v13, v14

    iget-object v2, v2, Lkl/g;->a:[[B

    aget-object v2, v2, v0

    iget v3, v10, Lkl/h;->i:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v18, v14

    iget-object v1, v1, Lkl/r;->a:[[B

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lorg/bouncycastle/util/a;->e0([BB)V

    aget-object v1, v13, v14

    iput v0, v1, Lkl/g;->c:I

    iget v0, v10, Lkl/h;->h:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, v14

    iget-object v1, v1, Lkl/q$a;->e:[B

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v10, Lkl/h;->h:I

    new-array v2, v1, [I

    invoke-static {v0, v4, v2, v4, v1}, Lorg/bouncycastle/util/p;->t([BI[III)V

    aget-object v3, v18, v14

    aget-object v4, v13, v14

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lkl/h;->m0([ILkl/r;[ILkl/g;[I[I)I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPC simulation failed for round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", signature invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    aget-object v0, v12, v14

    iget-object v1, v11, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, v14

    iget-object v1, v1, Lkl/q$a;->e:[B

    aget-object v2, v13, v14

    invoke-virtual {v10, v0, v1, v2}, Lkl/h;->o([B[BLkl/g;)V

    goto :goto_a

    :cond_d
    aput-object v15, v12, v14

    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    :cond_e
    iget v1, v10, Lkl/h;->m:I

    sub-int/2addr v0, v1

    iget-object v1, v11, Lkl/q;->g:[I

    invoke-virtual {v10, v1}, Lkl/h;->E([I)[I

    move-result-object v1

    iget-object v2, v11, Lkl/q;->d:[B

    iget v3, v11, Lkl/q;->e:I

    move-object/from16 v4, v22

    invoke-virtual {v4, v1, v0, v2, v3}, Lkl/s;->a([II[BI)I

    move-result v0

    if-eqz v0, :cond_f

    return v16

    :cond_f
    iget-object v0, v11, Lkl/q;->a:[B

    invoke-virtual {v4, v12, v0}, Lkl/s;->z([[B[B)I

    move-result v12

    if-eqz v12, :cond_10

    return v16

    :cond_10
    iget-object v0, v4, Lkl/s;->b:[[B

    const/4 v1, 0x0

    aget-object v5, v0, v1

    iget-object v6, v11, Lkl/q;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v4, v9

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Lkl/h;->e([B[I[I[[B[B[B[I[I[B)V

    iget-object v0, v11, Lkl/q;->f:[B

    iget v1, v10, Lkl/h;->p:I

    move-object/from16 v2, v20

    invoke-static {v0, v2, v1}, Lkl/h;->n0([B[BI)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string v1, "Challenge does not match, signature invalid"

    goto/16 :goto_1

    :cond_11
    return v12
.end method

.method public v([B[B[B)V
    .locals 2

    invoke-virtual {p0, p3, p2, p1}, Lkl/h;->c0([B[B[B)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, v0, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final v0(ILkl/g;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lkl/h;->n:I

    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Lkl/t;->c(II)I

    move-result v1

    iget-object v2, p2, Lkl/g;->a:[[B

    aget-object v2, v2, v0

    iget v3, p2, Lkl/g;->b:I

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lkl/t;->n([BIB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p2, Lkl/g;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lkl/g;->b:I

    return-void
.end method

.method public w([B[BLjava/security/SecureRandom;)V
    .locals 3

    iget v0, p0, Lkl/h;->h:I

    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    mul-int/lit8 v2, v0, 0x4

    new-array v2, v2, [B

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v1, v2, v0, p3}, Lkl/h;->a0([B[B[BLjava/security/SecureRandom;)V

    invoke-virtual {p0, v2, v1, p1}, Lkl/h;->f0([B[B[B)I

    invoke-virtual {p0, v0, v2, v1, p2}, Lkl/h;->e0([B[B[B[B)I

    return-void
.end method

.method public w0([I[I[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lkl/h;->h:I

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    add-int v2, v0, p4

    aget v2, p3, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x([B[B[B)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v1

    array-length v2, p1

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static {p2, v3, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    invoke-virtual {p0, p3, v2, p2, v1}, Lkl/h;->d0([B[B[BI)I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    array-length p3, p1

    invoke-static {p2, v3, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final x0([I[I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lkl/h;->h:I

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    aget v2, p3, v0

    xor-int/2addr v1, v2

    aget v2, p4, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(Lkl/p;[BII)I
    .locals 11

    iget-object v0, p1, Lkl/p;->c:[Lkl/p$a;

    iget-object v1, p1, Lkl/p;->a:[B

    iget v2, p0, Lkl/h;->l:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-static {v2}, Lkl/t;->i(I)I

    move-result v2

    const/4 v4, -0x1

    if-ge p3, v2, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0, p2, p4}, Lkl/h;->s([BI)I

    move-result v5

    if-gez v5, :cond_1

    return v4

    :cond_1
    iget v6, p0, Lkl/h;->g:I

    mul-int/2addr v6, v5

    add-int/lit8 v7, v2, 0x20

    iget v8, p0, Lkl/h;->l:I

    iget v9, p0, Lkl/h;->o:I

    mul-int/2addr v9, v3

    iget v10, p0, Lkl/h;->i:I

    add-int/2addr v9, v10

    iget v10, p0, Lkl/h;->p:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/2addr v7, v6

    iget v6, p0, Lkl/h;->s:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    iget v6, p0, Lkl/h;->k:I

    sub-int/2addr v8, v5

    mul-int/2addr v6, v8

    add-int/2addr v7, v6

    iget v6, p0, Lkl/h;->j:I

    mul-int/2addr v6, v5

    add-int/2addr v7, v6

    :cond_2
    if-eq p3, v7, :cond_3

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sigBytesLen = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", expected bytesRequired = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v4

    :cond_3
    const/4 p3, 0x0

    invoke-static {p2, p4, v1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    iget-object p1, p1, Lkl/p;->b:[B

    const/16 v2, 0x20

    invoke-static {p2, p4, p1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    move p1, p3

    :goto_0
    iget v2, p0, Lkl/h;->l:I

    if-ge p1, v2, :cond_9

    invoke-virtual {p0, v1, p1}, Lkl/h;->D([BI)I

    move-result v2

    aget-object v5, v0, p1

    iget-object v5, v5, Lkl/p$a;->e:[B

    iget v6, p0, Lkl/h;->p:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lkl/h;->p:I

    add-int/2addr p4, v5

    iget v5, p0, Lkl/h;->s:I

    if-ne v5, v9, :cond_5

    if-nez v2, :cond_4

    iget v5, p0, Lkl/h;->k:I

    goto :goto_1

    :cond_4
    iget v5, p0, Lkl/h;->j:I

    :goto_1
    aget-object v6, v0, p1

    iget-object v6, v6, Lkl/p$a;->f:[B

    invoke-static {p2, p4, v6, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v5

    :cond_5
    aget-object v5, v0, p1

    iget-object v5, v5, Lkl/p$a;->d:[B

    iget v6, p0, Lkl/h;->i:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lkl/h;->i:I

    add-int/2addr p4, v5

    aget-object v5, v0, p1

    iget-object v5, v5, Lkl/p$a;->a:[B

    iget v6, p0, Lkl/h;->o:I

    invoke-static {p2, p4, v5, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lkl/h;->o:I

    add-int/2addr p4, v5

    aget-object v6, v0, p1

    iget-object v6, v6, Lkl/p$a;->b:[B

    invoke-static {p2, p4, v6, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lkl/h;->o:I

    add-int/2addr p4, v5

    if-eq v2, v9, :cond_6

    if-ne v2, v3, :cond_8

    :cond_6
    aget-object v2, v0, p1

    iget-object v2, v2, Lkl/p$a;->c:[I

    iget v5, p0, Lkl/h;->g:I

    div-int/lit8 v5, v5, 0x4

    invoke-static {p2, p4, v2, p3, v5}, Lorg/bouncycastle/util/p;->t([BI[III)V

    iget v2, p0, Lkl/h;->f:I

    const/16 v5, 0x81

    if-ne v2, v5, :cond_7

    aget-object v5, v0, p1

    iget-object v5, v5, Lkl/p$a;->c:[I

    iget v6, p0, Lkl/h;->h:I

    sub-int/2addr v6, v9

    iget v7, p0, Lkl/h;->g:I

    add-int/2addr v7, p4

    sub-int/2addr v7, v9

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v5, v6

    :cond_7
    iget v5, p0, Lkl/h;->g:I

    add-int/2addr p4, v5

    aget-object v5, v0, p1

    iget-object v5, v5, Lkl/p$a;->c:[I

    invoke-virtual {p0, v5, v2}, Lkl/h;->i([II)Z

    move-result v2

    if-nez v2, :cond_8

    return v4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    return p3
.end method

.method public final z(Lkl/q;[BII)I
    .locals 9

    iget v0, p0, Lkl/h;->p:I

    add-int/lit8 v1, v0, 0x20

    array-length v2, p2

    const/4 v3, -0x1

    if-ge v2, v1, :cond_0

    return v3

    :cond_0
    iget-object v2, p1, Lkl/q;->f:[B

    const/4 v4, 0x0

    invoke-static {p2, p4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lkl/h;->p:I

    add-int/2addr p4, v0

    iget-object v0, p1, Lkl/q;->a:[B

    const/16 v2, 0x20

    invoke-static {p2, p4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v2

    iget-object v0, p1, Lkl/q;->f:[B

    iget-object v2, p1, Lkl/q;->g:[I

    iget-object v5, p1, Lkl/q;->h:[I

    invoke-virtual {p0, v0, v2, v5}, Lkl/h;->A([B[I[I)V

    new-instance v0, Lkl/s;

    iget v2, p0, Lkl/h;->l:I

    iget v5, p0, Lkl/h;->o:I

    invoke-direct {v0, p0, v2, v5}, Lkl/s;-><init>(Lkl/h;II)V

    iget-object v2, p1, Lkl/q;->g:[I

    iget v5, p0, Lkl/h;->m:I

    invoke-virtual {v0, v2, v5}, Lkl/s;->y([II)I

    move-result v0

    iput v0, p1, Lkl/q;->c:I

    add-int/2addr v1, v0

    iget v0, p0, Lkl/h;->l:I

    iget v2, p0, Lkl/h;->m:I

    sub-int/2addr v0, v2

    iget-object v2, p1, Lkl/q;->g:[I

    invoke-virtual {p0, v2}, Lkl/h;->E([I)[I

    move-result-object v2

    new-instance v5, Lkl/s;

    iget v6, p0, Lkl/h;->l:I

    iget v7, p0, Lkl/h;->p:I

    invoke-direct {v5, p0, v6, v7}, Lkl/s;-><init>(Lkl/h;II)V

    invoke-virtual {v5, v2, v0}, Lkl/s;->v([II)I

    move-result v0

    iput v0, p1, Lkl/q;->e:I

    add-int/2addr v1, v0

    const/4 v0, 0x1

    new-array v2, v0, [I

    new-instance v5, Lkl/s;

    iget v6, p0, Lkl/h;->n:I

    iget v7, p0, Lkl/h;->o:I

    invoke-direct {v5, p0, v6, v7}, Lkl/s;-><init>(Lkl/h;II)V

    invoke-virtual {v5, v2, v0}, Lkl/s;->y([II)I

    move-result v2

    move v5, v4

    :goto_0
    iget v6, p0, Lkl/h;->l:I

    if-ge v5, v6, :cond_3

    iget-object v6, p1, Lkl/q;->g:[I

    iget v7, p0, Lkl/h;->m:I

    invoke-virtual {p0, v6, v7, v5}, Lkl/h;->r([III)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p1, Lkl/q;->h:[I

    iget-object v7, p1, Lkl/q;->g:[I

    iget v8, p0, Lkl/h;->m:I

    invoke-static {v7, v8, v5}, Lkl/h;->K([III)I

    move-result v7

    aget v6, v6, v7

    iget v7, p0, Lkl/h;->n:I

    sub-int/2addr v7, v0

    if-eq v6, v7, :cond_1

    iget v6, p0, Lkl/h;->i:I

    add-int/2addr v1, v6

    :cond_1
    add-int/2addr v1, v2

    iget v6, p0, Lkl/h;->g:I

    add-int/2addr v1, v6

    iget v6, p0, Lkl/h;->i:I

    add-int/2addr v1, v6

    iget v6, p0, Lkl/h;->p:I

    add-int/2addr v1, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eq p3, v1, :cond_4

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sigLen = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", expected bytesRequired = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v3

    :cond_4
    iget p3, p1, Lkl/q;->c:I

    new-array v1, p3, [B

    iput-object v1, p1, Lkl/q;->b:[B

    invoke-static {p2, p4, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p1, Lkl/q;->c:I

    add-int/2addr p4, p3

    iget p3, p1, Lkl/q;->e:I

    new-array v1, p3, [B

    iput-object v1, p1, Lkl/q;->d:[B

    invoke-static {p2, p4, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p1, Lkl/q;->e:I

    add-int/2addr p4, p3

    move p3, v4

    :goto_2
    iget v1, p0, Lkl/h;->l:I

    if-ge p3, v1, :cond_8

    iget-object v1, p1, Lkl/q;->g:[I

    iget v5, p0, Lkl/h;->m:I

    invoke-virtual {p0, v1, v5, p3}, Lkl/h;->r([III)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lkl/q;->i:[Lkl/q$a;

    new-instance v5, Lkl/q$a;

    invoke-direct {v5, p0}, Lkl/q$a;-><init>(Lkl/h;)V

    aput-object v5, v1, p3

    iget-object v1, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, p3

    iput v2, v1, Lkl/q$a;->b:I

    new-array v5, v2, [B

    iput-object v5, v1, Lkl/q$a;->a:[B

    invoke-static {p2, p4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, p3

    iget v1, v1, Lkl/q$a;->b:I

    add-int/2addr p4, v1

    iget-object v1, p1, Lkl/q;->h:[I

    iget-object v5, p1, Lkl/q;->g:[I

    iget v6, p0, Lkl/h;->m:I

    invoke-static {v5, v6, p3}, Lkl/h;->K([III)I

    move-result v5

    aget v1, v1, v5

    iget v5, p0, Lkl/h;->n:I

    sub-int/2addr v5, v0

    if-eq v1, v5, :cond_5

    iget-object v1, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, p3

    iget-object v1, v1, Lkl/q$a;->c:[B

    iget v5, p0, Lkl/h;->i:I

    invoke-static {p2, p4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lkl/h;->i:I

    add-int/2addr p4, v1

    iget-object v1, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, p3

    iget-object v1, v1, Lkl/q$a;->c:[B

    iget v5, p0, Lkl/h;->d:I

    mul-int/lit8 v5, v5, 0x3

    iget v6, p0, Lkl/h;->e:I

    mul-int/2addr v5, v6

    invoke-virtual {p0, v1, v5}, Lkl/h;->h([BI)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string p2, "failed while deserializing aux bits"

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, p3

    iget-object v1, v1, Lkl/q$a;->e:[B

    iget v5, p0, Lkl/h;->g:I

    invoke-static {p2, p4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lkl/h;->g:I

    add-int/2addr p4, v1

    iget v1, p0, Lkl/h;->i:I

    iget-object v5, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v5, v5, p3

    iget-object v5, v5, Lkl/q$a;->f:[B

    invoke-static {p2, p4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, v1

    iget v1, p0, Lkl/h;->d:I

    mul-int/lit8 v1, v1, 0x3

    iget v5, p0, Lkl/h;->e:I

    mul-int/2addr v1, v5

    iget-object v5, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v5, v5, p3

    iget-object v5, v5, Lkl/q$a;->f:[B

    invoke-virtual {p0, v5, v1}, Lkl/h;->h([BI)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object p1, Lkl/h;->w:Ljava/util/logging/Logger;

    const-string p2, "failed while deserializing msgs bits"

    goto/16 :goto_1

    :cond_6
    iget-object v1, p1, Lkl/q;->i:[Lkl/q$a;

    aget-object v1, v1, p3

    iget-object v1, v1, Lkl/q$a;->d:[B

    iget v5, p0, Lkl/h;->p:I

    invoke-static {p2, p4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lkl/h;->p:I

    add-int/2addr p4, v1

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_8
    return v4
.end method
