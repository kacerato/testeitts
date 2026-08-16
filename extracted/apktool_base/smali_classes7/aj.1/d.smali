.class public Laj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laj/f;


# static fields
.field public static final g:J = 0x800000000000L

.field public static final h:I = 0x40000


# instance fields
.field public a:[B

.field public b:[B

.field public c:J

.field public d:LZi/d;

.field public e:LBi/I;

.field public f:I


# direct methods
.method public constructor <init>(LBi/I;ILZi/d;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Laj/g;->b(LBi/I;)I

    move-result v0

    if-gt p2, v0, :cond_1

    invoke-interface {p3}, LZi/d;->d()I

    move-result v0

    if-lt v0, p2, :cond_0

    iput p2, p0, Laj/d;->f:I

    iput-object p3, p0, Laj/d;->d:LZi/d;

    iput-object p1, p0, Laj/d;->e:LBi/I;

    invoke-direct {p0}, Laj/d;->d()[B

    move-result-object p2

    invoke-static {p2, p5, p4}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p2

    invoke-interface {p1}, LBi/I;->d()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Laj/d;->a:[B

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Laj/d;->b:[B

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lorg/bouncycastle/util/a;->e0([BB)V

    invoke-virtual {p0, p2}, Laj/d;->e([B)V

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Laj/d;->c:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not enough entropy for security strength required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by the derivation function"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()[B
    .locals 3

    iget-object v0, p0, Laj/d;->d:LZi/d;

    invoke-interface {v0}, LZi/d;->b()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Laj/d;->f:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Insufficient entropy provided by entropy source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a([B[BZ)I
    .locals 8

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_5

    iget-wide v1, p0, Laj/d;->c:J

    const-wide v3, 0x800000000000L

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Laj/d;->b([B)V

    const/4 p2, 0x0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Laj/d;->e([B)V

    :cond_2
    array-length p3, p1

    new-array v1, p3, [B

    array-length v2, p1

    iget-object v3, p0, Laj/d;->b:[B

    array-length v3, v3

    div-int/2addr v2, v3

    iget-object v3, p0, Laj/d;->e:LBi/I;

    new-instance v4, LXi/o0;

    iget-object v5, p0, Laj/d;->a:[B

    invoke-direct {v4, v5}, LXi/o0;-><init>([B)V

    invoke-interface {v3, v4}, LBi/I;->a(LBi/k;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Laj/d;->e:LBi/I;

    iget-object v6, p0, Laj/d;->b:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, LBi/I;->update([BII)V

    iget-object v5, p0, Laj/d;->e:LBi/I;

    iget-object v6, p0, Laj/d;->b:[B

    invoke-interface {v5, v6, v3}, LBi/I;->c([BI)I

    iget-object v5, p0, Laj/d;->b:[B

    array-length v6, v5

    mul-int/2addr v6, v4

    array-length v7, v5

    invoke-static {v5, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Laj/d;->b:[B

    array-length v5, v4

    mul-int/2addr v5, v2

    if-ge v5, p3, :cond_4

    iget-object v5, p0, Laj/d;->e:LBi/I;

    array-length v6, v4

    invoke-interface {v5, v4, v3, v6}, LBi/I;->update([BII)V

    iget-object v4, p0, Laj/d;->e:LBi/I;

    iget-object v5, p0, Laj/d;->b:[B

    invoke-interface {v4, v5, v3}, LBi/I;->c([BI)I

    iget-object v4, p0, Laj/d;->b:[B

    array-length v5, v4

    mul-int/2addr v5, v2

    array-length v6, v4

    mul-int/2addr v2, v6

    sub-int/2addr p3, v2

    invoke-static {v4, v3, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-virtual {p0, p2}, Laj/d;->e([B)V

    iget-wide p2, p0, Laj/d;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr p2, v4

    iput-wide p2, p0, Laj/d;->c:J

    array-length p2, p1

    invoke-static {v1, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 262144"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)V
    .locals 2

    invoke-direct {p0}, Laj/d;->d()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Laj/d;->e([B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Laj/d;->c:J

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Laj/d;->b:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final e([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laj/d;->f([BB)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Laj/d;->f([BB)V

    :cond_0
    return-void
.end method

.method public final f([BB)V
    .locals 4

    iget-object v0, p0, Laj/d;->e:LBi/I;

    new-instance v1, LXi/o0;

    iget-object v2, p0, Laj/d;->a:[B

    invoke-direct {v1, v2}, LXi/o0;-><init>([B)V

    invoke-interface {v0, v1}, LBi/I;->a(LBi/k;)V

    iget-object v0, p0, Laj/d;->e:LBi/I;

    iget-object v1, p0, Laj/d;->b:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, LBi/I;->update([BII)V

    iget-object v0, p0, Laj/d;->e:LBi/I;

    invoke-interface {v0, p2}, LBi/I;->update(B)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Laj/d;->e:LBi/I;

    array-length v0, p1

    invoke-interface {p2, p1, v3, v0}, LBi/I;->update([BII)V

    :cond_0
    iget-object p1, p0, Laj/d;->e:LBi/I;

    iget-object p2, p0, Laj/d;->a:[B

    invoke-interface {p1, p2, v3}, LBi/I;->c([BI)I

    iget-object p1, p0, Laj/d;->e:LBi/I;

    new-instance p2, LXi/o0;

    iget-object v0, p0, Laj/d;->a:[B

    invoke-direct {p2, v0}, LXi/o0;-><init>([B)V

    invoke-interface {p1, p2}, LBi/I;->a(LBi/k;)V

    iget-object p1, p0, Laj/d;->e:LBi/I;

    iget-object p2, p0, Laj/d;->b:[B

    array-length v0, p2

    invoke-interface {p1, p2, v3, v0}, LBi/I;->update([BII)V

    iget-object p1, p0, Laj/d;->e:LBi/I;

    iget-object p2, p0, Laj/d;->b:[B

    invoke-interface {p1, p2, v3}, LBi/I;->c([BI)I

    return-void
.end method
