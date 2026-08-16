.class public LZj/l$b;
.super LZj/l$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Loh/x;

.field public d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LZj/l$c;-><init>()V

    sget-object v0, Lyh/a;->h:Loh/x;

    iput-object v0, p0, LZj/l$b;->c:Loh/x;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_0

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, p0, LZj/l$b;->d:[B

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_0
    const-class v0, Lck/j;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance p1, Lck/j;

    iget-object v0, p0, LZj/l$b;->c:Loh/x;

    iget-object v1, p0, LZj/l$b;->d:[B

    invoke-direct {p1, v0, v1}, Lck/j;-><init>(Loh/x;[B)V

    return-object p1
.end method

.method public e()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lyh/d;

    iget-object v1, p0, LZj/l$b;->d:[B

    iget-object v2, p0, LZj/l$b;->c:Loh/x;

    invoke-direct {v0, v1, v2}, Lyh/d;-><init>([BLoh/x;)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, LZj/l$b;->d:[B

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lck/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lck/j;

    invoke-virtual {v0}, Lck/j;->a()[B

    move-result-object v0

    iput-object v0, p0, LZj/l$b;->d:[B

    :try_start_0
    check-cast p1, Lck/j;

    invoke-virtual {p1}, Lck/j;->c()[B

    move-result-object p1

    invoke-static {p1}, LZj/l$c;->d([B)Loh/x;

    move-result-object p1

    iput-object p1, p0, LZj/l$b;->c:Loh/x;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST 28147 IV Parameters"

    return-object v0
.end method

.method public f([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    instance-of v0, p1, Loh/y;

    if-eqz v0, :cond_0

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, LZj/l$b;->d:[B

    goto :goto_0

    :cond_0
    instance-of v0, p1, Loh/E;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lyh/d;->w(Ljava/lang/Object;)Lyh/d;

    move-result-object p1

    invoke-virtual {p1}, Lyh/d;->u()Loh/x;

    move-result-object v0

    iput-object v0, p0, LZj/l$b;->c:Loh/x;

    invoke-virtual {p1}, Lyh/d;->v()[B

    move-result-object p1

    iput-object p1, p0, LZj/l$b;->d:[B

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to recognize parameters"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
