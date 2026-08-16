.class public LGi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/m;


# instance fields
.field public final a:LBi/y;

.field public final b:I

.field public final c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(LBi/D;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGi/a;->a:LBi/y;

    invoke-interface {p1}, LBi/D;->i()I

    move-result p1

    iput p1, p0, LGi/a;->b:I

    iput-object p2, p0, LGi/a;->c:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a([B)LBi/l;
    .locals 3

    array-length v0, p1

    iget v1, p0, LGi/a;->b:I

    div-int/lit8 v2, v1, 0x2

    if-gt v0, v2, :cond_0

    array-length v0, p1

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    iget-object v1, p0, LGi/a;->c:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, LBi/l;

    invoke-virtual {p0, v0, p1}, LGi/a;->c([B[B)[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, LBi/l;-><init>([B[B)V

    return-object v1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v0, "Message to be committed to too large for digest."

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LBi/l;[B)Z
    .locals 2

    array-length v0, p2

    invoke-virtual {p1}, LBi/l;->b()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, LGi/a;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, LBi/l;->b()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, LGi/a;->c([B[B)[B

    move-result-object p2

    invoke-virtual {p1}, LBi/l;->a()[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Message and witness secret lengths do not match."

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c([B[B)[B
    .locals 4

    iget-object v0, p0, LGi/a;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LGi/a;->a:LBi/y;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, LGi/a;->a:LBi/y;

    array-length v1, p2

    invoke-interface {p1, p2, v3, v1}, LBi/y;->update([BII)V

    iget-object p1, p0, LGi/a;->a:LBi/y;

    array-length v1, p2

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, LBi/y;->update(B)V

    iget-object p1, p0, LGi/a;->a:LBi/y;

    array-length p2, p2

    int-to-byte p2, p2

    invoke-interface {p1, p2}, LBi/y;->update(B)V

    iget-object p1, p0, LGi/a;->a:LBi/y;

    invoke-interface {p1, v0, v3}, LBi/y;->c([BI)I

    return-object v0
.end method
