.class public LRi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/B;


# static fields
.field public static final d:Ljava/math/BigInteger;

.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public final a:I

.field public b:LBi/w;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LRi/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LRi/e;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILBi/w;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LRi/e;->a:I

    iput-object p2, p0, LRi/e;->b:LBi/w;

    iput-object p3, p0, LRi/e;->c:Ljava/security/SecureRandom;

    return-void
.end method

.method public static b(LBi/w;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance p2, LXi/n0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, LXi/n0;-><init>([B[B)V

    invoke-interface {p0, p2}, LBi/w;->c(LBi/x;)V

    new-array p1, p3, [B

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3}, LBi/w;->a([BII)I

    return-object p1
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 5

    check-cast p1, LXi/F0;

    invoke-virtual {p1}, LXi/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LHi/c;

    invoke-virtual {p1}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result v1

    sget-object v2, LBi/o;->ENCRYPTION:LBi/o;

    const-string v3, "RSAKem"

    invoke-direct {v0, v3, v1, p1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p1}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, LRi/e;->d:Ljava/math/BigInteger;

    sget-object v2, LRi/e;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LRi/e;->c:Ljava/security/SecureRandom;

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/b;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-static {v2, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance v2, LRi/g;

    iget-object v3, p0, LRi/e;->b:LBi/w;

    iget v4, p0, LRi/e;->a:I

    invoke-static {v3, v0, v1, v4}, LRi/e;->b(LBi/w;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-direct {v2, v0, p1}, LRi/g;-><init>([B[B)V

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key required for encryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
