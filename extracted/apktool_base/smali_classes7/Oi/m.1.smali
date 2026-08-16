.class public LOi/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public g:LXi/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LOi/m;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x2

    :cond_0
    sget-object v1, LOi/m;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/util/b;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljk/B;->i(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_0

    return-object v1
.end method


# virtual methods
.method public a()LBi/c;
    .locals 5

    iget-object v0, p0, LOi/m;->g:LXi/w;

    invoke-virtual {v0}, LXi/w;->c()LXi/z;

    move-result-object v0

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, LOi/m;->g:LXi/w;

    invoke-virtual {v2}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v1, v2}, LOi/m;->d(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3, v1}, LOi/m;->c(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, LBi/c;

    new-instance v4, LXi/B;

    invoke-direct {v4, v2, v0}, LXi/B;-><init>(Ljava/math/BigInteger;LXi/z;)V

    new-instance v2, LXi/A;

    invoke-direct {v2, v1, v0}, LXi/A;-><init>(Ljava/math/BigInteger;LXi/z;)V

    invoke-direct {v3, v4, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v3
.end method

.method public b(LBi/G;)V
    .locals 4

    check-cast p1, LXi/w;

    iput-object p1, p0, LOi/m;->g:LXi/w;

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/w;->c()LXi/z;

    move-result-object p1

    invoke-virtual {p1}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result p1

    iget-object v1, p0, LOi/m;->g:LXi/w;

    invoke-virtual {v1}, LXi/w;->c()LXi/z;

    move-result-object v1

    sget-object v2, LBi/o;->KEYGEN:LBi/o;

    const-string v3, "DSAKeyGen"

    invoke-direct {v0, v3, p1, v1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method
