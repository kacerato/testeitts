.class public LXi/U;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LXi/W;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LXi/W;)V
    .locals 1

    invoke-static {p2}, LXi/U;->d(LXi/W;)I

    move-result v0

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LXi/U;->d:LXi/W;

    return-void
.end method

.method public static d(LXi/W;)I
    .locals 1

    invoke-virtual {p0}, LXi/W;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LXi/W;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LXi/W;->c()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public c()LXi/W;
    .locals 1

    iget-object v0, p0, LXi/U;->d:LXi/W;

    return-object v0
.end method
