.class public LFi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/math/BigInteger;

.field public static b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LFi/d;->a:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LFi/d;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p1, p2}, LFi/d;->i(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static b(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p2, p1}, LFi/d;->h(Ljava/math/BigInteger;I)[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, LBi/y;->update([BII)V

    invoke-interface {p0}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    invoke-interface {p0, p1, v0}, LBi/y;->c([BI)I

    new-instance p0, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static c(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LFi/d;->j(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static d(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LFi/d;->j(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static e(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LFi/d;->i(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static f(LBi/y;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;
    .locals 3

    invoke-interface {p0}, LBi/y;->f()I

    move-result p1

    new-array v0, p1, [B

    array-length v1, p3

    const/4 v2, 0x0

    invoke-interface {p0, p3, v2, v1}, LBi/y;->update([BII)V

    const/16 p3, 0x3a

    invoke-interface {p0, p3}, LBi/y;->update(B)V

    array-length p3, p4

    invoke-interface {p0, p4, v2, p3}, LBi/y;->update([BII)V

    invoke-interface {p0, v0, v2}, LBi/y;->c([BI)I

    array-length p3, p2

    invoke-interface {p0, p2, v2, p3}, LBi/y;->update([BII)V

    invoke-interface {p0, v0, v2, p1}, LBi/y;->update([BII)V

    invoke-interface {p0, v0, v2}, LBi/y;->c([BI)I

    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static g(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/16 p2, 0x100

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sget-object p2, LFi/d;->b:Ljava/math/BigInteger;

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p2, LFi/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lorg/bouncycastle/util/b;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/math/BigInteger;I)[B
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p0

    array-length v0, p0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    array-length v1, p0

    sub-int/2addr p1, v1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static i(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p2, p1}, LFi/d;->h(Ljava/math/BigInteger;I)[B

    move-result-object p2

    invoke-static {p3, p1}, LFi/d;->h(Ljava/math/BigInteger;I)[B

    move-result-object p1

    array-length p3, p2

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p3}, LBi/y;->update([BII)V

    array-length p2, p1

    invoke-interface {p0, p1, v0, p2}, LBi/y;->update([BII)V

    invoke-interface {p0}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    invoke-interface {p0, p1, v0}, LBi/y;->c([BI)I

    new-instance p0, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static j(LBi/y;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p2, p1}, LFi/d;->h(Ljava/math/BigInteger;I)[B

    move-result-object p2

    invoke-static {p3, p1}, LFi/d;->h(Ljava/math/BigInteger;I)[B

    move-result-object p3

    invoke-static {p4, p1}, LFi/d;->h(Ljava/math/BigInteger;I)[B

    move-result-object p1

    array-length p4, p2

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p4}, LBi/y;->update([BII)V

    array-length p2, p3

    invoke-interface {p0, p3, v0, p2}, LBi/y;->update([BII)V

    array-length p2, p1

    invoke-interface {p0, p1, v0, p2}, LBi/y;->update([BII)V

    invoke-interface {p0}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    invoke-interface {p0, p1, v0}, LBi/y;->c([BI)I

    new-instance p0, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static k(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, LFi/d;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/CryptoException;

    const-string p1, "Invalid public value: 0"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
