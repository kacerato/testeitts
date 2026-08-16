.class public Lxd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxd/a;


# instance fields
.field public a:Lwd/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/BufferedReader;)Lxd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lxd/f;

    invoke-direct {v0}, Lxd/f;-><init>()V

    invoke-virtual {p0}, Lxd/g;->getLimits()Lwd/e;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lxd/f;->o(Ljava/io/BufferedReader;Lwd/e;)Lxd/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)Lxd/d;
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

    invoke-virtual {p0, p1}, Lxd/g;->a(Ljava/io/BufferedReader;)Lxd/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lwd/e;)V
    .locals 0

    iput-object p1, p0, Lxd/g;->a:Lwd/e;

    return-void
.end method

.method public getLimits()Lwd/e;
    .locals 1

    iget-object v0, p0, Lxd/g;->a:Lwd/e;

    return-object v0
.end method
