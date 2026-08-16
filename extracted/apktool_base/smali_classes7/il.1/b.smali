.class public Lil/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/B;


# instance fields
.field public final a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil/b;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 10

    check-cast p1, Lil/i;

    invoke-virtual {p1}, Lil/e;->d()Lil/g;

    move-result-object v0

    iget-object v0, v0, Lil/g;->c:Lbm/i;

    new-instance v1, Lil/j;

    invoke-direct {v1, v0}, Lil/j;-><init>(Lbm/i;)V

    new-instance v2, Lil/f;

    invoke-direct {v2, v0}, Lil/f;-><init>(Lbm/i;)V

    invoke-virtual {v0}, Lbm/i;->h()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v0}, Lbm/i;->r()I

    move-result v5

    new-array v5, v5, [B

    iget-object v6, p0, Lil/b;->a:Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v1, v5}, Lil/j;->f([B)Lil/m;

    move-result-object v1

    invoke-virtual {v1}, Lil/m;->d()Lam/e;

    move-result-object v5

    invoke-virtual {v1}, Lil/m;->c()Lam/e;

    move-result-object v1

    invoke-virtual {v0}, Lbm/i;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Lam/e;->u(I)[B

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Lbm/i;->l()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v1, v6}, Lam/e;->u(I)[B

    move-result-object v6

    invoke-virtual {v0}, Lbm/i;->l()I

    move-result v7

    array-length v9, v6

    invoke-static {v6, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, LIi/N;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, LIi/N;-><init>(I)V

    invoke-virtual {v6, v4, v8, v3}, LIi/v;->update([BII)V

    invoke-virtual {v6}, LIi/v;->f()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v6, v3, v8}, LIi/N;->c([BI)I

    invoke-virtual {v5}, Lam/e;->z()V

    iget-object p1, p1, Lil/i;->d:[B

    invoke-virtual {v2, v5, v1, p1}, Lil/f;->e(Lam/e;Lam/e;[B)[B

    move-result-object p1

    invoke-virtual {v0}, Lbm/i;->t()I

    move-result v0

    invoke-static {v3, v8, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-static {v3}, Lorg/bouncycastle/util/a;->n([B)V

    new-instance v1, Lpl/e;

    invoke-direct {v1, v0, p1}, Lpl/e;-><init>([B[B)V

    return-object v1
.end method
