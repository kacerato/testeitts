.class public LXi/w;
.super LBi/G;
.source "SourceFile"


# instance fields
.field public d:LXi/z;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LXi/z;)V
    .locals 1

    invoke-virtual {p2}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, LXi/w;->d:LXi/z;

    return-void
.end method


# virtual methods
.method public c()LXi/z;
    .locals 1

    iget-object v0, p0, LXi/w;->d:LXi/z;

    return-object v0
.end method
