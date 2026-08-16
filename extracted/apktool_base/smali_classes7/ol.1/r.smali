.class public Lol/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljava/security/SecureRandom;

.field public h:Lol/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lol/r;->g:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method


# virtual methods
.method public a()LBi/c;
    .locals 8

    iget-object v0, p0, Lol/r;->h:Lol/t;

    invoke-virtual {v0}, Lol/t;->b()Lol/o;

    move-result-object v0

    instance-of v1, v0, Lol/o$a;

    if-eqz v1, :cond_0

    iget v1, v0, Lol/o;->b:I

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lol/r;->c(I)[B

    move-result-object v1

    iget v2, v0, Lol/o;->b:I

    new-array v3, v2, [B

    new-array v4, v2, [B

    new-array v5, v2, [B

    const/4 v6, 0x0

    invoke-static {v1, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lol/o;->b:I

    invoke-static {v1, v2, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lol/o;->b:I

    shl-int/lit8 v7, v2, 0x1

    invoke-static {v1, v7, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lol/n;

    invoke-direct {v1, v3, v4}, Lol/n;-><init>([B[B)V

    goto :goto_0

    :cond_0
    new-instance v1, Lol/n;

    iget v2, v0, Lol/o;->b:I

    invoke-direct {p0, v2}, Lol/r;->c(I)[B

    move-result-object v2

    iget v3, v0, Lol/o;->b:I

    invoke-direct {p0, v3}, Lol/r;->c(I)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lol/n;-><init>([B[B)V

    iget v2, v0, Lol/o;->b:I

    invoke-direct {p0, v2}, Lol/r;->c(I)[B

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Lol/o;->g([B)V

    new-instance v2, Lol/j;

    new-instance v3, Lol/c;

    iget-object v4, v1, Lol/n;->a:[B

    invoke-direct {v3, v0, v4, v5}, Lol/c;-><init>(Lol/o;[B[B)V

    iget-object v0, v3, Lol/c;->e:[B

    invoke-direct {v2, v5, v0}, Lol/j;-><init>([B[B)V

    new-instance v0, LBi/c;

    new-instance v3, Lol/v;

    iget-object v4, p0, Lol/r;->h:Lol/t;

    invoke-direct {v3, v4, v2}, Lol/v;-><init>(Lol/t;Lol/j;)V

    new-instance v4, Lol/u;

    iget-object v5, p0, Lol/r;->h:Lol/t;

    invoke-direct {v4, v5, v1, v2}, Lol/u;-><init>(Lol/t;Lol/n;Lol/j;)V

    invoke-direct {v0, v3, v4}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 1

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lol/r;->g:Ljava/security/SecureRandom;

    check-cast p1, Lol/q;

    invoke-virtual {p1}, Lol/q;->c()Lol/t;

    move-result-object p1

    iput-object p1, p0, Lol/r;->h:Lol/t;

    return-void
.end method
