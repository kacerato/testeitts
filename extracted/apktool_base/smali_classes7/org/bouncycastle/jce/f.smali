.class public Lorg/bouncycastle/jce/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;[BI[C[BLjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance p1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p4}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, LXh/u;->v(Ljava/lang/Object;)LXh/u;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([B[CLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, LXh/u;->v(Ljava/lang/Object;)LXh/u;

    move-result-object p0

    invoke-virtual {p0}, LXh/u;->u()LXh/g;

    move-result-object v0

    invoke-virtual {v0}, LXh/g;->u()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {v1}, Loh/B;->B([B)Loh/B;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, LXh/g;

    invoke-virtual {v0}, LXh/g;->v()Loh/x;

    move-result-object v0

    new-instance v4, Loh/C0;

    invoke-direct {v4, v1}, Loh/C0;-><init>([B)V

    invoke-direct {v3, v0, v4}, LXh/g;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {p0}, LXh/u;->x()LXh/n;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, LXh/n;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v3}, LXh/g;->u()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v8

    invoke-virtual {p0}, LXh/n;->x()Lhi/w;

    move-result-object v1

    invoke-virtual {v1}, Lhi/w;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-virtual {p0}, LXh/n;->y()[B

    move-result-object v5

    move v6, v0

    move-object v7, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/jce/f;->a(Loh/x;[BI[C[BLjava/lang/String;)[B

    move-result-object p1

    new-instance p2, Lhi/b;

    invoke-virtual {p0}, LXh/n;->x()Lhi/w;

    move-result-object v1

    invoke-virtual {v1}, Lhi/w;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v4, Loh/A0;->c:Loh/A0;

    invoke-direct {p2, v1, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Lhi/w;

    invoke-direct {v1, p2, p1}, Lhi/w;-><init>(Lhi/b;[B)V

    new-instance p1, LXh/n;

    invoke-virtual {p0}, LXh/n;->y()[B

    move-result-object p0

    invoke-direct {p1, v1, p0, v0}, LXh/n;-><init>(Lhi/w;[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, LXh/u;

    invoke-direct {p0, v3, p1}, LXh/u;-><init>(LXh/g;LXh/n;)V

    invoke-virtual {p0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error constructing MAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
