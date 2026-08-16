.class public LXi/m;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LXi/q;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LXi/q;)V
    .locals 1

    invoke-static {p2}, LXi/m;->d(LXi/q;)I

    move-result v0

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LXi/m;->d:LXi/q;

    return-void
.end method

.method public static d(LXi/q;)I
    .locals 1

    invoke-virtual {p0}, LXi/q;->d()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LXi/q;->d()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public c()LXi/q;
    .locals 1

    iget-object v0, p0, LXi/m;->d:LXi/q;

    return-object v0
.end method
