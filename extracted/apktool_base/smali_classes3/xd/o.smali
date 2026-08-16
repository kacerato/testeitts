.class public Lxd/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxd/b;


# instance fields
.field public a:Lwd/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/BufferedReader;)Lxd/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lxd/n;

    invoke-direct {v0}, Lxd/n;-><init>()V

    invoke-virtual {p0}, Lxd/o;->getLimits()Lwd/f;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lxd/n;->p(Ljava/io/BufferedReader;Lwd/f;)Lxd/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)Lxd/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, p1}, Lxd/o;->a(Ljava/io/BufferedReader;)Lxd/k;

    move-result-object p1

    return-object p1
.end method

.method public c(Lwd/f;)V
    .locals 0

    iput-object p1, p0, Lxd/o;->a:Lwd/f;

    return-void
.end method

.method public getLimits()Lwd/f;
    .locals 1

    iget-object v0, p0, Lxd/o;->a:Lwd/f;

    return-object v0
.end method
