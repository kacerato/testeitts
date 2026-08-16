.class public Loi/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LQk/y;

.field public b:LQk/F;

.field public c:Loi/m;


# direct methods
.method public constructor <init>(LQk/y;LQk/F;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Loi/l;-><init>(LQk/y;LQk/F;Loi/m;)V

    return-void
.end method

.method public constructor <init>(LQk/y;LQk/F;Loi/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/l;->a:LQk/y;

    iput-object p2, p0, Loi/l;->b:LQk/F;

    iput-object p3, p0, Loi/l;->c:Loi/m;

    return-void
.end method


# virtual methods
.method public a(LXh/v;)Lwh/m;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, LSk/o;

    invoke-direct {v0, p1}, LSk/o;-><init>(LXh/v;)V

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v2

    iget-object p1, p0, Loi/l;->b:LQk/F;

    invoke-interface {p1}, LQk/F;->a()Lhi/b;

    move-result-object v3

    :try_start_0
    iget-object p1, p0, Loi/l;->b:LQk/F;

    invoke-virtual {v0, p1}, LSk/o;->a(LQk/F;)LSk/n;

    move-result-object p1

    new-instance v4, Loh/r0;

    iget-object v0, p0, Loi/l;->a:LQk/y;

    iget-object v1, p0, Loi/l;->b:LQk/F;

    invoke-interface {v1}, LQk/F;->getKey()LQk/r;

    move-result-object v1

    invoke-interface {v0, v1}, LQk/y;->b(LQk/r;)[B

    move-result-object v0

    invoke-direct {v4, v0}, Loh/r0;-><init>([B)V

    iget-object v0, p0, Loi/l;->a:LQk/y;

    invoke-interface {v0}, LQk/y;->a()Lhi/b;

    move-result-object v5

    new-instance v0, Lwh/m;

    new-instance v7, Loh/r0;

    invoke-virtual {p1}, LSk/n;->c()[B

    move-result-object p1

    invoke-direct {v7, p1}, Loh/r0;-><init>([B)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lwh/m;-><init>(Lhi/b;Lhi/b;Loh/c;Lhi/b;Loh/y;Loh/c;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot wrap key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot encode key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lli/h;)Lwh/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lli/h;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/l;->e([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/l;->d([B)Lwh/m;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot encode certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c([C)Lwh/m;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/w;->o([C)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/l;->e([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/l;->d([B)Lwh/m;

    move-result-object p1

    return-object p1
.end method

.method public final d([B)Lwh/m;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Loi/l;->b:LQk/F;

    invoke-interface {v1, v0}, LQk/F;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Loi/l;->b:LQk/F;

    invoke-interface {p1}, LQk/F;->a()Lhi/b;

    move-result-object v3

    :try_start_1
    iget-object p1, p0, Loi/l;->a:LQk/y;

    iget-object v1, p0, Loi/l;->b:LQk/F;

    invoke-interface {v1}, LQk/F;->getKey()LQk/r;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/y;->b(LQk/r;)[B

    new-instance v4, Loh/r0;

    iget-object p1, p0, Loi/l;->a:LQk/y;

    iget-object v1, p0, Loi/l;->b:LQk/F;

    invoke-interface {v1}, LQk/F;->getKey()LQk/r;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/y;->b(LQk/r;)[B

    move-result-object p1

    invoke-direct {v4, p1}, Loh/r0;-><init>([B)V
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Loi/l;->a:LQk/y;

    invoke-interface {p1}, LQk/y;->a()Lhi/b;

    move-result-object v5

    new-instance v7, Loh/r0;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v7, p1}, Loh/r0;-><init>([B)V

    new-instance p1, Lwh/m;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lwh/m;-><init>(Lhi/b;Lhi/b;Loh/c;Lhi/b;Loh/y;Loh/c;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot wrap key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot process data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e([B)[B
    .locals 1

    iget-object v0, p0, Loi/l;->c:Loi/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Loi/m;->b([B)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method
