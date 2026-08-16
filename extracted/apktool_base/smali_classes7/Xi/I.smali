.class public LXi/I;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LXi/G;


# direct methods
.method public constructor <init>(LXi/G;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, LXi/I;->d:LXi/G;

    return-void
.end method


# virtual methods
.method public c()LXi/G;
    .locals 1

    iget-object v0, p0, LXi/I;->d:LXi/G;

    return-object v0
.end method
