.class public Ljj/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lij/u;
.implements Lij/v;
.implements Lij/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lij/u<",
        "Ljavax/net/ssl/SSLSession;",
        ">;",
        "Lij/v;",
        "Lij/t;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/net/ssl/SSLSocket;

.field public final b:Ljj/a;

.field public final c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljj/a;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj/j;->a:Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Ljj/j;->b:Ljj/a;

    iput-object p3, p0, Ljj/j;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljj/j;->e()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 3

    invoke-virtual {p0}, Ljj/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljj/j;->b:Ljj/a;

    iget-object v1, p0, Ljj/j;->a:Ljavax/net/ssl/SSLSocket;

    const-string v2, "tls-unique"

    invoke-interface {v0, v1, v2}, Ljj/a;->a(Ljava/net/Socket;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No binding provider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Ljj/j;->b:Ljj/a;

    iget-object v1, p0, Ljj/j;->a:Ljavax/net/ssl/SSLSocket;

    invoke-interface {v0, v1}, Ljj/a;->b(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljj/j;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ljj/j;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public e()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Ljj/j;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljj/j;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljj/j;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
