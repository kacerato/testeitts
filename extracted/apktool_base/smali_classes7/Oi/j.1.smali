.class public LOi/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:LXi/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 5

    sget-object v0, LOi/i;->a:LOi/i;

    iget-object v1, p0, LOi/j;->g:LXi/m;

    invoke-virtual {v1}, LXi/m;->c()LXi/q;

    move-result-object v1

    iget-object v2, p0, LOi/j;->g:LXi/m;

    invoke-virtual {v2}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LOi/i;->a(LXi/q;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LOi/i;->b(LXi/q;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v3, LBi/c;

    new-instance v4, LXi/s;

    invoke-direct {v4, v0, v1}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    new-instance v0, LXi/r;

    invoke-direct {v0, v2, v1}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    invoke-direct {v3, v4, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v3
.end method

.method public b(LBi/G;)V
    .locals 4

    check-cast p1, LXi/m;

    iput-object p1, p0, LOi/j;->g:LXi/m;

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/m;->c()LXi/q;

    move-result-object p1

    invoke-virtual {p1}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result p1

    iget-object v1, p0, LOi/j;->g:LXi/m;

    invoke-virtual {v1}, LXi/m;->c()LXi/q;

    move-result-object v1

    sget-object v2, LBi/o;->KEYGEN:LBi/o;

    const-string v3, "DHKeyGen"

    invoke-direct {v0, v3, p1, v1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method
