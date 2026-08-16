.class public Lrl/b;
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

    iput-object p1, p0, Lrl/b;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 9

    check-cast p1, Lrl/g;

    new-instance v0, Lcl/e;

    iget-object v1, p0, Lrl/b;->a:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lcl/e;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {p1}, Lrl/g;->d()Lcl/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/e;->a(LXi/c;)LBi/P;

    move-result-object v0

    new-instance v1, LCi/n;

    invoke-direct {v1}, LCi/n;-><init>()V

    invoke-interface {v0}, LBi/P;->f()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v1}, LCi/n;->c()I

    move-result v4

    add-int/2addr v3, v4

    new-array v4, v3, [B

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lorg/bouncycastle/util/a;->n([B)V

    new-instance v5, LOi/P;

    invoke-direct {v5}, LOi/P;-><init>()V

    new-instance v7, LXi/M0;

    iget-object v8, p0, Lrl/b;->a:Ljava/security/SecureRandom;

    invoke-direct {v7, v8}, LXi/M0;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v5, v7}, LOi/P;->b(LBi/G;)V

    invoke-virtual {v5}, LOi/P;->a()LBi/c;

    move-result-object v5

    invoke-virtual {v5}, LBi/c;->a()LXi/c;

    move-result-object v7

    invoke-virtual {v1, v7}, LCi/n;->a(LBi/k;)V

    invoke-virtual {p1}, Lrl/g;->e()LXi/O0;

    move-result-object v7

    array-length v2, v2

    invoke-virtual {v1, v7, v4, v2}, LCi/n;->b(LBi/k;[BI)V

    invoke-virtual {v5}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, LXi/O0;

    new-instance v2, LIi/N;

    const/16 v5, 0x100

    invoke-direct {v2, v5}, LIi/N;-><init>(I)V

    const-string v5, "\\.//^\\"

    invoke-static {v5}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x6

    invoke-virtual {v2, v5, v6, v7}, LIi/v;->update([BII)V

    invoke-virtual {v2, v4, v6, v3}, LIi/v;->update([BII)V

    invoke-virtual {v1}, LXi/O0;->getEncoded()[B

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v6, v4}, LIi/v;->update([BII)V

    invoke-virtual {p1}, Lrl/g;->e()LXi/O0;

    move-result-object p1

    invoke-virtual {p1}, LXi/O0;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v2, p1, v6, v4}, LIi/v;->update([BII)V

    new-array p1, v4, [B

    invoke-virtual {v2, p1, v6}, LIi/N;->c([BI)I

    new-instance v2, Lpl/e;

    invoke-interface {v0}, LBi/P;->e()[B

    move-result-object v0

    invoke-virtual {v1}, LXi/O0;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lpl/e;-><init>([B[B)V

    return-object v2
.end method
