.class public Ldl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# instance fields
.field public a:[B

.field public b:Ldl/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, Ldl/n;

    invoke-virtual {p1}, Ldl/n;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Ldl/r;->a:[B

    new-instance v0, Ldl/l;

    invoke-virtual {p1}, Ldl/k;->d()Ldl/m;

    move-result-object v1

    invoke-virtual {v1}, Ldl/m;->a()I

    move-result v1

    invoke-virtual {p1}, Ldl/k;->d()Ldl/m;

    move-result-object p1

    invoke-virtual {p1}, Ldl/m;->c()I

    move-result p1

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Ldl/l;-><init>(IILjava/security/SecureRandom;)V

    iput-object v0, p0, Ldl/r;->b:Ldl/l;

    goto :goto_1

    :cond_0
    check-cast p2, Ldl/n;

    invoke-virtual {p2}, Ldl/n;->getEncoded()[B

    move-result-object p1

    iput-object p1, p0, Ldl/r;->a:[B

    new-instance p1, Ldl/l;

    invoke-virtual {p2}, Ldl/k;->d()Ldl/m;

    move-result-object v0

    invoke-virtual {v0}, Ldl/m;->a()I

    move-result v0

    invoke-virtual {p2}, Ldl/k;->d()Ldl/m;

    move-result-object p2

    invoke-virtual {p2}, Ldl/m;->c()I

    move-result p2

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Ldl/l;-><init>(IILjava/security/SecureRandom;)V

    :goto_0
    iput-object p1, p0, Ldl/r;->b:Ldl/l;

    goto :goto_1

    :cond_1
    check-cast p2, Ldl/o;

    invoke-virtual {p2}, Ldl/o;->e()[B

    move-result-object p1

    iput-object p1, p0, Ldl/r;->a:[B

    new-instance p1, Ldl/l;

    invoke-virtual {p2}, Ldl/k;->d()Ldl/m;

    move-result-object v0

    invoke-virtual {v0}, Ldl/m;->a()I

    move-result v0

    invoke-virtual {p2}, Ldl/k;->d()Ldl/m;

    move-result-object p2

    invoke-virtual {p2}, Ldl/m;->c()I

    move-result p2

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Ldl/l;-><init>(IILjava/security/SecureRandom;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public b([B)[B
    .locals 8

    iget-object v0, p0, Ldl/r;->b:Ldl/l;

    iget v1, v0, Ldl/l;->g:I

    new-array v2, v1, [B

    array-length v5, p1

    iget-object v6, p0, Ldl/r;->a:[B

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Ldl/l;->a(Z[B[BII[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public d([B[B)Z
    .locals 10

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    iget-object v2, p0, Ldl/r;->b:Ldl/l;

    iget v3, v2, Ldl/l;->b:I

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    if-eq v1, v3, :cond_0

    return v0

    :cond_0
    iget v1, v2, Ldl/l;->a:I

    new-array v5, v1, [B

    array-length v2, p2

    sub-int/2addr v2, v1

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    new-array v4, v2, [B

    invoke-static {p2, v9, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ldl/r;->b:Ldl/l;

    iget v1, v1, Ldl/l;->a:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, p2

    sub-int/2addr v3, v1

    sub-int/2addr v3, v9

    invoke-static {p2, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ldl/r;->b:Ldl/l;

    iget-object v7, p0, Ldl/r;->a:[B

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Ldl/l;->c(Z[B[B[B[BI)I

    move-result p1

    if-nez p1, :cond_1

    move v0, v9

    :cond_1
    return v0
.end method
