.class public LUk/a;
.super LSk/e;
.source "SourceFile"


# static fields
.field public static h:Ljava/util/Hashtable;


# instance fields
.field public g:Ldk/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, LUk/a;->h:Ljava/util/Hashtable;

    sget-object v1, LXh/t;->H0:Loh/x;

    const-string v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LUk/a;->h:Ljava/util/Hashtable;

    sget-object v1, Lki/r;->s6:Loh/x;

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LUk/a;->h:Ljava/util/Hashtable;

    sget-object v1, Lki/r;->I5:Loh/x;

    const-string v2, "EC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LSk/e;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, LSk/e;->n()LXh/e;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/e;-><init>(LXh/e;)V

    new-instance p1, Ldk/d;

    invoke-direct {p1}, Ldk/d;-><init>()V

    iput-object p1, p0, LUk/a;->g:Ldk/f;

    return-void
.end method

.method public constructor <init>(LXh/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LSk/e;-><init>(LXh/e;)V

    new-instance p1, Ldk/d;

    invoke-direct {p1}, Ldk/d;-><init>()V

    iput-object p1, p0, LUk/a;->g:Ldk/f;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, LSk/e;-><init>([B)V

    new-instance p1, Ldk/d;

    invoke-direct {p1}, Ldk/d;-><init>()V

    iput-object p1, p0, LUk/a;->g:Ldk/f;

    return-void
.end method


# virtual methods
.method public o()Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, LSk/e;->i()Lhi/h0;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, LUk/a;->g:Ldk/f;

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ldk/f;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    sget-object v3, LUk/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v2, LUk/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, LUk/a;->g:Ldk/f;

    invoke-interface {v2, v0}, Ldk/f;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    throw v2
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "error extracting key encoding"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "error decoding public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Ljava/lang/String;)LUk/a;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LUk/a;->g:Ldk/f;

    return-object p0
.end method

.method public q(Ljava/security/Provider;)LUk/a;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LUk/a;->g:Ldk/f;

    return-object p0
.end method
