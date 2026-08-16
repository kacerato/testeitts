.class public LOi/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:LXi/U;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 7

    sget-object v0, LOi/i;->a:LOi/i;

    iget-object v1, p0, LOi/s;->g:LXi/U;

    invoke-virtual {v1}, LXi/U;->c()LXi/W;

    move-result-object v1

    new-instance v2, LXi/q;

    invoke-virtual {v1}, LXi/W;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, LXi/W;->a()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, LXi/W;->b()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iget-object v3, p0, LOi/s;->g:LXi/U;

    invoke-virtual {v3}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LOi/i;->a(LXi/q;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LOi/i;->b(LXi/q;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, LBi/c;

    new-instance v4, LXi/Y;

    invoke-direct {v4, v0, v1}, LXi/Y;-><init>(Ljava/math/BigInteger;LXi/W;)V

    new-instance v0, LXi/X;

    invoke-direct {v0, v3, v1}, LXi/X;-><init>(Ljava/math/BigInteger;LXi/W;)V

    invoke-direct {v2, v4, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 4

    check-cast p1, LXi/U;

    iput-object p1, p0, LOi/s;->g:LXi/U;

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/U;->c()LXi/W;

    move-result-object p1

    invoke-virtual {p1}, LXi/W;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result p1

    iget-object v1, p0, LOi/s;->g:LXi/U;

    invoke-virtual {v1}, LXi/U;->c()LXi/W;

    move-result-object v1

    sget-object v2, LBi/o;->KEYGEN:LBi/o;

    const-string v3, "ElGamalKeyGen"

    invoke-direct {v0, v3, p1, v1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method
