.class public LXi/K;
.super LXi/G;
.source "SourceFile"


# instance fields
.field public m:Loh/x;


# direct methods
.method public constructor <init>(Loh/x;LXi/G;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, LXi/G;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p2}, LXi/G;->b()Ljk/i;

    move-result-object v2

    invoke-virtual {p2}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, LXi/G;->f()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, LXi/K;->m:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;)V
    .locals 7

    .line 2
    sget-object v5, Ljk/d;->b:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, LXi/K;-><init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, LXi/K;-><init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 4
    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, LXi/K;->m:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/x;Lki/l;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, LXi/G;-><init>(Lki/l;)V

    iput-object p1, p0, LXi/K;->m:Loh/x;

    return-void
.end method


# virtual methods
.method public j()Loh/x;
    .locals 1

    iget-object v0, p0, LXi/K;->m:Loh/x;

    return-object v0
.end method
