.class public Lcm/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Luh/G;


# direct methods
.method public constructor <init>(Luh/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/e;->a:Luh/G;

    return-void
.end method


# virtual methods
.method public final a(Loh/J;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/e;->a:Luh/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luh/G;->v()Loh/Q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/e;->a(Loh/J;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/e;->a:Luh/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luh/G;->y()Loh/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/e;->a(Loh/J;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Luh/c;
    .locals 1

    iget-object v0, p0, Lcm/e;->a:Luh/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luh/G;->z()Luh/c;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(LQk/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/e;->a:Luh/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luh/G;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iget-object v0, p0, Lcm/e;->a:Luh/G;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to initialise calculator from metaData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
