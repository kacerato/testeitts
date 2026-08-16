.class public Lgl/f;
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

    iput-object p1, p0, Lgl/f;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 13

    check-cast p1, Lgl/l;

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object v0

    invoke-virtual {v0}, Lgl/j;->b()Lgl/d;

    move-result-object v1

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object v0

    invoke-virtual {v0}, Lgl/j;->k()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object v2

    invoke-virtual {v2}, Lgl/j;->h()I

    move-result v2

    new-array v9, v2, [B

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object v2

    invoke-virtual {v2}, Lgl/j;->f()I

    move-result v2

    new-array v10, v2, [B

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object v2

    invoke-virtual {v2}, Lgl/j;->k()I

    move-result v2

    new-array v11, v2, [B

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object v2

    invoke-virtual {v2}, Lgl/j;->j()I

    move-result v2

    new-array v12, v2, [B

    invoke-virtual {p1}, Lgl/l;->e()[B

    move-result-object v6

    const/16 v2, 0x30

    new-array v7, v2, [B

    iget-object v2, p0, Lgl/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object v2, v9

    move-object v3, v10

    move-object v4, v0

    move-object v5, v11

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lgl/d;->c([B[B[B[B[B[B[B)V

    invoke-static {v9, v10, v11, v12}, Lorg/bouncycastle/util/a;->D([B[B[B[B)[B

    move-result-object v1

    new-instance v2, Lpl/e;

    invoke-virtual {p1}, Lgl/i;->d()Lgl/j;

    move-result-object p1

    invoke-virtual {p1}, Lgl/j;->c()I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lpl/e;-><init>([B[B)V

    return-object v2
.end method
