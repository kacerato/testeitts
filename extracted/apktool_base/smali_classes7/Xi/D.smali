.class public LXi/D;
.super LXi/G;
.source "SourceFile"


# instance fields
.field public final m:[B


# direct methods
.method public constructor <init>(LXi/G;[B)V
    .locals 6

    invoke-virtual {p1}, LXi/G;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p1}, LXi/G;->b()Ljk/i;

    move-result-object v2

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, LXi/G;->f()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/D;->m:[B

    return-void
.end method


# virtual methods
.method public j()[B
    .locals 1

    iget-object v0, p0, LXi/D;->m:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
