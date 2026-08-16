.class public Lorg/bouncycastle/openssl/i$d;
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
    name = "d"
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
    invoke-direct {p0}, Lorg/bouncycastle/openssl/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lorg/bouncycastle/openssl/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-static {p1}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p1

    new-instance v0, Lhi/b;

    sget-object v1, Lki/r;->I5:Loh/x;

    invoke-virtual {p1}, LZh/a;->y()Loh/v;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, LXh/v;

    invoke-direct {v1, v0, p1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    invoke-virtual {p1}, LZh/a;->z()Loh/c;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lhi/h0;

    invoke-virtual {p1}, LZh/a;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lhi/h0;-><init>(Lhi/b;[B)V

    new-instance p1, Lorg/bouncycastle/openssl/g;

    invoke-direct {p1, v2, v1}, Lorg/bouncycastle/openssl/g;-><init>(Lhi/h0;LXh/v;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/openssl/g;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/openssl/g;-><init>(Lhi/h0;LXh/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem creating EC private key: "

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
