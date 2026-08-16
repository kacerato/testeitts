.class public Ldj/r;
.super Ldj/h;
.source "SourceFile"


# instance fields
.field public b:Lorg/bouncycastle/cms/O;


# direct methods
.method public constructor <init>(Lzh/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ldj/h;-><init>(Lzh/k;)V

    invoke-virtual {p0}, Ldj/r;->d()V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, Ldj/h;->a:Lzh/k;

    invoke-virtual {v0}, Lzh/k;->x()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/bouncycastle/cms/O;
    .locals 1

    iget-object v0, p0, Ldj/r;->b:Lorg/bouncycastle/cms/O;

    return-object v0
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    iget-object v0, p0, Ldj/r;->b:Lorg/bouncycastle/cms/O;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldj/h;->a:Lzh/k;

    invoke-virtual {v0}, Lzh/k;->x()Loh/y;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/O;

    iget-object v1, p0, Ldj/h;->a:Lzh/k;

    invoke-virtual {v1}, Lzh/k;->x()Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/O;-><init>([B)V

    iput-object v0, p0, Ldj/r;->b:Lorg/bouncycastle/cms/O;
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v2, "Can\'t read CMS SignedData from input"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "DVCSRequest.data.message should be specified for VSD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
