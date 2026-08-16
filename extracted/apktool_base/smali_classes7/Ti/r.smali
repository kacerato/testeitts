.class public LTi/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTi/s;


# static fields
.field public static final y:I = 0x10


# instance fields
.field public a:LBi/f;

.field public b:LUi/d;

.field public c:LUi/c;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:I

.field public s:I

.field public t:J

.field public u:[B

.field public v:I

.field public w:J

.field public x:J


# direct methods
.method public constructor <init>(LBi/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LTi/r;-><init>(LBi/f;LUi/d;)V

    return-void
.end method

.method public constructor <init>(LBi/f;LUi/d;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, LBi/f;->c()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, LUi/g;

    invoke-direct {p2}, LUi/g;-><init>()V

    :cond_0
    iput-object p1, p0, LTi/r;->a:LBi/f;

    iput-object p2, p0, LTi/r;->b:LUi/d;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cipher required with a block size of 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private t()V
    .locals 9

    iget-wide v0, p0, LTi/r;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, LTi/r;->o:[B

    iget-object v5, p0, LTi/r;->p:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v5, p0, LTi/r;->w:J

    iput-wide v5, p0, LTi/r;->x:J

    :cond_0
    iget v0, p0, LTi/r;->v:I

    if-lez v0, :cond_1

    iget-object v5, p0, LTi/r;->p:[B

    iget-object v6, p0, LTi/r;->u:[B

    invoke-virtual {p0, v5, v6, v4, v0}, LTi/r;->r([B[BII)V

    iget-wide v5, p0, LTi/r;->x:J

    iget v0, p0, LTi/r;->v:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, LTi/r;->x:J

    :cond_1
    iget-wide v5, p0, LTi/r;->x:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    iget-object v0, p0, LTi/r;->p:[B

    iget-object v2, p0, LTi/r;->n:[B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public static u(LBi/f;)LTi/s;
    .locals 1

    new-instance v0, LTi/r;

    invoke-direct {v0, p0}, LTi/r;-><init>(LBi/f;)V

    return-object v0
.end method

.method public static v(LBi/f;LUi/d;)LTi/s;
    .locals 1

    new-instance v0, LTi/r;

    invoke-direct {v0, p0, p1}, LTi/r;-><init>(LBi/f;LUi/d;)V

    return-object v0
.end method

.method private x(Z)V
    .locals 4

    iget-object v0, p0, LTi/r;->a:LBi/f;

    invoke-interface {v0}, LBi/f;->reset()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, LTi/r;->n:[B

    new-array v1, v0, [B

    iput-object v1, p0, LTi/r;->o:[B

    new-array v1, v0, [B

    iput-object v1, p0, LTi/r;->p:[B

    new-array v0, v0, [B

    iput-object v0, p0, LTi/r;->u:[B

    const/4 v0, 0x0

    iput v0, p0, LTi/r;->v:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LTi/r;->w:J

    iput-wide v1, p0, LTi/r;->x:J

    iget-object v3, p0, LTi/r;->k:[B

    invoke-static {v3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v3

    iput-object v3, p0, LTi/r;->q:[B

    const/4 v3, -0x2

    iput v3, p0, LTi/r;->r:I

    iput v0, p0, LTi/r;->s:I

    iput-wide v1, p0, LTi/r;->t:J

    iget-object v1, p0, LTi/r;->l:[B

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LTi/r;->m:[B

    :cond_1
    iget-boolean p1, p0, LTi/r;->d:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, LTi/r;->e:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, LTi/r;->i:[B

    if-eqz p1, :cond_3

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LTi/r;->j([BII)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, LTi/r;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, LTi/r;->m:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, LTi/r;->e:Z

    instance-of v2, p2, LXi/a;

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-eqz v2, :cond_1

    check-cast p2, LXi/a;

    invoke-virtual {p2}, LXi/a;->d()[B

    move-result-object v2

    invoke-virtual {p2}, LXi/a;->a()[B

    move-result-object v5

    iput-object v5, p0, LTi/r;->i:[B

    invoke-virtual {p2}, LXi/a;->c()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    const/16 v6, 0x80

    if-gt v5, v6, :cond_0

    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_0

    div-int/2addr v5, v3

    iput v5, p0, LTi/r;->f:I

    invoke-virtual {p2}, LXi/a;->b()LXi/o0;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for MAC size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v2, p2, LXi/w0;

    if-eqz v2, :cond_c

    check-cast p2, LXi/w0;

    invoke-virtual {p2}, LXi/w0;->a()[B

    move-result-object v2

    iput-object v0, p0, LTi/r;->i:[B

    iput v4, p0, LTi/r;->f:I

    invoke-virtual {p2}, LXi/w0;->b()LBi/k;

    move-result-object p2

    check-cast p2, LXi/o0;

    :goto_0
    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    iget v5, p0, LTi/r;->f:I

    add-int/2addr v5, v4

    :goto_1
    new-array v5, v5, [B

    iput-object v5, p0, LTi/r;->l:[B

    if-eqz v2, :cond_b

    array-length v5, v2

    if-lt v5, v1, :cond_b

    if-eqz p1, :cond_5

    iget-object p1, p0, LTi/r;->h:[B

    if-eqz p1, :cond_5

    invoke-static {p1, v2}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "cannot reuse nonce for GCM encryption"

    if-eqz p2, :cond_4

    iget-object v5, p0, LTi/r;->g:[B

    if-eqz v5, :cond_5

    invoke-virtual {p2}, LXi/o0;->b()[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    iput-object v2, p0, LTi/r;->h:[B

    if-eqz p2, :cond_6

    invoke-virtual {p2}, LXi/o0;->b()[B

    move-result-object p1

    iput-object p1, p0, LTi/r;->g:[B

    :cond_6
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    iget-object v2, p0, LTi/r;->a:LBi/f;

    invoke-interface {v2, v1, p2}, LBi/f;->a(ZLBi/k;)V

    new-array p2, v4, [B

    iput-object p2, p0, LTi/r;->j:[B

    iget-object v2, p0, LTi/r;->a:LBi/f;

    invoke-interface {v2, p2, p1, p2, p1}, LBi/f;->g([BI[BI)I

    iget-object p2, p0, LTi/r;->b:LUi/d;

    iget-object v2, p0, LTi/r;->j:[B

    invoke-interface {p2, v2}, LUi/d;->a([B)V

    iput-object v0, p0, LTi/r;->c:LUi/c;

    goto :goto_3

    :cond_7
    iget-object p2, p0, LTi/r;->j:[B

    if-eqz p2, :cond_a

    :goto_3
    new-array p2, v4, [B

    iput-object p2, p0, LTi/r;->k:[B

    iget-object v0, p0, LTi/r;->h:[B

    array-length v2, v0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_8

    array-length v2, v0

    invoke-static {v0, p1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, LTi/r;->k:[B

    const/16 v0, 0xf

    aput-byte v1, p2, v0

    goto :goto_4

    :cond_8
    array-length v1, v0

    invoke-virtual {p0, p2, v0, v1}, LTi/r;->o([B[BI)V

    new-array p2, v4, [B

    iget-object v0, p0, LTi/r;->h:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v5, 0x8

    mul-long/2addr v0, v5

    invoke-static {v0, v1, p2, v3}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-object v0, p0, LTi/r;->k:[B

    invoke-virtual {p0, v0, p2}, LTi/r;->p([B[B)V

    :goto_4
    new-array p2, v4, [B

    iput-object p2, p0, LTi/r;->n:[B

    new-array p2, v4, [B

    iput-object p2, p0, LTi/r;->o:[B

    new-array p2, v4, [B

    iput-object p2, p0, LTi/r;->p:[B

    new-array p2, v4, [B

    iput-object p2, p0, LTi/r;->u:[B

    iput p1, p0, LTi/r;->v:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LTi/r;->w:J

    iput-wide v0, p0, LTi/r;->x:J

    iget-object p2, p0, LTi/r;->k:[B

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    iput-object p2, p0, LTi/r;->q:[B

    const/4 p2, -0x2

    iput p2, p0, LTi/r;->r:I

    iput p1, p0, LTi/r;->s:I

    iput-wide v0, p0, LTi/r;->t:J

    iget-object p2, p0, LTi/r;->i:[B

    if-eqz p2, :cond_9

    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, LTi/r;->j([BII)V

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key must be specified in initial init"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV must be at least 1 byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to GCM"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LTi/r;->a:LBi/f;

    invoke-interface {v1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, LTi/r;->l()V

    iget-wide v0, p0, LTi/r;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, LTi/r;->t()V

    :cond_0
    iget v0, p0, LTi/r;->s:I

    iget-boolean v1, p0, LTi/r;->d:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, LTi/r;->f:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v1, p0, LTi/r;->f:I

    if-lt v0, v1, :cond_b

    sub-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_a

    :goto_0
    if-lez v0, :cond_3

    iget-object v6, p0, LTi/r;->l:[B

    const/4 v7, 0x0

    move-object v5, p0

    move v8, v0

    move-object v9, p1

    move v10, p2

    invoke-virtual/range {v5 .. v10}, LTi/r;->w([BII[BI)V

    :cond_3
    iget-wide v4, p0, LTi/r;->w:J

    iget v1, p0, LTi/r;->v:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, LTi/r;->w:J

    iget-wide v6, p0, LTi/r;->x:J

    cmp-long v4, v4, v6

    const/16 v5, 0x10

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    if-lez v4, :cond_7

    if-lez v1, :cond_4

    iget-object v4, p0, LTi/r;->o:[B

    iget-object v9, p0, LTi/r;->u:[B

    invoke-virtual {p0, v4, v9, v8, v1}, LTi/r;->r([B[BII)V

    :cond_4
    iget-wide v9, p0, LTi/r;->x:J

    cmp-long v1, v9, v2

    if-lez v1, :cond_5

    iget-object v1, p0, LTi/r;->o:[B

    iget-object v2, p0, LTi/r;->p:[B

    invoke-static {v1, v2}, LUi/e;->N([B[B)V

    :cond_5
    iget-wide v1, p0, LTi/r;->t:J

    mul-long/2addr v1, v6

    const-wide/16 v3, 0x7f

    add-long/2addr v1, v3

    const/4 v3, 0x7

    ushr-long/2addr v1, v3

    new-array v3, v5, [B

    iget-object v4, p0, LTi/r;->c:LUi/c;

    if-nez v4, :cond_6

    new-instance v4, LUi/a;

    invoke-direct {v4}, LUi/a;-><init>()V

    iput-object v4, p0, LTi/r;->c:LUi/c;

    iget-object v9, p0, LTi/r;->j:[B

    invoke-interface {v4, v9}, LUi/c;->a([B)V

    :cond_6
    iget-object v4, p0, LTi/r;->c:LUi/c;

    invoke-interface {v4, v1, v2, v3}, LUi/c;->b(J[B)V

    iget-object v1, p0, LTi/r;->o:[B

    invoke-static {v1, v3}, LUi/e;->q([B[B)V

    iget-object v1, p0, LTi/r;->n:[B

    iget-object v2, p0, LTi/r;->o:[B

    invoke-static {v1, v2}, LUi/e;->N([B[B)V

    :cond_7
    new-array v1, v5, [B

    iget-wide v2, p0, LTi/r;->w:J

    mul-long/2addr v2, v6

    invoke-static {v2, v3, v1, v8}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v2, p0, LTi/r;->t:J

    mul-long/2addr v2, v6

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v4}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-object v2, p0, LTi/r;->n:[B

    invoke-virtual {p0, v2, v1}, LTi/r;->p([B[B)V

    new-array v1, v5, [B

    iget-object v2, p0, LTi/r;->a:LBi/f;

    iget-object v3, p0, LTi/r;->k:[B

    invoke-interface {v2, v3, v8, v1, v8}, LBi/f;->g([BI[BI)I

    iget-object v2, p0, LTi/r;->n:[B

    invoke-static {v1, v2}, LUi/e;->N([B[B)V

    iget v2, p0, LTi/r;->f:I

    new-array v3, v2, [B

    iput-object v3, p0, LTi/r;->m:[B

    invoke-static {v1, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, LTi/r;->d:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, LTi/r;->m:[B

    iget v2, p0, LTi/r;->s:I

    add-int/2addr p2, v2

    iget v2, p0, LTi/r;->f:I

    invoke-static {v1, v8, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LTi/r;->f:I

    add-int/2addr v0, p1

    goto :goto_1

    :cond_8
    iget p1, p0, LTi/r;->f:I

    new-array p2, p1, [B

    iget-object v1, p0, LTi/r;->l:[B

    invoke-static {v1, v0, p2, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LTi/r;->m:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_1
    invoke-direct {p0, v8}, LTi/r;->x(Z)V

    return v0

    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "mac check in GCM failed"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()LBi/f;
    .locals 1

    iget-object v0, p0, LTi/r;->a:LBi/f;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LTi/r;->m:[B

    if-nez v0, :cond_0

    iget v0, p0, LTi/r;->f:I

    new-array v0, v0, [B

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-virtual {p0}, LTi/r;->l()V

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_8

    iget-boolean v0, p0, LTi/r;->d:Z

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_3

    iget v0, p0, LTi/r;->s:I

    if-lez v0, :cond_1

    rsub-int/lit8 v3, v0, 0x10

    if-ge p3, v3, :cond_0

    iget-object p4, p0, LTi/r;->l:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, LTi/r;->s:I

    add-int/2addr p1, p3

    iput p1, p0, LTi/r;->s:I

    return v1

    :cond_0
    iget-object v4, p0, LTi/r;->l:[B

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LTi/r;->l:[B

    invoke-virtual {p0, v0, v1, p4, p5}, LTi/r;->n([BI[BI)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x10

    :goto_2
    if-gt p2, v0, :cond_2

    add-int v3, p5, v2

    invoke-virtual {p0, p1, p2, p4, v3}, LTi/r;->n([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v2, v2, 0x10

    goto :goto_2

    :cond_2
    sub-int/2addr p3, p2

    iput p3, p0, LTi/r;->s:I

    iget-object p4, p0, LTi/r;->l:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_3
    iget-object v0, p0, LTi/r;->l:[B

    array-length v3, v0

    iget v4, p0, LTi/r;->s:I

    sub-int/2addr v3, v4

    if-ge p3, v3, :cond_4

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    if-lt v4, v2, :cond_6

    invoke-virtual {p0, v0, v1, p4, p5}, LTi/r;->m([BI[BI)V

    iget-object v0, p0, LTi/r;->l:[B

    iget v4, p0, LTi/r;->s:I

    sub-int/2addr v4, v2

    iput v4, p0, LTi/r;->s:I

    invoke-static {v0, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    if-ge p3, v3, :cond_5

    iget-object p4, p0, LTi/r;->l:[B

    iget p5, p0, LTi/r;->s:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LTi/r;->s:I

    add-int/2addr p1, p3

    iput p1, p0, LTi/r;->s:I

    return v2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    add-int/2addr p3, p2

    iget-object v3, p0, LTi/r;->l:[B

    array-length v4, v3

    sub-int/2addr p3, v4

    iget v4, p0, LTi/r;->s:I

    rsub-int/lit8 v5, v4, 0x10

    invoke-static {p1, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LTi/r;->l:[B

    add-int v4, p5, v0

    invoke-virtual {p0, v3, v1, p4, v4}, LTi/r;->m([BI[BI)V

    add-int/2addr p2, v5

    add-int/2addr v0, v2

    move v2, v0

    :goto_4
    if-gt p2, p3, :cond_7

    add-int v0, p5, v2

    invoke-virtual {p0, p1, p2, p4, v0}, LTi/r;->m([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v2, v2, 0x10

    goto :goto_4

    :cond_7
    iget-object p4, p0, LTi/r;->l:[B

    array-length p5, p4

    add-int/2addr p5, p3

    sub-int/2addr p5, p2

    iput p5, p0, LTi/r;->s:I

    invoke-static {p1, p2, p4, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    return v2

    :cond_8
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(I)I
    .locals 1

    iget v0, p0, LTi/r;->s:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, LTi/r;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, LTi/r;->f:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    :cond_1
    rem-int/lit8 v0, p1, 0x10

    sub-int/2addr p1, v0

    return p1
.end method

.method public h(I)I
    .locals 1

    iget v0, p0, LTi/r;->s:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, LTi/r;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, LTi/r;->f:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, LTi/r;->f:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public i(B[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-virtual {p0}, LTi/r;->l()V

    iget-object v0, p0, LTi/r;->l:[B

    iget v1, p0, LTi/r;->s:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LTi/r;->s:I

    array-length p1, v0

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    iget-boolean p1, p0, LTi/r;->d:Z

    const/16 v1, 0x10

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v2, p2, p3}, LTi/r;->n([BI[BI)V

    iput v2, p0, LTi/r;->s:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v2, p2, p3}, LTi/r;->m([BI[BI)V

    iget-object p1, p0, LTi/r;->l:[B

    iget p2, p0, LTi/r;->f:I

    invoke-static {p1, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LTi/r;->f:I

    iput p1, p0, LTi/r;->s:I

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method public j([BII)V
    .locals 6

    invoke-virtual {p0}, LTi/r;->l()V

    iget v0, p0, LTi/r;->v:I

    const-wide/16 v1, 0x10

    if-lez v0, :cond_1

    rsub-int/lit8 v3, v0, 0x10

    if-ge p3, v3, :cond_0

    iget-object v1, p0, LTi/r;->u:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LTi/r;->v:I

    add-int/2addr p1, p3

    iput p1, p0, LTi/r;->v:I

    return-void

    :cond_0
    iget-object v4, p0, LTi/r;->u:[B

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LTi/r;->o:[B

    iget-object v4, p0, LTi/r;->u:[B

    invoke-virtual {p0, v0, v4}, LTi/r;->p([B[B)V

    iget-wide v4, p0, LTi/r;->w:J

    add-long/2addr v4, v1

    iput-wide v4, p0, LTi/r;->w:J

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    :cond_1
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x10

    :goto_0
    if-gt p2, v0, :cond_2

    iget-object v3, p0, LTi/r;->o:[B

    invoke-virtual {p0, v3, p1, p2}, LTi/r;->q([B[BI)V

    iget-wide v3, p0, LTi/r;->w:J

    add-long/2addr v3, v1

    iput-wide v3, p0, LTi/r;->w:J

    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_2
    sub-int/2addr p3, p2

    iput p3, p0, LTi/r;->v:I

    iget-object v0, p0, LTi/r;->u:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public k(B)V
    .locals 4

    invoke-virtual {p0}, LTi/r;->l()V

    iget-object v0, p0, LTi/r;->u:[B

    iget v1, p0, LTi/r;->v:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LTi/r;->v:I

    const/16 p1, 0x10

    if-ne v1, p1, :cond_0

    iget-object p1, p0, LTi/r;->o:[B

    invoke-virtual {p0, p1, v0}, LTi/r;->p([B[B)V

    const/4 p1, 0x0

    iput p1, p0, LTi/r;->v:I

    iget-wide v0, p0, LTi/r;->w:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, LTi/r;->w:J

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    iget-boolean v0, p0, LTi/r;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LTi/r;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher needs to be initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final m([BI[BI)V
    .locals 8

    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-wide v2, p0, LTi/r;->t:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, LTi/r;->t()V

    :cond_0
    new-array v2, v1, [B

    invoke-virtual {p0, v2}, LTi/r;->s([B)V

    iget-object v0, p0, LTi/r;->n:[B

    invoke-virtual {p0, v0, p1, p2}, LTi/r;->q([B[BI)V

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, LUi/e;->M([BI[BI[BI)V

    iget-wide p1, p0, LTi/r;->t:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, LTi/r;->t:J

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n([BI[BI)V
    .locals 6

    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-wide v2, p0, LTi/r;->t:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, LTi/r;->t()V

    :cond_0
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, LTi/r;->s([B)V

    invoke-static {v0, p1, p2}, LUi/e;->O([B[BI)V

    iget-object p1, p0, LTi/r;->n:[B

    invoke-virtual {p0, p1, v0}, LTi/r;->p([B[B)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, LTi/r;->t:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, LTi/r;->t:J

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LTi/r;->r([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p([B[B)V
    .locals 0

    invoke-static {p1, p2}, LUi/e;->N([B[B)V

    iget-object p2, p0, LTi/r;->b:LUi/d;

    invoke-interface {p2, p1}, LUi/d;->b([B)V

    return-void
.end method

.method public final q([B[BI)V
    .locals 0

    invoke-static {p1, p2, p3}, LUi/e;->O([B[BI)V

    iget-object p2, p0, LTi/r;->b:LUi/d;

    invoke-interface {p2, p1}, LUi/d;->b([B)V

    return-void
.end method

.method public final r([B[BII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LUi/e;->P([B[BII)V

    iget-object p2, p0, LTi/r;->b:LUi/d;

    invoke-interface {p2, p1}, LUi/d;->b([B)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LTi/r;->x(Z)V

    return-void
.end method

.method public final s([B)V
    .locals 4

    iget v0, p0, LTi/r;->r:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LTi/r;->r:I

    iget-object v0, p0, LTi/r;->q:[B

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    ushr-int/lit8 v1, v2, 0x8

    const/16 v2, 0xe

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xd

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xc

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v1, p0, LTi/r;->a:LBi/f;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1, v2}, LBi/f;->g([BI[BI)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to process too many blocks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w([BII[BI)V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, LTi/r;->s([B)V

    iget-boolean v1, p0, LTi/r;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, p2, v0, v2, p3}, LUi/e;->L([BI[BII)V

    iget-object v0, p0, LTi/r;->n:[B

    invoke-virtual {p0, v0, p1, p2, p3}, LTi/r;->r([B[BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LTi/r;->n:[B

    invoke-virtual {p0, v1, p1, p2, p3}, LTi/r;->r([B[BII)V

    invoke-static {p1, p2, v0, v2, p3}, LUi/e;->L([BI[BII)V

    :goto_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, LTi/r;->t:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, LTi/r;->t:J

    return-void
.end method
