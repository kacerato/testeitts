.class public LZj/c$d;
.super Lak/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lnj/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lak/c;-><init>()V

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

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lak/h;->j(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lck/a;

    if-ne p1, v0, :cond_1

    new-instance p1, Lck/a;

    iget-object v0, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {v0}, Lnj/c;->x()[B

    move-result-object v0

    iget-object v1, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {v1}, Lnj/c;->u()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p1, v0, v1}, Lck/a;-><init>([BI)V

    return-object p1

    :cond_1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {v0}, Lnj/c;->x()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_2
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

    :cond_3
    :goto_0
    invoke-static {}, Lak/h;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {p1}, Lnj/c;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lak/h;->f(Loh/B;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lck/a;

    iget-object v0, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {v0}, Lnj/c;->x()[B

    move-result-object v0

    iget-object v1, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {v1}, Lnj/c;->u()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p1, v0, v1}, Lck/a;-><init>([BI)V

    return-object p1
.end method

.method public engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lak/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LZj/c$d;->a:Lnj/c;

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unknown format specified"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lak/h;->k(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lak/h;->e(Ljava/security/spec/AlgorithmParameterSpec;)Lnj/c;

    move-result-object p1

    iput-object p1, p0, LZj/c$d;->a:Lnj/c;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lck/a;

    if-eqz v0, :cond_1

    new-instance v0, Lnj/c;

    check-cast p1, Lck/a;

    invoke-virtual {p1}, Lck/a;->c()[B

    move-result-object v1

    invoke-virtual {p1}, Lck/a;->b()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    invoke-direct {v0, v1, p1}, Lnj/c;-><init>([BI)V

    iput-object v0, p0, LZj/c$d;->a:Lnj/c;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInit([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lnj/c;->v(Ljava/lang/Object;)Lnj/c;

    move-result-object p1

    iput-object p1, p0, LZj/c$d;->a:Lnj/c;

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p2}, Lak/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lnj/c;->v(Ljava/lang/Object;)Lnj/c;

    move-result-object p1

    iput-object p1, p0, LZj/c$d;->a:Lnj/c;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unknown format specified"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "GCM"

    return-object v0
.end method
