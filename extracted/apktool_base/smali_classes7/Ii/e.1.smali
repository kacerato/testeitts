.class public LIi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;


# static fields
.field public static final v:[I

.field public static final w:[[B

.field public static final x:I = 0xa

.field public static final y:I = 0x40


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

.field public o:[I

.field public p:[I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:LBi/o;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LIi/e;->v:[I

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    new-array v2, v0, [B

    fill-array-data v2, :array_2

    new-array v3, v0, [B

    fill-array-data v3, :array_3

    new-array v4, v0, [B

    fill-array-data v4, :array_4

    new-array v5, v0, [B

    fill-array-data v5, :array_5

    new-array v6, v0, [B

    fill-array-data v6, :array_6

    new-array v7, v0, [B

    fill-array-data v7, :array_7

    new-array v8, v0, [B

    fill-array-data v8, :array_8

    new-array v9, v0, [B

    fill-array-data v9, :array_9

    new-array v10, v0, [B

    fill-array-data v10, :array_a

    filled-new-array/range {v1 .. v10}, [[B

    move-result-object v0

    sput-object v0, LIi/e;->w:[[B

    return-void

    :array_0
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
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
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x100

    .line 1
    sget-object v1, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0, v1}, LIi/e;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, v0}, LIi/e;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 6

    .line 3
    sget-object v5, LBi/o;->ANY:LBi/o;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, LIi/e;-><init>(IIJLBi/o;)V

    return-void
.end method

.method public constructor <init>(IIJLBi/o;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LIi/e;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/e;->c:[B

    iput-object v1, p0, LIi/e;->d:[B

    iput-object v1, p0, LIi/e;->e:[B

    iput-boolean v0, p0, LIi/e;->l:Z

    iput-object v1, p0, LIi/e;->m:[B

    iput v0, p0, LIi/e;->n:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, LIi/e;->o:[I

    iput-object v1, p0, LIi/e;->p:[I

    iput v0, p0, LIi/e;->q:I

    iput v0, p0, LIi/e;->r:I

    iput v0, p0, LIi/e;->s:I

    iput v0, p0, LIi/e;->t:I

    iput p1, p0, LIi/e;->a:I

    iput-wide p3, p0, LIi/e;->i:J

    iput v0, p0, LIi/e;->f:I

    iput v0, p0, LIi/e;->g:I

    iput p2, p0, LIi/e;->h:I

    iput p2, p0, LIi/e;->k:I

    iput v0, p0, LIi/e;->j:I

    iput-object p5, p0, LIi/e;->u:LBi/o;

    mul-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1, p5}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, v1, v1, v1}, LIi/e;->k([B[B[B)V

    return-void
.end method

.method public constructor <init>(ILBi/o;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, LIi/e;->a:I

    const/4 v0, 0x0

    iput v0, p0, LIi/e;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/e;->c:[B

    iput-object v1, p0, LIi/e;->d:[B

    iput-object v1, p0, LIi/e;->e:[B

    const/4 v2, 0x1

    iput v2, p0, LIi/e;->f:I

    iput v2, p0, LIi/e;->g:I

    iput v0, p0, LIi/e;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LIi/e;->i:J

    iput v0, p0, LIi/e;->j:I

    iput v0, p0, LIi/e;->k:I

    iput-boolean v0, p0, LIi/e;->l:Z

    iput-object v1, p0, LIi/e;->m:[B

    iput v0, p0, LIi/e;->n:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, LIi/e;->o:[I

    iput-object v1, p0, LIi/e;->p:[I

    iput v0, p0, LIi/e;->q:I

    iput v0, p0, LIi/e;->r:I

    iput v0, p0, LIi/e;->s:I

    iput v0, p0, LIi/e;->t:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, LIi/e;->a:I

    iput-object p2, p0, LIi/e;->u:LBi/o;

    invoke-static {p0, p1, p2}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, v1, v1, v1}, LIi/e;->k([B[B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BLAKE2s digest bit length must be a multiple of 8 and not greater than 256"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[B[B[BJLBi/o;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LIi/e;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/e;->c:[B

    iput-object v1, p0, LIi/e;->d:[B

    iput-object v1, p0, LIi/e;->e:[B

    const/4 v2, 0x1

    iput v2, p0, LIi/e;->f:I

    iput v2, p0, LIi/e;->g:I

    iput v0, p0, LIi/e;->h:I

    iput v0, p0, LIi/e;->j:I

    iput v0, p0, LIi/e;->k:I

    iput-boolean v0, p0, LIi/e;->l:Z

    iput-object v1, p0, LIi/e;->m:[B

    iput v0, p0, LIi/e;->n:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, LIi/e;->o:[I

    iput-object v1, p0, LIi/e;->p:[I

    iput v0, p0, LIi/e;->q:I

    iput v0, p0, LIi/e;->r:I

    iput v0, p0, LIi/e;->s:I

    iput v0, p0, LIi/e;->t:I

    iput p1, p0, LIi/e;->a:I

    iput-wide p5, p0, LIi/e;->i:J

    iput-object p7, p0, LIi/e;->u:LBi/o;

    mul-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1, p7}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p3, p4, p2}, LIi/e;->k([B[B[B)V

    return-void
.end method

.method public constructor <init>(LIi/e;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, LIi/e;->a:I

    const/4 v0, 0x0

    iput v0, p0, LIi/e;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/e;->c:[B

    iput-object v1, p0, LIi/e;->d:[B

    iput-object v1, p0, LIi/e;->e:[B

    const/4 v2, 0x1

    iput v2, p0, LIi/e;->f:I

    iput v2, p0, LIi/e;->g:I

    iput v0, p0, LIi/e;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LIi/e;->i:J

    iput v0, p0, LIi/e;->j:I

    iput v0, p0, LIi/e;->k:I

    iput-boolean v0, p0, LIi/e;->l:Z

    iput-object v1, p0, LIi/e;->m:[B

    iput v0, p0, LIi/e;->n:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, LIi/e;->o:[I

    iput-object v1, p0, LIi/e;->p:[I

    iput v0, p0, LIi/e;->q:I

    iput v0, p0, LIi/e;->r:I

    iput v0, p0, LIi/e;->s:I

    iput v0, p0, LIi/e;->t:I

    iget v0, p1, LIi/e;->n:I

    iput v0, p0, LIi/e;->n:I

    iget-object v0, p1, LIi/e;->m:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/e;->m:[B

    iget v0, p1, LIi/e;->b:I

    iput v0, p0, LIi/e;->b:I

    iget-object v0, p1, LIi/e;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/e;->e:[B

    iget v0, p1, LIi/e;->a:I

    iput v0, p0, LIi/e;->a:I

    iget-object v0, p1, LIi/e;->o:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->s([I)[I

    move-result-object v0

    iput-object v0, p0, LIi/e;->o:[I

    iget-object v0, p1, LIi/e;->p:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->s([I)[I

    move-result-object v0

    iput-object v0, p0, LIi/e;->p:[I

    iget v0, p1, LIi/e;->q:I

    iput v0, p0, LIi/e;->q:I

    iget v0, p1, LIi/e;->r:I

    iput v0, p0, LIi/e;->r:I

    iget v0, p1, LIi/e;->s:I

    iput v0, p0, LIi/e;->s:I

    iget-object v0, p1, LIi/e;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/e;->c:[B

    iget-object v0, p1, LIi/e;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/e;->d:[B

    iget v0, p1, LIi/e;->f:I

    iput v0, p0, LIi/e;->f:I

    iget v0, p1, LIi/e;->g:I

    iput v0, p0, LIi/e;->g:I

    iget v0, p1, LIi/e;->h:I

    iput v0, p0, LIi/e;->h:I

    iget-wide v0, p1, LIi/e;->i:J

    iput-wide v0, p0, LIi/e;->i:J

    iget v0, p1, LIi/e;->j:I

    iput v0, p0, LIi/e;->j:I

    iget v0, p1, LIi/e;->k:I

    iput v0, p0, LIi/e;->k:I

    iget-object p1, p1, LIi/e;->u:LBi/o;

    iput-object p1, p0, LIi/e;->u:LBi/o;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 8
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, v0}, LIi/e;-><init>([BLBi/o;)V

    return-void
.end method

.method public constructor <init>([BI[B[B)V
    .locals 6

    .line 9
    sget-object v5, LBi/o;->ANY:LBi/o;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LIi/e;-><init>([BI[B[BLBi/o;)V

    return-void
.end method

.method public constructor <init>([BI[B[BLBi/o;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, LIi/e;->a:I

    const/4 v1, 0x0

    iput v1, p0, LIi/e;->b:I

    const/4 v2, 0x0

    iput-object v2, p0, LIi/e;->c:[B

    iput-object v2, p0, LIi/e;->d:[B

    iput-object v2, p0, LIi/e;->e:[B

    const/4 v3, 0x1

    iput v3, p0, LIi/e;->f:I

    iput v3, p0, LIi/e;->g:I

    iput v1, p0, LIi/e;->h:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, LIi/e;->i:J

    iput v1, p0, LIi/e;->j:I

    iput v1, p0, LIi/e;->k:I

    iput-boolean v1, p0, LIi/e;->l:Z

    iput-object v2, p0, LIi/e;->m:[B

    iput v1, p0, LIi/e;->n:I

    const/16 v4, 0x10

    new-array v4, v4, [I

    iput-object v4, p0, LIi/e;->o:[I

    iput-object v2, p0, LIi/e;->p:[I

    iput v1, p0, LIi/e;->q:I

    iput v1, p0, LIi/e;->r:I

    iput v1, p0, LIi/e;->s:I

    iput v1, p0, LIi/e;->t:I

    if-lt p2, v3, :cond_0

    if-gt p2, v0, :cond_0

    iput p2, p0, LIi/e;->a:I

    iput-object p5, p0, LIi/e;->u:LBi/o;

    mul-int/lit8 p2, p2, 0x8

    invoke-static {p0, p2, p5}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p2

    invoke-static {p2}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p3, p4, p1}, LIi/e;->k([B[B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid digest length (required: 1 - 32)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLBi/o;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, LIi/e;->a:I

    const/4 v0, 0x0

    iput v0, p0, LIi/e;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/e;->c:[B

    iput-object v1, p0, LIi/e;->d:[B

    iput-object v1, p0, LIi/e;->e:[B

    const/4 v2, 0x1

    iput v2, p0, LIi/e;->f:I

    iput v2, p0, LIi/e;->g:I

    iput v0, p0, LIi/e;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LIi/e;->i:J

    iput v0, p0, LIi/e;->j:I

    iput v0, p0, LIi/e;->k:I

    iput-boolean v0, p0, LIi/e;->l:Z

    iput-object v1, p0, LIi/e;->m:[B

    iput v0, p0, LIi/e;->n:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, LIi/e;->o:[I

    iput-object v1, p0, LIi/e;->p:[I

    iput v0, p0, LIi/e;->q:I

    iput v0, p0, LIi/e;->r:I

    iput v0, p0, LIi/e;->s:I

    iput v0, p0, LIi/e;->t:I

    iput-object p2, p0, LIi/e;->u:LBi/o;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0, p2}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p2

    invoke-static {p2}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, v1, v1, p1}, LIi/e;->k([B[B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 7

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, LIi/e;->a:I

    const/4 v0, 0x0

    iput v0, p0, LIi/e;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, LIi/e;->c:[B

    iput-object v1, p0, LIi/e;->d:[B

    iput-object v1, p0, LIi/e;->e:[B

    const/4 v2, 0x1

    iput v2, p0, LIi/e;->f:I

    iput v2, p0, LIi/e;->g:I

    iput v0, p0, LIi/e;->h:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, LIi/e;->i:J

    iput v0, p0, LIi/e;->j:I

    iput v0, p0, LIi/e;->k:I

    iput-boolean v0, p0, LIi/e;->l:Z

    iput-object v1, p0, LIi/e;->m:[B

    iput v0, p0, LIi/e;->n:I

    const/16 v3, 0x10

    new-array v4, v3, [I

    iput-object v4, p0, LIi/e;->o:[I

    iput-object v1, p0, LIi/e;->p:[I

    iput v0, p0, LIi/e;->q:I

    iput v0, p0, LIi/e;->r:I

    iput v0, p0, LIi/e;->s:I

    iput v0, p0, LIi/e;->t:I

    sget-object v1, LBi/o;->ANY:LBi/o;

    iput-object v1, p0, LIi/e;->u:LBi/o;

    aget-byte v1, p2, v0

    iput v1, p0, LIi/e;->a:I

    aget-byte v1, p2, v2

    iput v1, p0, LIi/e;->b:I

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    iput v1, p0, LIi/e;->f:I

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    iput v1, p0, LIi/e;->g:I

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v1

    iput v1, p0, LIi/e;->h:I

    iget-wide v1, p0, LIi/e;->i:J

    const/16 v4, 0x8

    invoke-static {p2, v4}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v5

    int-to-long v5, v5

    or-long/2addr v1, v5

    iput-wide v1, p0, LIi/e;->i:J

    const/16 v1, 0xe

    aget-byte v1, p2, v1

    iput v1, p0, LIi/e;->j:I

    const/16 v1, 0xf

    aget-byte v1, p2, v1

    iput v1, p0, LIi/e;->k:I

    new-array v1, v4, [B

    new-array v2, v4, [B

    invoke-static {p2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x18

    invoke-static {p2, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1, v2, p1}, LIi/e;->k([B[B[B)V

    return-void
.end method

.method private j([BI)V
    .locals 12

    invoke-direct {p0}, LIi/e;->l()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/p;->s([BI[I)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    sget-object v2, LIi/e;->w:[[B

    aget-object v3, v2, p2

    aget-byte v4, v3, p1

    aget v6, v0, v4

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    aget v7, v0, v3

    const/16 v10, 0x8

    const/16 v11, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, LIi/e;->a(IIIIII)V

    aget-object v3, v2, p2

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    aget v6, v0, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    aget v7, v0, v3

    const/16 v10, 0x9

    const/16 v11, 0xd

    const/4 v8, 0x1

    const/4 v9, 0x5

    invoke-virtual/range {v5 .. v11}, LIi/e;->a(IIIIII)V

    aget-object v3, v2, p2

    const/4 v4, 0x4

    aget-byte v4, v3, v4

    aget v6, v0, v4

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    aget v7, v0, v3

    const/16 v10, 0xa

    const/16 v11, 0xe

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-virtual/range {v5 .. v11}, LIi/e;->a(IIIIII)V

    aget-object v3, v2, p2

    const/4 v4, 0x6

    aget-byte v4, v3, v4

    aget v6, v0, v4

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    aget v7, v0, v3

    const/16 v10, 0xb

    const/16 v11, 0xf

    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-virtual/range {v5 .. v11}, LIi/e;->a(IIIIII)V

    aget-object v3, v2, p2

    const/16 v4, 0x8

    aget-byte v4, v3, v4

    aget v6, v0, v4

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    aget v7, v0, v3

    const/16 v10, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual/range {v5 .. v11}, LIi/e;->a(IIIIII)V

    aget-object v3, v2, p2

    aget-byte v1, v3, v1

    aget v5, v0, v1

    const/16 v1, 0xb

    aget-byte v1, v3, v1

    aget v6, v0, v1

    const/16 v9, 0xb

    const/16 v10, 0xc

    const/4 v7, 0x1

    const/4 v8, 0x6

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, LIi/e;->a(IIIIII)V

    aget-object v1, v2, p2

    const/16 v3, 0xc

    aget-byte v3, v1, v3

    aget v5, v0, v3

    const/16 v3, 0xd

    aget-byte v1, v1, v3

    aget v6, v0, v1

    const/16 v9, 0x8

    const/16 v10, 0xd

    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-virtual/range {v4 .. v10}, LIi/e;->a(IIIIII)V

    aget-object v1, v2, p2

    const/16 v2, 0xe

    aget-byte v2, v1, v2

    aget v4, v0, v2

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    aget v5, v0, v1

    const/16 v8, 0x9

    const/16 v9, 0xe

    const/4 v6, 0x3

    const/4 v7, 0x4

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, LIi/e;->a(IIIIII)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_0
    :goto_1
    iget-object p2, p0, LIi/e;->p:[I

    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget v0, p2, p1

    iget-object v1, p0, LIi/e;->o:[I

    aget v2, v1, p1

    xor-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private l()V
    .locals 5

    iget-object v0, p0, LIi/e;->p:[I

    iget-object v1, p0, LIi/e;->o:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, LIi/e;->v:[I

    iget-object v1, p0, LIi/e;->o:[I

    iget-object v2, p0, LIi/e;->p:[I

    array-length v2, v2

    const/4 v4, 0x4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LIi/e;->o:[I

    iget v2, p0, LIi/e;->q:I

    aget v3, v0, v4

    xor-int/2addr v2, v3

    const/16 v3, 0xc

    aput v2, v1, v3

    iget v2, p0, LIi/e;->r:I

    const/4 v3, 0x5

    aget v3, v0, v3

    xor-int/2addr v2, v3

    const/16 v3, 0xd

    aput v2, v1, v3

    iget v2, p0, LIi/e;->s:I

    const/4 v3, 0x6

    aget v3, v0, v3

    xor-int/2addr v2, v3

    const/16 v3, 0xe

    aput v2, v1, v3

    iget v2, p0, LIi/e;->t:I

    const/4 v3, 0x7

    aget v0, v0, v3

    xor-int/2addr v0, v2

    const/16 v2, 0xf

    aput v0, v1, v2

    return-void
.end method


# virtual methods
.method public final a(IIIIII)V
    .locals 3

    iget-object v0, p0, LIi/e;->o:[I

    aget v1, v0, p3

    aget v2, v0, p4

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aput v1, v0, p3

    aget p1, v0, p6

    xor-int/2addr p1, v1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lorg/bouncycastle/util/k;->i(II)I

    move-result p1

    aput p1, v0, p6

    iget-object p1, p0, LIi/e;->o:[I

    aget v0, p1, p5

    aget v1, p1, p6

    add-int/2addr v0, v1

    aput v0, p1, p5

    aget v1, p1, p4

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, LIi/e;->o:[I

    aget v0, p1, p3

    aget v1, p1, p4

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    aput v0, p1, p3

    aget p2, p1, p6

    xor-int/2addr p2, v0

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lorg/bouncycastle/util/k;->i(II)I

    move-result p2

    aput p2, p1, p6

    iget-object p1, p0, LIi/e;->o:[I

    aget p2, p1, p5

    aget p3, p1, p6

    add-int/2addr p2, p3

    aput p2, p1, p5

    aget p3, p1, p4

    xor-int/2addr p2, p3

    const/4 p3, 0x7

    invoke-static {p2, p3}, Lorg/bouncycastle/util/k;->i(II)I

    move-result p2

    aput p2, p1, p4

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2s"

    return-object v0
.end method

.method public c([BI)I
    .locals 5

    array-length v0, p1

    iget v1, p0, LIi/e;->a:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    const/4 v0, -0x1

    iput v0, p0, LIi/e;->s:I

    iget-boolean v1, p0, LIi/e;->l:Z

    if-eqz v1, :cond_0

    iput v0, p0, LIi/e;->t:I

    :cond_0
    iget v0, p0, LIi/e;->q:I

    iget v1, p0, LIi/e;->n:I

    add-int/2addr v0, v1

    iput v0, p0, LIi/e;->q:I

    if-gez v0, :cond_1

    neg-int v0, v0

    if-le v1, v0, :cond_1

    iget v0, p0, LIi/e;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LIi/e;->r:I

    :cond_1
    iget-object v0, p0, LIi/e;->m:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LIi/e;->j([BI)V

    iget-object v0, p0, LIi/e;->m:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LIi/e;->o:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->i0([II)V

    iget v0, p0, LIi/e;->a:I

    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    iget-object v3, p0, LIi/e;->p:[I

    invoke-static {v3, v1, v2, p1, p2}, Lorg/bouncycastle/util/p;->n([III[BI)V

    if-lez v0, :cond_2

    const/4 v3, 0x4

    new-array v3, v3, [B

    iget-object v4, p0, LIi/e;->p:[I

    aget v2, v4, v2

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/util/p;->m(I[BI)V

    iget v2, p0, LIi/e;->a:I

    add-int/2addr p2, v2

    sub-int/2addr p2, v0

    invoke-static {v3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, LIi/e;->p:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->i0([II)V

    invoke-virtual {p0}, LIi/e;->reset()V

    iget p1, p0, LIi/e;->a:I

    return p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, LIi/e;->e:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LIi/e;->m:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/e;->a:I

    return v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LIi/e;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public final k([B[B[B)V
    .locals 8

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, LIi/e;->m:[B

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    array-length v3, p3

    iput v3, p0, LIi/e;->b:I

    if-gt v3, v1, :cond_0

    new-array v4, v3, [B

    iput-object v4, p0, LIi/e;->e:[B

    invoke-static {p3, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LIi/e;->m:[B

    iget v4, p0, LIi/e;->b:I

    invoke-static {p3, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, LIi/e;->n:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys > 32 bytes are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p3, p0, LIi/e;->p:[I

    if-nez p3, :cond_5

    const/16 p3, 0x8

    new-array v0, p3, [I

    iput-object v0, p0, LIi/e;->p:[I

    sget-object v3, LIi/e;->v:[I

    aget v4, v3, v2

    iget v5, p0, LIi/e;->a:I

    iget v6, p0, LIi/e;->b:I

    shl-int/2addr v6, p3

    or-int/2addr v5, v6

    iget v6, p0, LIi/e;->f:I

    shl-int/lit8 v6, v6, 0x10

    iget v7, p0, LIi/e;->g:I

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v0, v2

    const/4 v4, 0x1

    aget v5, v3, v4

    iget v6, p0, LIi/e;->h:I

    xor-int/2addr v5, v6

    aput v5, v0, v4

    iget-wide v4, p0, LIi/e;->i:J

    shr-long v6, v4, v1

    long-to-int v1, v6

    long-to-int v4, v4

    const/4 v5, 0x2

    aget v6, v3, v5

    xor-int/2addr v4, v6

    aput v4, v0, v5

    const/4 v4, 0x3

    aget v5, v3, v4

    iget v6, p0, LIi/e;->j:I

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    iget v6, p0, LIi/e;->k:I

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v1, v6

    xor-int/2addr v1, v5

    aput v1, v0, v4

    const/4 v1, 0x4

    aget v4, v3, v1

    aput v4, v0, v1

    const/4 v4, 0x5

    aget v5, v3, v4

    aput v5, v0, v4

    if-eqz p1, :cond_3

    array-length v0, p1

    if-ne v0, p3, :cond_2

    new-array v0, p3, [B

    iput-object v0, p0, LIi/e;->c:[B

    array-length v5, p1

    invoke-static {p1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/e;->p:[I

    aget v5, v0, v1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v6

    xor-int/2addr v5, v6

    aput v5, v0, v1

    iget-object v0, p0, LIi/e;->p:[I

    aget v5, v0, v4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p1

    xor-int/2addr p1, v5

    aput p1, v0, v4

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Salt length must be exactly 8 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, LIi/e;->p:[I

    const/4 v0, 0x6

    aget v4, v3, v0

    aput v4, p1, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    aput v3, p1, v4

    if-eqz p2, :cond_5

    array-length p1, p2

    if-ne p1, p3, :cond_4

    new-array p1, p3, [B

    iput-object p1, p0, LIi/e;->d:[B

    array-length p3, p2

    invoke-static {p2, v2, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LIi/e;->p:[I

    aget p3, p1, v0

    invoke-static {p2, v2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v2

    xor-int/2addr p3, v2

    aput p3, p1, v0

    iget-object p1, p0, LIi/e;->p:[I

    aget p3, p1, v4

    invoke-static {p2, v1}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p2

    xor-int/2addr p2, p3

    aput p2, p1, v4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Personalization length must be exactly 8 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LIi/e;->l:Z

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, LIi/e;->n:I

    iput v0, p0, LIi/e;->s:I

    iput v0, p0, LIi/e;->t:I

    iput v0, p0, LIi/e;->q:I

    iput v0, p0, LIi/e;->r:I

    iput-boolean v0, p0, LIi/e;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, LIi/e;->p:[I

    iget-object v1, p0, LIi/e;->m:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v1, p0, LIi/e;->e:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, LIi/e;->m:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x40

    iput v0, p0, LIi/e;->n:I

    :cond_0
    iget-object v0, p0, LIi/e;->c:[B

    iget-object v1, p0, LIi/e;->d:[B

    iget-object v2, p0, LIi/e;->e:[B

    invoke-virtual {p0, v0, v1, v2}, LIi/e;->k([B[B[B)V

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget v0, p0, LIi/e;->n:I

    rsub-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget v0, p0, LIi/e;->q:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, LIi/e;->q:I

    if-nez v0, :cond_0

    iget v0, p0, LIi/e;->r:I

    add-int/2addr v0, v2

    iput v0, p0, LIi/e;->r:I

    :cond_0
    iget-object v0, p0, LIi/e;->m:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LIi/e;->j([BI)V

    iget-object v0, p0, LIi/e;->m:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LIi/e;->m:[B

    aput-byte p1, v0, v1

    iput v2, p0, LIi/e;->n:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, LIi/e;->m:[B

    aput-byte p1, v1, v0

    add-int/2addr v0, v2

    iput v0, p0, LIi/e;->n:I

    :goto_0
    return-void
.end method

.method public update([BII)V
    .locals 4

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget v0, p0, LIi/e;->n:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    rsub-int/lit8 v2, v0, 0x40

    if-ge v2, p3, :cond_2

    iget-object v3, p0, LIi/e;->m:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, LIi/e;->q:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, LIi/e;->q:I

    if-nez v0, :cond_1

    iget v0, p0, LIi/e;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LIi/e;->r:I

    :cond_1
    iget-object v0, p0, LIi/e;->m:[B

    invoke-direct {p0, v0, v1}, LIi/e;->j([BI)V

    iput v1, p0, LIi/e;->n:I

    iget-object v0, p0, LIi/e;->m:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, LIi/e;->m:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, LIi/e;->n:I

    add-int/2addr p1, p3

    iput p1, p0, LIi/e;->n:I

    return-void

    :cond_3
    move v2, v1

    :goto_1
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x40

    add-int/2addr p2, v2

    :goto_2
    if-ge p2, v0, :cond_5

    iget v2, p0, LIi/e;->q:I

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, LIi/e;->q:I

    if-nez v2, :cond_4

    iget v2, p0, LIi/e;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LIi/e;->r:I

    :cond_4
    invoke-direct {p0, p1, p2}, LIi/e;->j([BI)V

    add-int/lit8 p2, p2, 0x40

    goto :goto_2

    :cond_5
    iget-object v0, p0, LIi/e;->m:[B

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method
