.class public Lzi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public final b:Lorg/bouncycastle/cms/O;


# direct methods
.method public constructor <init>(Luh/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cmc/CMCException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/O;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/O;-><init>(Luh/o;)V

    iput-object v0, p0, Lzi/a;->b:Lorg/bouncycastle/cms/O;
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->l()Lorg/bouncycastle/cms/O0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->i()Lorg/bouncycastle/cms/V;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/cmc/CMCException;

    const-string v0, "malformed response: Signed Content found"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/cmc/CMCException;

    const-string v0, "malformed response: SignerInfo structures found"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cmc/CMCException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cmc/CMCException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lzi/a;->c([B)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lzi/a;-><init>(Luh/o;)V

    return-void
.end method

.method public static c([B)Luh/o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cmc/CMCException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cmc/CMCException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()Lorg/bouncycastle/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzi/a;->b:Lorg/bouncycastle/cms/O;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->d()Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/bouncycastle/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzi/a;->b:Lorg/bouncycastle/cms/O;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->e()Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzi/a;->b:Lorg/bouncycastle/cms/O;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/O;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
