.class public Lfl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# instance fields
.field public a:Lfl/g;

.field public b:Lfl/h;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, Lfl/g;

    iput-object p1, p0, Lfl/i;->a:Lfl/g;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfl/i;->c:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_0
    check-cast p2, Lfl/g;

    iput-object p2, p0, Lfl/i;->a:Lfl/g;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast p2, Lfl/h;

    iput-object p2, p0, Lfl/i;->b:Lfl/h;

    :goto_1
    return-void
.end method

.method public b([B)[B
    .locals 9

    iget-object v0, p0, Lfl/i;->a:Lfl/g;

    invoke-virtual {v0}, Lfl/e;->d()Lfl/f;

    move-result-object v0

    invoke-virtual {v0}, Lfl/f;->b()Lfl/a;

    move-result-object v1

    iget v0, v1, Lfl/a;->i:I

    iget v2, v1, Lfl/a;->e:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v1, Lfl/a;->j:I

    sub-int v3, v0, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    array-length v2, p1

    add-int/2addr v2, v0

    new-array v8, v2, [B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lfl/i;->c:Ljava/security/SecureRandom;

    array-length v6, p1

    iget-object v0, p0, Lfl/i;->a:Lfl/g;

    iget-object v7, v0, Lfl/g;->d:[B

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lfl/a;->x0(Ljava/security/SecureRandom;[B[BII[B)V

    return-object v8
.end method

.method public d([B[B)Z
    .locals 2

    iget-object v0, p0, Lfl/i;->b:Lfl/h;

    invoke-virtual {v0}, Lfl/e;->d()Lfl/f;

    move-result-object v0

    invoke-virtual {v0}, Lfl/f;->b()Lfl/a;

    move-result-object v0

    iget-object v1, p0, Lfl/i;->b:Lfl/h;

    invoke-virtual {v1}, Lfl/h;->e()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lfl/a;->y([B[B[B)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
