.class public Ldj/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQk/p;


# direct methods
.method public constructor <init>(LQk/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj/l;->a:LQk/p;

    return-void
.end method


# virtual methods
.method public a([B)Ldj/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldj/l;->a:LQk/p;

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance p1, Ldj/k;

    new-instance v0, Lhi/w;

    iget-object v1, p0, Ldj/l;->a:LQk/p;

    invoke-interface {v1}, LQk/p;->a()Lhi/b;

    move-result-object v1

    iget-object v2, p0, Ldj/l;->a:LQk/p;

    invoke-interface {v2}, LQk/p;->b()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhi/w;-><init>(Lhi/b;[B)V

    invoke-direct {p1, v0}, Ldj/k;-><init>(Lhi/w;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/dvcs/DVCSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to build MessageImprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
