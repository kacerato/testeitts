.class public LIi/P;
.super LIi/w;
.source "SourceFile"


# instance fields
.field public r:I

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, v0}, LIi/P;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(ILBi/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LIi/w;-><init>()V

    const/16 p2, 0x200

    if-ge p1, p2, :cond_2

    rem-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    const/16 p2, 0x180

    if-eq p1, p2, :cond_0

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, LIi/P;->r:I

    invoke-virtual {p0}, LIi/P;->r()LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    iget p1, p0, LIi/P;->r:I

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, LIi/P;->C(I)V

    invoke-virtual {p0}, LIi/P;->reset()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bitLength cannot be 384 use SHA384 instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bitLength needs to be a multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bitLength cannot be >= 512"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LIi/P;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, LIi/w;-><init>(LIi/w;)V

    iget v0, p1, LIi/P;->r:I

    iput v0, p0, LIi/P;->r:I

    invoke-virtual {p0}, LIi/P;->r()LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p1}, LIi/P;->j(Lorg/bouncycastle/util/n;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 4
    invoke-static {p1}, LIi/P;->B([B)I

    move-result v0

    invoke-static {}, LBi/o;->values()[LBi/o;

    move-result-object v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, LIi/P;-><init>(ILBi/o;)V

    invoke-virtual {p0}, LIi/P;->r()LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0, p1}, LIi/w;->y([B)V

    return-void
.end method

.method public static A(J[BII)V
    .locals 3

    if-lez p4, :cond_0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3, p4}, LIi/P;->z(I[BII)V

    const/4 v0, 0x4

    if-le p4, v0, :cond_0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    long-to-int p0, p0

    add-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-static {p0, p2, p3, p4}, LIi/P;->z(I[BII)V

    :cond_0
    return-void
.end method

.method public static B([B)I
    .locals 1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x5

    invoke-static {p0, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result p0

    return p0
.end method

.method public static z(I[BII)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    rsub-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x8

    add-int v1, p2, p3

    ushr-int v0, p0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 3

    const-wide v0, -0x3053bc3da9e69353L    # -6.392239886847908E75

    iput-wide v0, p0, LIi/w;->f:J

    const-wide v0, 0x1ec20b20216f029eL    # 1.604250256667292E-160

    iput-wide v0, p0, LIi/w;->g:J

    const-wide v0, -0x6634a928a4cea272L

    iput-wide v0, p0, LIi/w;->h:J

    const-wide v0, 0xea509ffab89354L

    iput-wide v0, p0, LIi/w;->i:J

    const-wide v0, -0xb540825f7bcd88cL

    iput-wide v0, p0, LIi/w;->j:J

    const-wide v0, 0x3ea0cd298e9bc9baL    # 5.007211971427005E-7

    iput-wide v0, p0, LIi/w;->k:J

    const-wide v0, -0x45d983f1a11be732L    # -1.418977391716189E-28

    iput-wide v0, p0, LIi/w;->l:J

    const-wide v0, -0x1ba974349247b24L

    iput-wide v0, p0, LIi/w;->m:J

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, LIi/w;->update(B)V

    const/16 v0, 0xa

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    div-int/lit8 v2, p1, 0x64

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, LIi/w;->update(B)V

    rem-int/2addr p1, v1

    :goto_0
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, LIi/w;->update(B)V

    rem-int/2addr p1, v0

    :cond_0
    add-int/lit8 p1, p1, 0x30

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, LIi/w;->update(B)V

    goto :goto_1

    :cond_1
    if-le p1, v0, :cond_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, LIi/w;->s()V

    iget-wide v0, p0, LIi/w;->f:J

    iput-wide v0, p0, LIi/P;->s:J

    iget-wide v0, p0, LIi/w;->g:J

    iput-wide v0, p0, LIi/P;->t:J

    iget-wide v0, p0, LIi/w;->h:J

    iput-wide v0, p0, LIi/P;->u:J

    iget-wide v0, p0, LIi/w;->i:J

    iput-wide v0, p0, LIi/P;->v:J

    iget-wide v0, p0, LIi/w;->j:J

    iput-wide v0, p0, LIi/P;->w:J

    iget-wide v0, p0, LIi/w;->k:J

    iput-wide v0, p0, LIi/P;->x:J

    iget-wide v0, p0, LIi/w;->l:J

    iput-wide v0, p0, LIi/P;->y:J

    iget-wide v0, p0, LIi/w;->m:J

    iput-wide v0, p0, LIi/P;->z:J

    return-void
.end method

.method public a()[B
    .locals 3

    invoke-virtual {p0}, LIi/w;->t()I

    move-result v0

    add-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, LIi/w;->u([B)V

    iget v2, p0, LIi/P;->r:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/util/p;->h(I[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, LIi/w;->a:LBi/o;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA-512/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LIi/P;->r:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 4

    invoke-virtual {p0}, LIi/w;->s()V

    iget-wide v0, p0, LIi/w;->f:J

    iget v2, p0, LIi/P;->r:I

    invoke-static {v0, v1, p1, p2, v2}, LIi/P;->A(J[BII)V

    iget-wide v0, p0, LIi/w;->g:J

    add-int/lit8 v2, p2, 0x8

    iget v3, p0, LIi/P;->r:I

    add-int/lit8 v3, v3, -0x8

    invoke-static {v0, v1, p1, v2, v3}, LIi/P;->A(J[BII)V

    iget-wide v0, p0, LIi/w;->h:J

    add-int/lit8 v2, p2, 0x10

    iget v3, p0, LIi/P;->r:I

    add-int/lit8 v3, v3, -0x10

    invoke-static {v0, v1, p1, v2, v3}, LIi/P;->A(J[BII)V

    iget-wide v0, p0, LIi/w;->i:J

    add-int/lit8 v2, p2, 0x18

    iget v3, p0, LIi/P;->r:I

    add-int/lit8 v3, v3, -0x18

    invoke-static {v0, v1, p1, v2, v3}, LIi/P;->A(J[BII)V

    iget-wide v0, p0, LIi/w;->j:J

    add-int/lit8 v2, p2, 0x20

    iget v3, p0, LIi/P;->r:I

    add-int/lit8 v3, v3, -0x20

    invoke-static {v0, v1, p1, v2, v3}, LIi/P;->A(J[BII)V

    iget-wide v0, p0, LIi/w;->k:J

    add-int/lit8 v2, p2, 0x28

    iget v3, p0, LIi/P;->r:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v0, v1, p1, v2, v3}, LIi/P;->A(J[BII)V

    iget-wide v0, p0, LIi/w;->l:J

    add-int/lit8 v2, p2, 0x30

    iget v3, p0, LIi/P;->r:I

    add-int/lit8 v3, v3, -0x30

    invoke-static {v0, v1, p1, v2, v3}, LIi/P;->A(J[BII)V

    iget-wide v0, p0, LIi/w;->m:J

    add-int/lit8 p2, p2, 0x38

    iget v2, p0, LIi/P;->r:I

    add-int/lit8 v2, v2, -0x38

    invoke-static {v0, v1, p1, p2, v2}, LIi/P;->A(J[BII)V

    invoke-virtual {p0}, LIi/P;->reset()V

    iget p1, p0, LIi/P;->r:I

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/P;

    invoke-direct {v0, p0}, LIi/P;-><init>(LIi/P;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/P;->r:I

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 2

    check-cast p1, LIi/P;

    iget v0, p0, LIi/P;->r:I

    iget v1, p1, LIi/P;->r:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, LIi/w;->q(LIi/w;)V

    iget-wide v0, p1, LIi/P;->s:J

    iput-wide v0, p0, LIi/P;->s:J

    iget-wide v0, p1, LIi/P;->t:J

    iput-wide v0, p0, LIi/P;->t:J

    iget-wide v0, p1, LIi/P;->u:J

    iput-wide v0, p0, LIi/P;->u:J

    iget-wide v0, p1, LIi/P;->v:J

    iput-wide v0, p0, LIi/P;->v:J

    iget-wide v0, p1, LIi/P;->w:J

    iput-wide v0, p0, LIi/P;->w:J

    iget-wide v0, p1, LIi/P;->x:J

    iput-wide v0, p0, LIi/P;->x:J

    iget-wide v0, p1, LIi/P;->y:J

    iput-wide v0, p0, LIi/P;->y:J

    iget-wide v0, p1, LIi/P;->z:J

    iput-wide v0, p0, LIi/P;->z:J

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/MemoableResetException;

    const-string v0, "digestLength inappropriate in other"

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/MemoableResetException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()LBi/n;
    .locals 2

    invoke-virtual {p0}, LIi/P;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, LIi/w;->a:LBi/o;

    invoke-static {p0, v0, v1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, LIi/w;->reset()V

    iget-wide v0, p0, LIi/P;->s:J

    iput-wide v0, p0, LIi/w;->f:J

    iget-wide v0, p0, LIi/P;->t:J

    iput-wide v0, p0, LIi/w;->g:J

    iget-wide v0, p0, LIi/P;->u:J

    iput-wide v0, p0, LIi/w;->h:J

    iget-wide v0, p0, LIi/P;->v:J

    iput-wide v0, p0, LIi/w;->i:J

    iget-wide v0, p0, LIi/P;->w:J

    iput-wide v0, p0, LIi/w;->j:J

    iget-wide v0, p0, LIi/P;->x:J

    iput-wide v0, p0, LIi/w;->k:J

    iget-wide v0, p0, LIi/P;->y:J

    iput-wide v0, p0, LIi/w;->l:J

    iget-wide v0, p0, LIi/P;->z:J

    iput-wide v0, p0, LIi/w;->m:J

    return-void
.end method
