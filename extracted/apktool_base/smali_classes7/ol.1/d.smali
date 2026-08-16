.class public Lol/d;
.super Lol/f;
.source "SourceFile"

# interfaces
.implements LBi/y;


# direct methods
.method public constructor <init>(Lol/g;)V
    .locals 0

    invoke-direct {p0}, Lol/f;-><init>()V

    iget-object p1, p1, Lol/f;->b:[[I

    iput-object p1, p0, Lol/f;->b:[[I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "HarakaS-256"

    return-object v0
.end method

.method public c([BI)I
    .locals 8

    const/16 v0, 0x20

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Lol/f;->t([B)V

    iget-object v3, p0, Lol/f;->c:[B

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/4 v2, 0x0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lol/f;->D([BI[BI[BII)V

    invoke-virtual {p0}, Lol/d;->reset()V

    array-length p1, p1

    return p1
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lol/f;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget v0, p0, Lol/f;->d:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lol/f;->c:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lol/f;->d:I

    aput-byte p1, v1, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "total input cannot be more than 32 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 2

    .line 2
    iget v0, p0, Lol/f;->d:I

    rsub-int/lit8 v1, p3, 0x20

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lol/f;->c:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lol/f;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lol/f;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "total input cannot be more than 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
