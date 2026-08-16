.class public Ldj/b;
.super Ldj/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lzh/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ldj/h;-><init>(Lzh/k;)V

    invoke-virtual {p0}, Ldj/b;->c()V

    return-void
.end method


# virtual methods
.method public b()Ldj/k;
    .locals 2

    new-instance v0, Ldj/k;

    iget-object v1, p0, Ldj/h;->a:Lzh/k;

    invoke-virtual {v1}, Lzh/k;->y()Lhi/w;

    move-result-object v1

    invoke-direct {v0, v1}, Ldj/k;-><init>(Lhi/w;)V

    return-object v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    iget-object v0, p0, Ldj/h;->a:Lzh/k;

    invoke-virtual {v0}, Lzh/k;->y()Lhi/w;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "DVCSRequest.data.messageImprint should be specified for CCPD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
