.class public LOi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public g:LXi/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LOi/d;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 3

    iget-object v0, p0, LOi/d;->g:LXi/f;

    invoke-virtual {v0}, LXi/f;->c()LXi/h;

    move-result-object v0

    iget-object v1, p0, LOi/d;->g:LXi/f;

    invoke-virtual {v1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LOi/d;->d(Ljava/security/SecureRandom;LXi/h;)LXi/i;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LOi/d;->c(LXi/h;LXi/i;)LXi/j;

    move-result-object v0

    invoke-virtual {v1, v0}, LXi/i;->k(LXi/j;)V

    new-instance v2, LBi/c;

    invoke-direct {v2, v0, v1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public b(LBi/G;)V
    .locals 4

    check-cast p1, LXi/f;

    iput-object p1, p0, LOi/d;->g:LXi/f;

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/f;->c()LXi/h;

    move-result-object p1

    invoke-virtual {p1}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result p1

    iget-object v1, p0, LOi/d;->g:LXi/f;

    invoke-virtual {v1}, LXi/f;->c()LXi/h;

    move-result-object v1

    sget-object v2, LBi/o;->KEYGEN:LBi/o;

    const-string v3, "CramerShoupKeyGen"

    invoke-direct {v0, v3, p1, v1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public final c(LXi/h;LXi/i;)LXi/j;
    .locals 6

    invoke-virtual {p1}, LXi/h;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, LXi/h;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, LXi/i;->f()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, LXi/i;->g()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, LXi/i;->h()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, LXi/i;->i()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, LXi/i;->j()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance v0, LXi/j;

    invoke-direct {v0, p1, v3, v1, p2}, LXi/j;-><init>(LXi/h;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final d(Ljava/security/SecureRandom;LXi/h;)LXi/i;
    .locals 9

    invoke-virtual {p2}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v8, LXi/i;

    invoke-virtual {p0, v0, p1}, LOi/d;->e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v0, p1}, LOi/d;->e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v0, p1}, LOi/d;->e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v0, p1}, LOi/d;->e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v0, p1}, LOi/d;->e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    move-object v1, v8

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, LXi/i;-><init>(LXi/h;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v8
.end method

.method public final e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    sget-object v0, LOi/d;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/b;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
