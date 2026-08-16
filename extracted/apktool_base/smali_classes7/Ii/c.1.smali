.class public LIi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;


# static fields
.field public static final v:[J

.field public static final w:[[B

.field public static x:I = 0x0

.field public static final y:I = 0x80


# instance fields
.field public a:I

.field public b:I

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:I

.field public l:Z

.field public m:[B

.field public n:I

.field public o:[J

.field public p:[J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public final u:LBi/o;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, LIi/c;->v:[J

    const/16 v0, 0xc

    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    new-array v3, v1, [B

    fill-array-data v3, :array_2

    new-array v4, v1, [B

    fill-array-data v4, :array_3

    new-array v5, v1, [B

    fill-array-data v5, :array_4

    new-array v6, v1, [B

    fill-array-data v6, :array_5

    new-array v7, v1, [B

    fill-array-data v7, :array_6

    new-array v8, v1, [B

    fill-array-data v8, :array_7

    new-array v9, v1, [B

    fill-array-data v9, :array_8

    new-array v10, v1, [B

    fill-array-data v10, :array_9

    new-array v11, v1, [B

    fill-array-data v11, :array_a

    new-array v12, v1, [B

    fill-array-data v12, :array_b

    new-array v13, v1, [B

    fill-array-data v13, :array_c

    filled-new-array/range {v2 .. v13}, [[B

    move-result-object v1

    sput-object v1, LIi/c;->w:[[B

    sput v0, LIi/c;->x:I

    return-void

    :array_0
    .array-data 8
        0x6a09e667f3bcc908L    # 6.344059688352415E202
        -0x4498517a7b3558c5L    # -1.5671250923562117E-22
        0x3c6ef372fe94f82bL    # 1.342284505169847E-17
        -0x5ab00ac5a0e2c90fL
        0x510e527fade682d1L    # 2.876275032471325E82
        -0x64fa9773d4c193e1L
        0x1f83d9abfb41bd6bL    # 7.229011495228878E-157
        0x5be0cd19137e2179L    # 3.816167663240759E134
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x8t
        0xct
        0x0t
        0x5t
        0x2t
        0xft
        0xdt
        0xat
        0xet
        0x3t
        0x6t
        0x7t
        0x1t
        0x9t
        0x4t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x9t
        0x3t
        0x1t
        0xdt
        0xct
        0xbt
        0xet
        0x2t
        0x6t
        0x5t
        0xat
        0x4t
        0x0t
        0xft
        0x8t
    .end array-data

    :array_5
    .array-data 1
        0x9t
        0x0t
        0x5t
        0x7t
        0x2t
        0x4t
        0xat
        0xft
        0xet
        0x1t
        0xbt
        0xct
        0x6t
        0x8t
        0x3t
        0xdt
    .end array-data

    :array_6
    .array-data 1
        0x2t
        0xct
        0x6t
        0xat
        0x0t
        0xbt
        0x8t
        0x3t
        0x4t
        0xdt
        0x7t
        0x5t
        0xft
        0xet
        0x1t
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0xct
        0x5t
        0x1t
        0xft
        0xet
        0xdt
        0x4t
        0xat
        0x0t
        0x7t
        0x6t
        0x3t
        0x9t
        0x2t
        0x8t
        0xbt
    .end array-data

    :array_8
    .array-data 1
        0xdt
        0xbt
        0x7t
        0xet
        0xct
        0x1t
        0x3t
        0x9t
        0x5t
        0x0t
        0xft
        0x4t
        0x8t
        0x6t
        0x2t
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x6t
        0xft
        0xet
        0x9t
        0xbt
        0x3t
        0x0t
        0x8t
        0xct
        0x2t
        0xdt
        0x7t
        0x1t
        0x4t
        0xat
        0x5t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x2t
        0x8t
        0x4t
        0x7t
        0x6t
        0x1t
        0x5t
        0xft
        0xbt
        0x9t
        0xet
        0x3t
        0xct
        0xdt
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_c
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x200

    .line 1
    sget-object v1, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0, v1}, LIi/c;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, v0}, LIi/c;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(ILBi/o;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, LIi/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, LIi/c;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/c;->c:[B

    iput-object v1, p0, LIi/c;->d:[B

    iput-object v1, p0, LIi/c;->e:[B

    const/4 v2, 0x1

    iput v2, p0, LIi/c;->f:I

    iput v2, p0, LIi/c;->g:I

    iput v0, p0, LIi/c;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LIi/c;->i:J

    iput v0, p0, LIi/c;->j:I

    iput v0, p0, LIi/c;->k:I

    iput-boolean v0, p0, LIi/c;->l:Z

    iput-object v1, p0, LIi/c;->m:[B

    iput v0, p0, LIi/c;->n:I

    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, LIi/c;->o:[J

    iput-object v1, p0, LIi/c;->p:[J

    iput-wide v2, p0, LIi/c;->q:J

    iput-wide v2, p0, LIi/c;->r:J

    iput-wide v2, p0, LIi/c;->s:J

    iput-wide v2, p0, LIi/c;->t:J

    iput-object p2, p0, LIi/c;->u:LBi/o;

    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    const/16 v1, 0x200

    if-gt p1, v1, :cond_0

    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, LIi/c;->m:[B

    iput v0, p0, LIi/c;->b:I

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, LIi/c;->a:I

    invoke-static {p0, p1, p2}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-direct {p0}, LIi/c;->k()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BLAKE2b digest bit length must be a multiple of 8 and not greater than 512"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LIi/c;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, LIi/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, LIi/c;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/c;->c:[B

    iput-object v1, p0, LIi/c;->d:[B

    iput-object v1, p0, LIi/c;->e:[B

    const/4 v2, 0x1

    iput v2, p0, LIi/c;->f:I

    iput v2, p0, LIi/c;->g:I

    iput v0, p0, LIi/c;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LIi/c;->i:J

    iput v0, p0, LIi/c;->j:I

    iput v0, p0, LIi/c;->k:I

    iput-boolean v0, p0, LIi/c;->l:Z

    iput-object v1, p0, LIi/c;->m:[B

    iput v0, p0, LIi/c;->n:I

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, LIi/c;->o:[J

    iput-object v1, p0, LIi/c;->p:[J

    iput-wide v2, p0, LIi/c;->q:J

    iput-wide v2, p0, LIi/c;->r:J

    iput-wide v2, p0, LIi/c;->s:J

    iput-wide v2, p0, LIi/c;->t:J

    iget v0, p1, LIi/c;->n:I

    iput v0, p0, LIi/c;->n:I

    iget-object v0, p1, LIi/c;->m:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/c;->m:[B

    iget v0, p1, LIi/c;->b:I

    iput v0, p0, LIi/c;->b:I

    iget-object v0, p1, LIi/c;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/c;->e:[B

    iget v0, p1, LIi/c;->a:I

    iput v0, p0, LIi/c;->a:I

    iget-object v0, p1, LIi/c;->p:[J

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t([J)[J

    move-result-object v0

    iput-object v0, p0, LIi/c;->p:[J

    iget-object v0, p1, LIi/c;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/c;->d:[B

    iget-object v0, p1, LIi/c;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/c;->c:[B

    iget-wide v0, p1, LIi/c;->q:J

    iput-wide v0, p0, LIi/c;->q:J

    iget-wide v0, p1, LIi/c;->r:J

    iput-wide v0, p0, LIi/c;->r:J

    iget-wide v0, p1, LIi/c;->s:J

    iput-wide v0, p0, LIi/c;->s:J

    iget-object p1, p1, LIi/c;->u:LBi/o;

    iput-object p1, p0, LIi/c;->u:LBi/o;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 5
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, v0}, LIi/c;-><init>([BLBi/o;)V

    return-void
.end method

.method public constructor <init>([BI[B[B)V
    .locals 6

    .line 6
    sget-object v5, LBi/o;->ANY:LBi/o;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LIi/c;-><init>([BI[B[BLBi/o;)V

    return-void
.end method

.method public constructor <init>([BI[B[BLBi/o;)V
    .locals 8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, LIi/c;->a:I

    const/4 v1, 0x0

    iput v1, p0, LIi/c;->b:I

    const/4 v2, 0x0

    iput-object v2, p0, LIi/c;->c:[B

    iput-object v2, p0, LIi/c;->d:[B

    iput-object v2, p0, LIi/c;->e:[B

    const/4 v3, 0x1

    iput v3, p0, LIi/c;->f:I

    iput v3, p0, LIi/c;->g:I

    iput v1, p0, LIi/c;->h:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, LIi/c;->i:J

    iput v1, p0, LIi/c;->j:I

    iput v1, p0, LIi/c;->k:I

    iput-boolean v1, p0, LIi/c;->l:Z

    iput v1, p0, LIi/c;->n:I

    const/16 v6, 0x10

    new-array v7, v6, [J

    iput-object v7, p0, LIi/c;->o:[J

    iput-object v2, p0, LIi/c;->p:[J

    iput-wide v4, p0, LIi/c;->q:J

    iput-wide v4, p0, LIi/c;->r:J

    iput-wide v4, p0, LIi/c;->s:J

    iput-wide v4, p0, LIi/c;->t:J

    iput-object p5, p0, LIi/c;->u:LBi/o;

    const/16 v2, 0x80

    new-array v4, v2, [B

    iput-object v4, p0, LIi/c;->m:[B

    if-lt p2, v3, :cond_6

    if-gt p2, v0, :cond_6

    iput p2, p0, LIi/c;->a:I

    if-eqz p3, :cond_1

    array-length v3, p3

    if-ne v3, v6, :cond_0

    new-array v3, v6, [B

    iput-object v3, p0, LIi/c;->c:[B

    array-length v4, p3

    invoke-static {p3, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "salt length must be exactly 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    array-length p3, p4

    if-ne p3, v6, :cond_2

    new-array p3, v6, [B

    iput-object p3, p0, LIi/c;->d:[B

    array-length v3, p4

    invoke-static {p4, v1, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "personalization length must be exactly 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    array-length p3, p1

    new-array p3, p3, [B

    iput-object p3, p0, LIi/c;->e:[B

    array-length p4, p1

    invoke-static {p1, v1, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p1

    if-gt p3, v0, :cond_4

    array-length p3, p1

    iput p3, p0, LIi/c;->b:I

    iget-object p3, p0, LIi/c;->m:[B

    array-length p4, p1

    invoke-static {p1, v1, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, LIi/c;->n:I

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys > 64 are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    mul-int/lit8 p2, p2, 0x8

    invoke-static {p0, p2, p5}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-direct {p0}, LIi/c;->k()V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid digest length (required: 1 - 64)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLBi/o;)V
    .locals 6

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, LIi/c;->a:I

    const/4 v1, 0x0

    iput v1, p0, LIi/c;->b:I

    const/4 v2, 0x0

    iput-object v2, p0, LIi/c;->c:[B

    iput-object v2, p0, LIi/c;->d:[B

    iput-object v2, p0, LIi/c;->e:[B

    const/4 v3, 0x1

    iput v3, p0, LIi/c;->f:I

    iput v3, p0, LIi/c;->g:I

    iput v1, p0, LIi/c;->h:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, LIi/c;->i:J

    iput v1, p0, LIi/c;->j:I

    iput v1, p0, LIi/c;->k:I

    iput-boolean v1, p0, LIi/c;->l:Z

    iput v1, p0, LIi/c;->n:I

    const/16 v5, 0x10

    new-array v5, v5, [J

    iput-object v5, p0, LIi/c;->o:[J

    iput-object v2, p0, LIi/c;->p:[J

    iput-wide v3, p0, LIi/c;->q:J

    iput-wide v3, p0, LIi/c;->r:J

    iput-wide v3, p0, LIi/c;->s:J

    iput-wide v3, p0, LIi/c;->t:J

    const/16 v2, 0x80

    new-array v3, v2, [B

    iput-object v3, p0, LIi/c;->m:[B

    if-eqz p1, :cond_1

    array-length v3, p1

    new-array v3, v3, [B

    iput-object v3, p0, LIi/c;->e:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    if-gt v3, v0, :cond_0

    array-length v3, p1

    iput v3, p0, LIi/c;->b:I

    iget-object v3, p0, LIi/c;->m:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, LIi/c;->n:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys > 64 are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, LIi/c;->u:LBi/o;

    iput v0, p0, LIi/c;->a:I

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0, p2}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-direct {p0}, LIi/c;->k()V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    iput p1, p0, LIi/c;->a:I

    const/4 p1, 0x0

    iput p1, p0, LIi/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, LIi/c;->c:[B

    iput-object v0, p0, LIi/c;->d:[B

    iput-object v0, p0, LIi/c;->e:[B

    const/4 v1, 0x1

    iput v1, p0, LIi/c;->f:I

    iput v1, p0, LIi/c;->g:I

    iput p1, p0, LIi/c;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LIi/c;->i:J

    iput p1, p0, LIi/c;->j:I

    iput p1, p0, LIi/c;->k:I

    iput-boolean p1, p0, LIi/c;->l:Z

    iput p1, p0, LIi/c;->n:I

    const/16 v4, 0x10

    new-array v5, v4, [J

    iput-object v5, p0, LIi/c;->o:[J

    iput-object v0, p0, LIi/c;->p:[J

    iput-wide v2, p0, LIi/c;->q:J

    iput-wide v2, p0, LIi/c;->r:J

    iput-wide v2, p0, LIi/c;->s:J

    iput-wide v2, p0, LIi/c;->t:J

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, LIi/c;->m:[B

    sget-object v0, LBi/o;->ANY:LBi/o;

    iput-object v0, p0, LIi/c;->u:LBi/o;

    aget-byte p1, p2, p1

    iput p1, p0, LIi/c;->a:I

    aget-byte p1, p2, v1

    iput p1, p0, LIi/c;->b:I

    const/4 p1, 0x2

    aget-byte p1, p2, p1

    iput p1, p0, LIi/c;->f:I

    const/4 p1, 0x3

    aget-byte p1, p2, p1

    iput p1, p0, LIi/c;->g:I

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p1

    iput p1, p0, LIi/c;->h:I

    iget-wide v0, p0, LIi/c;->i:J

    const/16 p1, 0x8

    invoke-static {p2, p1}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, LIi/c;->i:J

    aget-byte p1, p2, v4

    iput p1, p0, LIi/c;->j:I

    const/16 p1, 0x11

    aget-byte p1, p2, p1

    iput p1, p0, LIi/c;->k:I

    invoke-direct {p0}, LIi/c;->k()V

    return-void
.end method

.method private k()V
    .locals 10

    iget-object v0, p0, LIi/c;->p:[J

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v1, v0, [J

    iput-object v1, p0, LIi/c;->p:[J

    sget-object v2, LIi/c;->v:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget v6, p0, LIi/c;->a:I

    iget v7, p0, LIi/c;->b:I

    shl-int/2addr v7, v0

    or-int/2addr v6, v7

    iget v7, p0, LIi/c;->f:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, p0, LIi/c;->g:I

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    iget v8, p0, LIi/c;->h:I

    shl-int/lit8 v8, v8, 0x20

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-long v6, v6

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    iget-wide v7, p0, LIi/c;->i:J

    xor-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v4, 0x2

    aget-wide v5, v2, v4

    iget v7, p0, LIi/c;->j:I

    iget v8, p0, LIi/c;->k:I

    shl-int/2addr v8, v0

    or-int/2addr v7, v8

    int-to-long v7, v7

    xor-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v4, 0x3

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v4, 0x4

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v7, 0x5

    aget-wide v8, v2, v7

    aput-wide v8, v1, v7

    iget-object v8, p0, LIi/c;->c:[B

    if-eqz v8, :cond_0

    invoke-static {v8, v3}, Lorg/bouncycastle/util/p;->x([BI)J

    move-result-wide v8

    xor-long/2addr v5, v8

    aput-wide v5, v1, v4

    iget-object v1, p0, LIi/c;->p:[J

    aget-wide v4, v1, v7

    iget-object v6, p0, LIi/c;->c:[B

    invoke-static {v6, v0}, Lorg/bouncycastle/util/p;->x([BI)J

    move-result-wide v8

    xor-long/2addr v4, v8

    aput-wide v4, v1, v7

    :cond_0
    iget-object v1, p0, LIi/c;->p:[J

    const/4 v4, 0x6

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    const/4 v7, 0x7

    aget-wide v8, v2, v7

    aput-wide v8, v1, v7

    iget-object v2, p0, LIi/c;->d:[B

    if-eqz v2, :cond_1

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->x([BI)J

    move-result-wide v2

    xor-long/2addr v2, v5

    aput-wide v2, v1, v4

    iget-object v1, p0, LIi/c;->p:[J

    aget-wide v2, v1, v7

    iget-object v4, p0, LIi/c;->d:[B

    invoke-static {v4, v0}, Lorg/bouncycastle/util/p;->x([BI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v7

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(JJIIII)V
    .locals 5

    iget-object v0, p0, LIi/c;->o:[J

    aget-wide v1, v0, p5

    aget-wide v3, v0, p6

    add-long/2addr v1, v3

    add-long/2addr v1, p1

    aput-wide v1, v0, p5

    aget-wide p1, v0, p8

    xor-long/2addr p1, v1

    const/16 v1, 0x20

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide p1

    aput-wide p1, v0, p8

    iget-object p1, p0, LIi/c;->o:[J

    aget-wide v0, p1, p7

    aget-wide v2, p1, p8

    add-long/2addr v0, v2

    aput-wide v0, p1, p7

    aget-wide v2, p1, p6

    xor-long/2addr v0, v2

    const/16 p2, 0x18

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide v0

    aput-wide v0, p1, p6

    iget-object p1, p0, LIi/c;->o:[J

    aget-wide v0, p1, p5

    aget-wide v2, p1, p6

    add-long/2addr v0, v2

    add-long/2addr v0, p3

    aput-wide v0, p1, p5

    aget-wide p2, p1, p8

    xor-long/2addr p2, v0

    const/16 p4, 0x10

    invoke-static {p2, p3, p4}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide p2

    aput-wide p2, p1, p8

    iget-object p1, p0, LIi/c;->o:[J

    aget-wide p2, p1, p7

    aget-wide p4, p1, p8

    add-long/2addr p2, p4

    aput-wide p2, p1, p7

    aget-wide p4, p1, p6

    xor-long/2addr p2, p4

    const/16 p4, 0x3f

    invoke-static {p2, p3, p4}, Lorg/bouncycastle/util/m;->h(JI)J

    move-result-wide p2

    aput-wide p2, p1, p6

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2b"

    return-object v0
.end method

.method public c([BI)I
    .locals 9

    array-length v0, p1

    iget v1, p0, LIi/c;->a:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LIi/c;->s:J

    iget-boolean v2, p0, LIi/c;->l:Z

    if-eqz v2, :cond_0

    iput-wide v0, p0, LIi/c;->t:J

    :cond_0
    iget-wide v0, p0, LIi/c;->q:J

    iget v2, p0, LIi/c;->n:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, LIi/c;->q:J

    const-wide/16 v3, 0x0

    if-lez v2, :cond_1

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-wide v0, p0, LIi/c;->r:J

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    iput-wide v0, p0, LIi/c;->r:J

    :cond_1
    iget-object v0, p0, LIi/c;->m:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LIi/c;->j([BI)V

    iget-object v0, p0, LIi/c;->m:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LIi/c;->o:[J

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/a;->l0([JJ)V

    iget v0, p0, LIi/c;->a:I

    ushr-int/lit8 v2, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    iget-object v5, p0, LIi/c;->p:[J

    invoke-static {v5, v1, v2, p1, p2}, Lorg/bouncycastle/util/p;->K([JII[BI)V

    if-lez v0, :cond_2

    const/16 v5, 0x8

    new-array v5, v5, [B

    iget-object v6, p0, LIi/c;->p:[J

    aget-wide v7, v6, v2

    invoke-static {v7, v8, v5, v1}, Lorg/bouncycastle/util/p;->J(J[BI)V

    iget v2, p0, LIi/c;->a:I

    add-int/2addr p2, v2

    sub-int/2addr p2, v0

    invoke-static {v5, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, LIi/c;->p:[J

    invoke-static {p1, v3, v4}, Lorg/bouncycastle/util/a;->l0([JJ)V

    invoke-virtual {p0}, LIi/c;->reset()V

    iget p1, p0, LIi/c;->a:I

    return p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, LIi/c;->e:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LIi/c;->m:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/c;->a:I

    return v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LIi/c;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public final j([BI)V
    .locals 13

    invoke-virtual {p0}, LIi/c;->l()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/p;->y([BI[J)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    sget v1, LIi/c;->x:I

    if-ge p2, v1, :cond_0

    sget-object v1, LIi/c;->w:[[B

    aget-object v2, v1, p2

    aget-byte v3, v2, p1

    aget-wide v5, v0, v3

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aget-wide v7, v0, v2

    const/16 v11, 0x8

    const/16 v12, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, LIi/c;->a(JJIIII)V

    aget-object v2, v1, p2

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    aget-wide v5, v0, v3

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    aget-wide v7, v0, v2

    const/16 v11, 0x9

    const/16 v12, 0xd

    const/4 v9, 0x1

    const/4 v10, 0x5

    invoke-virtual/range {v4 .. v12}, LIi/c;->a(JJIIII)V

    aget-object v2, v1, p2

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    aget-wide v5, v0, v3

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    aget-wide v7, v0, v2

    const/16 v11, 0xa

    const/16 v12, 0xe

    const/4 v9, 0x2

    const/4 v10, 0x6

    invoke-virtual/range {v4 .. v12}, LIi/c;->a(JJIIII)V

    aget-object v2, v1, p2

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    aget-wide v5, v0, v3

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    aget-wide v7, v0, v2

    const/16 v11, 0xb

    const/16 v12, 0xf

    const/4 v9, 0x3

    const/4 v10, 0x7

    invoke-virtual/range {v4 .. v12}, LIi/c;->a(JJIIII)V

    aget-object v2, v1, p2

    const/16 v3, 0x8

    aget-byte v3, v2, v3

    aget-wide v5, v0, v3

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    aget-wide v7, v0, v2

    const/16 v11, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual/range {v4 .. v12}, LIi/c;->a(JJIIII)V

    aget-object v2, v1, p2

    const/16 v3, 0xa

    aget-byte v3, v2, v3

    aget-wide v5, v0, v3

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    aget-wide v7, v0, v2

    const/16 v11, 0xb

    const/16 v12, 0xc

    const/4 v9, 0x1

    const/4 v10, 0x6

    invoke-virtual/range {v4 .. v12}, LIi/c;->a(JJIIII)V

    aget-object v2, v1, p2

    const/16 v3, 0xc

    aget-byte v3, v2, v3

    aget-wide v5, v0, v3

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    aget-wide v7, v0, v2

    const/16 v11, 0x8

    const/16 v12, 0xd

    const/4 v9, 0x2

    const/4 v10, 0x7

    invoke-virtual/range {v4 .. v12}, LIi/c;->a(JJIIII)V

    aget-object v1, v1, p2

    const/16 v2, 0xe

    aget-byte v2, v1, v2

    aget-wide v4, v0, v2

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    aget-wide v6, v0, v1

    const/16 v10, 0x9

    const/16 v11, 0xe

    const/4 v8, 0x3

    const/4 v9, 0x4

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, LIi/c;->a(JJIIII)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_0
    :goto_1
    iget-object p2, p0, LIi/c;->p:[J

    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget-wide v0, p2, p1

    iget-object v2, p0, LIi/c;->o:[J

    aget-wide v3, v2, p1

    xor-long/2addr v0, v3

    add-int/lit8 v3, p1, 0x8

    aget-wide v3, v2, v3

    xor-long/2addr v0, v3

    aput-wide v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 6

    iget-object v0, p0, LIi/c;->p:[J

    iget-object v1, p0, LIi/c;->o:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, LIi/c;->v:[J

    iget-object v1, p0, LIi/c;->o:[J

    iget-object v2, p0, LIi/c;->p:[J

    array-length v2, v2

    const/4 v4, 0x4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LIi/c;->o:[J

    iget-wide v2, p0, LIi/c;->q:J

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xc

    aput-wide v2, v1, v4

    iget-wide v2, p0, LIi/c;->r:J

    const/4 v4, 0x5

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xd

    aput-wide v2, v1, v4

    iget-wide v2, p0, LIi/c;->s:J

    const/4 v4, 0x6

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v4, 0xe

    aput-wide v2, v1, v4

    iget-wide v2, p0, LIi/c;->t:J

    const/4 v4, 0x7

    aget-wide v4, v0, v4

    xor-long/2addr v2, v4

    const/16 v0, 0xf

    aput-wide v2, v1, v0

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LIi/c;->l:Z

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, LIi/c;->n:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LIi/c;->s:J

    iput-wide v1, p0, LIi/c;->t:J

    iput-wide v1, p0, LIi/c;->q:J

    iput-wide v1, p0, LIi/c;->r:J

    iput-boolean v0, p0, LIi/c;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, LIi/c;->p:[J

    iget-object v1, p0, LIi/c;->m:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v1, p0, LIi/c;->e:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, LIi/c;->m:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x80

    iput v0, p0, LIi/c;->n:I

    :cond_0
    invoke-direct {p0}, LIi/c;->k()V

    return-void
.end method

.method public update(B)V
    .locals 5

    .line 1
    iget v0, p0, LIi/c;->n:I

    rsub-int v1, v0, 0x80

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-wide v0, p0, LIi/c;->q:J

    const-wide/16 v3, 0x80

    add-long/2addr v0, v3

    iput-wide v0, p0, LIi/c;->q:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-wide v0, p0, LIi/c;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, LIi/c;->r:J

    :cond_0
    iget-object v0, p0, LIi/c;->m:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LIi/c;->j([BI)V

    iget-object v0, p0, LIi/c;->m:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LIi/c;->m:[B

    aput-byte p1, v0, v1

    iput v2, p0, LIi/c;->n:I

    return-void

    :cond_1
    iget-object v1, p0, LIi/c;->m:[B

    aput-byte p1, v1, v0

    add-int/2addr v0, v2

    iput v0, p0, LIi/c;->n:I

    return-void
.end method

.method public update([BII)V
    .locals 11

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget v0, p0, LIi/c;->n:I

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x80

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    rsub-int v8, v0, 0x80

    if-ge v8, p3, :cond_2

    iget-object v9, p0, LIi/c;->m:[B

    invoke-static {p1, p2, v9, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v9, p0, LIi/c;->q:J

    add-long/2addr v9, v5

    iput-wide v9, p0, LIi/c;->q:J

    cmp-long v0, v9, v3

    if-nez v0, :cond_1

    iget-wide v9, p0, LIi/c;->r:J

    add-long/2addr v9, v1

    iput-wide v9, p0, LIi/c;->r:J

    :cond_1
    iget-object v0, p0, LIi/c;->m:[B

    invoke-virtual {p0, v0, v7}, LIi/c;->j([BI)V

    iput v7, p0, LIi/c;->n:I

    iget-object v0, p0, LIi/c;->m:[B

    invoke-static {v0, v7}, Lorg/bouncycastle/util/a;->e0([BB)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, LIi/c;->m:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, LIi/c;->n:I

    add-int/2addr p1, p3

    iput p1, p0, LIi/c;->n:I

    return-void

    :cond_3
    move v8, v7

    :goto_1
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x80

    add-int/2addr p2, v8

    :goto_2
    if-ge p2, v0, :cond_5

    iget-wide v8, p0, LIi/c;->q:J

    add-long/2addr v8, v5

    iput-wide v8, p0, LIi/c;->q:J

    cmp-long v8, v8, v3

    if-nez v8, :cond_4

    iget-wide v8, p0, LIi/c;->r:J

    add-long/2addr v8, v1

    iput-wide v8, p0, LIi/c;->r:J

    :cond_4
    invoke-virtual {p0, p1, p2}, LIi/c;->j([BI)V

    add-int/lit16 p2, p2, 0x80

    goto :goto_2

    :cond_5
    iget-object v0, p0, LIi/c;->m:[B

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method
