.class public Lpi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loi/m;


# instance fields
.field public a:I

.field public b:Ljava/security/SecureRandom;

.field public c:LBi/y;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lpi/c;-><init>(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/J;

    invoke-direct {v0}, LIi/J;-><init>()V

    iput-object v0, p0, Lpi/c;->c:LBi/y;

    iput p1, p0, Lpi/c;->a:I

    iput-object p2, p0, Lpi/c;->b:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 8

    iget-object v0, p0, Lpi/c;->c:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget v2, p0, Lpi/c;->a:I

    iget-object v3, p0, Lpi/c;->c:LBi/y;

    invoke-interface {v3}, LBi/y;->f()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, LOi/D;

    iget-object v6, p0, Lpi/c;->c:LBi/y;

    invoke-direct {v5, v6}, LOi/D;-><init>(LBi/y;)V

    new-instance v6, LXi/p0;

    invoke-direct {v6, v1}, LXi/p0;-><init>([B)V

    invoke-virtual {v5, v6}, LOi/D;->c(LBi/x;)V

    invoke-virtual {v5, v3, v4, v2}, LOi/D;->a([BII)I

    move v1, v4

    :goto_0
    if-eq v1, v2, :cond_0

    add-int v5, v1, v0

    aget-byte v6, p1, v5

    aget-byte v7, v3, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-eq v1, v0, :cond_2

    aget-byte v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_2
    if-eqz v1, :cond_3

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad padding in encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)[B
    .locals 8

    iget v0, p0, Lpi/c;->a:I

    new-array v1, v0, [B

    iget-object v2, p0, Lpi/c;->c:LBi/y;

    invoke-interface {v2}, LBi/y;->f()I

    move-result v2

    new-array v3, v2, [B

    iget v4, p0, Lpi/c;->a:I

    iget-object v5, p0, Lpi/c;->c:LBi/y;

    invoke-interface {v5}, LBi/y;->f()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v5, v4, [B

    iget-object v6, p0, Lpi/c;->b:Ljava/security/SecureRandom;

    if-nez v6, :cond_0

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    iput-object v6, p0, Lpi/c;->b:Ljava/security/SecureRandom;

    :cond_0
    iget-object v6, p0, Lpi/c;->b:Ljava/security/SecureRandom;

    invoke-virtual {v6, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v6, LOi/D;

    iget-object v7, p0, Lpi/c;->c:LBi/y;

    invoke-direct {v6, v7}, LOi/D;-><init>(LBi/y;)V

    new-instance v7, LXi/p0;

    invoke-direct {v7, v3}, LXi/p0;-><init>([B)V

    invoke-virtual {v6, v7}, LOi/D;->c(LBi/x;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v4}, LOi/D;->a([BII)I

    invoke-static {v3, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    invoke-static {p1, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p1, v2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-eq p1, v0, :cond_1

    iget-object v3, p0, Lpi/c;->b:Ljava/security/SecureRandom;

    const/16 v6, 0xff

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v7, v4, :cond_2

    add-int p1, v7, v2

    aget-byte v0, v1, p1

    aget-byte v3, v5, v7

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method
