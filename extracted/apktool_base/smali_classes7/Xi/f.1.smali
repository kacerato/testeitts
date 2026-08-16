.class public LXi/f;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LXi/h;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LXi/h;)V
    .locals 1

    invoke-static {p2}, LXi/f;->d(LXi/h;)I

    move-result v0

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LXi/f;->d:LXi/h;

    return-void
.end method

.method public static d(LXi/h;)I
    .locals 0

    invoke-virtual {p0}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method


# virtual methods
.method public c()LXi/h;
    .locals 1

    iget-object v0, p0, LXi/f;->d:LXi/h;

    return-object v0
.end method
