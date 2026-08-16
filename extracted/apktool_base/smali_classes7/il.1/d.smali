.class public Lil/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lil/c;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 7

    iget-object v0, p0, Lil/d;->g:Lil/c;

    invoke-virtual {v0}, Lil/c;->c()Lil/g;

    move-result-object v0

    iget-object v0, v0, Lil/g;->c:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->o()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lil/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Lil/f;

    invoke-direct {v2, v0}, Lil/f;-><init>(Lbm/i;)V

    invoke-virtual {v2, v1}, Lil/f;->f([B)Lil/l;

    move-result-object v1

    iget-object v2, v1, Lil/l;->a:[B

    invoke-virtual {v0}, Lbm/i;->f()I

    move-result v3

    new-array v3, v3, [B

    iget-object v1, v1, Lil/l;->b:[B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Lbm/i;->m()I

    move-result v1

    new-array v4, v1, [B

    iget-object v6, p0, Lil/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v0}, Lbm/i;->j()I

    move-result v0

    invoke-static {v4, v5, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, LBi/c;

    new-instance v1, Lil/i;

    iget-object v4, p0, Lil/d;->g:Lil/c;

    invoke-virtual {v4}, Lil/c;->c()Lil/g;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lil/i;-><init>(Lil/g;[B)V

    new-instance v2, Lil/h;

    iget-object v4, p0, Lil/d;->g:Lil/c;

    invoke-virtual {v4}, Lil/c;->c()Lil/g;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lil/h;-><init>(Lil/g;[B)V

    invoke-direct {v0, v1, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lil/c;

    iput-object v0, p0, Lil/d;->g:Lil/c;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lil/d;->h:Ljava/security/SecureRandom;

    return-void
.end method
