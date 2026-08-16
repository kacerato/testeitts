.class public LIi/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/a0;


# static fields
.field public static final j:I = 0xffff

.field public static final k:I = 0x20

.field public static final l:J = 0x100000000L


# instance fields
.field public a:I

.field public b:LIi/e;

.field public c:[B

.field public d:[B

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public final i:LBi/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0xffff

    .line 1
    sget-object v1, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0, v1}, LIi/g;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, v0}, LIi/g;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(ILBi/o;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    .line 3
    invoke-direct/range {v0 .. v5}, LIi/g;-><init>(I[B[B[BLBi/o;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6

    const/4 v4, 0x0

    .line 4
    sget-object v5, LBi/o;->ANY:LBi/o;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LIi/g;-><init>(I[B[B[BLBi/o;)V

    return-void
.end method

.method public constructor <init>(I[B[B[BLBi/o;)V
    .locals 10

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LIi/g;->c:[B

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, LIi/g;->d:[B

    iput v0, p0, LIi/g;->e:I

    const/4 v0, 0x0

    iput v0, p0, LIi/g;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LIi/g;->g:J

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iput p1, p0, LIi/g;->a:I

    invoke-virtual {p0}, LIi/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, LIi/g;->h:J

    iput-object p5, p0, LIi/g;->i:LBi/o;

    new-instance p1, LIi/e;

    const/16 v3, 0x20

    iget-wide v7, p0, LIi/g;->h:J

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, LIi/e;-><init>(I[B[B[BJLBi/o;)V

    iput-object p1, p0, LIi/g;->b:LIi/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BLAKE2xs digest length must be between 1 and 2^16-1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LIi/g;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LIi/g;->c:[B

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, LIi/g;->d:[B

    iput v0, p0, LIi/g;->e:I

    const/4 v0, 0x0

    iput v0, p0, LIi/g;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LIi/g;->g:J

    iget v0, p1, LIi/g;->a:I

    iput v0, p0, LIi/g;->a:I

    new-instance v0, LIi/e;

    iget-object v1, p1, LIi/g;->b:LIi/e;

    invoke-direct {v0, v1}, LIi/e;-><init>(LIi/e;)V

    iput-object v0, p0, LIi/g;->b:LIi/e;

    iget-object v0, p1, LIi/g;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/g;->c:[B

    iget-object v0, p1, LIi/g;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LIi/g;->d:[B

    iget v0, p1, LIi/g;->e:I

    iput v0, p0, LIi/g;->e:I

    iget v0, p1, LIi/g;->f:I

    iput v0, p0, LIi/g;->f:I

    iget-wide v0, p1, LIi/g;->g:J

    iput-wide v0, p0, LIi/g;->g:J

    iget-wide v0, p1, LIi/g;->h:J

    iput-wide v0, p0, LIi/g;->h:J

    iget-object p1, p1, LIi/g;->i:LBi/o;

    iput-object p1, p0, LIi/g;->i:LBi/o;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget v0, p0, LIi/g;->a:I

    int-to-long v0, v0

    const-wide v2, 0x100000000L

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2xs"

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    iget v0, p0, LIi/g;->a:I

    invoke-virtual {p0, p1, p2, v0}, LIi/g;->e([BII)I

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 3

    iget v0, p0, LIi/g;->a:I

    const v1, 0xffff

    const/16 v2, 0x20

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, LIi/g;->f:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public e([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LIi/g;->h([BII)I

    move-result p1

    invoke-virtual {p0}, LIi/g;->reset()V

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/g;->a:I

    return v0
.end method

.method public g()J
    .locals 2

    const-wide v0, 0x2000000000L

    return-wide v0
.end method

.method public h([BII)I
    .locals 7

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_6

    iget-object v0, p0, LIi/g;->c:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LIi/g;->b:LIi/e;

    invoke-virtual {v0}, LIi/e;->f()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LIi/g;->c:[B

    iget-object v2, p0, LIi/g;->b:LIi/e;

    invoke-virtual {v2, v0, v1}, LIi/e;->c([BI)I

    :cond_0
    iget v0, p0, LIi/g;->a:I

    const v2, 0xffff

    if-eq v0, v2, :cond_2

    iget v2, p0, LIi/g;->f:I

    add-int/2addr v2, p3

    if-gt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output length is above the digest length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide v2, p0, LIi/g;->g:J

    const/4 v0, 0x5

    shl-long/2addr v2, v0

    invoke-virtual {p0}, LIi/g;->g()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    :goto_0
    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_4

    iget v2, p0, LIi/g;->e:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    new-instance v2, LIi/e;

    invoke-virtual {p0}, LIi/g;->d()I

    move-result v4

    iget-wide v5, p0, LIi/g;->h:J

    invoke-direct {v2, v4, v3, v5, v6}, LIi/e;-><init>(IIJ)V

    iget-object v3, p0, LIi/g;->c:[B

    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, LIi/e;->update([BII)V

    iget-object v3, p0, LIi/g;->d:[B

    invoke-static {v3, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v3, p0, LIi/g;->d:[B

    invoke-virtual {v2, v3, v1}, LIi/e;->c([BI)I

    iput v1, p0, LIi/g;->e:I

    iget-wide v2, p0, LIi/g;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, LIi/g;->h:J

    iget-wide v2, p0, LIi/g;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, LIi/g;->g:J

    :cond_3
    add-int v2, p2, v0

    iget-object v3, p0, LIi/g;->d:[B

    iget v4, p0, LIi/g;->e:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, LIi/g;->e:I

    iget v2, p0, LIi/g;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LIi/g;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return p3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum length is 2^32 blocks of 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LIi/g;->b:LIi/e;

    invoke-virtual {v0}, LIi/e;->i()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, LIi/g;->b:LIi/e;

    invoke-virtual {v0}, LIi/e;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, LIi/g;->c:[B

    const/16 v0, 0x20

    iput v0, p0, LIi/g;->e:I

    const/4 v0, 0x0

    iput v0, p0, LIi/g;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LIi/g;->g:J

    invoke-virtual {p0}, LIi/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, LIi/g;->h:J

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LIi/g;->b:LIi/e;

    invoke-virtual {v0, p1}, LIi/e;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LIi/g;->b:LIi/e;

    invoke-virtual {v0, p1, p2, p3}, LIi/e;->update([BII)V

    return-void
.end method
