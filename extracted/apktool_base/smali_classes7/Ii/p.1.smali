.class public abstract LIi/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;
.implements Lorg/bouncycastle/util/n;


# static fields
.field public static final e:I = 0x40


# instance fields
.field public final a:LBi/o;

.field public final b:[B

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/p;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, LIi/p;->b:[B

    iput-object p1, p0, LIi/p;->a:LBi/o;

    const/4 p1, 0x0

    iput p1, p0, LIi/p;->c:I

    return-void
.end method

.method public constructor <init>(LIi/p;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, LIi/p;->b:[B

    iget-object v0, p1, LIi/p;->a:LBi/o;

    iput-object v0, p0, LIi/p;->a:LBi/o;

    invoke-virtual {p0, p1}, LIi/p;->d(LIi/p;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, LIi/p;->b:[B

    invoke-static {}, LBi/o;->values()[LBi/o;

    move-result-object v2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    aget-object v2, v2, v3

    iput-object v2, p0, LIi/p;->a:LBi/o;

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v0

    iput v0, p0, LIi/p;->c:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide v0

    iput-wide v0, p0, LIi/p;->d:J

    return-void
.end method


# virtual methods
.method public d(LIi/p;)V
    .locals 4

    iget-object v0, p1, LIi/p;->b:[B

    iget-object v1, p0, LIi/p;->b:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LIi/p;->c:I

    iput v0, p0, LIi/p;->c:I

    iget-wide v0, p1, LIi/p;->d:J

    iput-wide v0, p0, LIi/p;->d:J

    return-void
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public abstract k()LBi/n;
.end method

.method public l()V
    .locals 3

    iget-wide v0, p0, LIi/p;->d:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_0
    invoke-virtual {p0, v2}, LIi/p;->update(B)V

    iget v2, p0, LIi/p;->c:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, LIi/p;->o(J)V

    invoke-virtual {p0}, LIi/p;->n()V

    return-void
.end method

.method public m([B)V
    .locals 3

    iget-object v0, p0, LIi/p;->b:[B

    const/4 v1, 0x0

    iget v2, p0, LIi/p;->c:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, LIi/p;->c:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget-wide v0, p0, LIi/p;->d:J

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    return-void
.end method

.method public abstract n()V
.end method

.method public abstract o(J)V
.end method

.method public abstract p([BI)V
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LIi/p;->d:J

    const/4 v0, 0x0

    iput v0, p0, LIi/p;->c:I

    move v1, v0

    :goto_0
    iget-object v2, p0, LIi/p;->b:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4

    .line 1
    iget-object v0, p0, LIi/p;->b:[B

    iget v1, p0, LIi/p;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LIi/p;->c:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, LIi/p;->p([BI)V

    iput p1, p0, LIi/p;->c:I

    :cond_0
    iget-wide v0, p0, LIi/p;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LIi/p;->d:J

    return-void
.end method

.method public update([BII)V
    .locals 6

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, LIi/p;->c:I

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v2, p0, LIi/p;->b:[B

    iget v3, p0, LIi/p;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LIi/p;->c:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_0

    invoke-virtual {p0, v2, v0}, LIi/p;->p([BI)V

    iput v0, p0, LIi/p;->c:I

    move v0, v5

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, p3, -0x3

    :goto_2
    if-ge v0, v1, :cond_3

    add-int v2, p2, v0

    invoke-virtual {p0, p1, v2}, LIi/p;->p([BI)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, p3, :cond_4

    iget-object v1, p0, LIi/p;->b:[B

    iget v2, p0, LIi/p;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, LIi/p;->c:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v1, v2

    move v0, v3

    goto :goto_3

    :cond_4
    iget-wide p1, p0, LIi/p;->d:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, LIi/p;->d:J

    return-void
.end method
