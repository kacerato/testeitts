.class public Lorg/bouncycastle/openssl/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/openssl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/openssl/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/openssl/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lorg/bouncycastle/openssl/g;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    new-instance v4, Lorg/bouncycastle/openssl/g;

    new-instance v5, Lhi/h0;

    new-instance v6, Lhi/b;

    sget-object v7, Lki/r;->s6:Loh/x;

    new-instance v8, Lhi/u;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lhi/u;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v6, v7, v8}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v5, v6, v3}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    new-instance v3, LXh/v;

    new-instance v6, Lhi/b;

    new-instance v8, Lhi/u;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v8, v0, v1, v2}, Lhi/u;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v6, v7, v8}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v3, v6, p1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/openssl/g;-><init>(Lhi/h0;LXh/v;)V

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/openssl/PEMException;

    const-string v0, "malformed sequence in DSA private key"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem creating DSA private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_1
    throw p1
.end method
