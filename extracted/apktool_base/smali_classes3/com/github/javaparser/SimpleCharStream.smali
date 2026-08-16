.class public Lcom/github/javaparser/SimpleCharStream;
.super Lcom/github/javaparser/AbstractCharStream;
.source "SourceFile"


# instance fields
.field private inputStream:Lcom/github/javaparser/Provider;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dstream"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 4
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/github/javaparser/SimpleCharStream;-><init>(Lcom/github/javaparser/Provider;III)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/Provider;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "dstream",
            "startline",
            "startcolumn"
        }
    .end annotation

    const/16 v0, 0x1000

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/github/javaparser/SimpleCharStream;-><init>(Lcom/github/javaparser/Provider;III)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/Provider;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "dstream",
            "startline",
            "startcolumn",
            "buffersize"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/github/javaparser/AbstractCharStream;-><init>(III)V

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/SimpleCharStream;->inputStream:Lcom/github/javaparser/Provider;

    return-void
.end method


# virtual methods
.method public reInit(Lcom/github/javaparser/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dstream"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 4
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/github/javaparser/SimpleCharStream;->reInit(Lcom/github/javaparser/Provider;III)V

    return-void
.end method

.method public reInit(Lcom/github/javaparser/Provider;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "dstream",
            "startline",
            "startcolumn"
        }
    .end annotation

    const/16 v0, 0x1000

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/javaparser/SimpleCharStream;->reInit(Lcom/github/javaparser/Provider;III)V

    return-void
.end method

.method public reInit(Lcom/github/javaparser/Provider;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "dstream",
            "startline",
            "startcolumn",
            "buffersize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/javaparser/SimpleCharStream;->inputStream:Lcom/github/javaparser/Provider;

    .line 2
    invoke-super {p0, p2, p3, p4}, Lcom/github/javaparser/AbstractCharStream;->reInit(III)V

    return-void
.end method

.method public streamClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/SimpleCharStream;->inputStream:Lcom/github/javaparser/Provider;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public streamRead([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "aBuf",
            "nOfs",
            "nLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/SimpleCharStream;->inputStream:Lcom/github/javaparser/Provider;

    invoke-interface {v0, p1, p2, p3}, Lcom/github/javaparser/Provider;->read([CII)I

    move-result p1

    return p1
.end method
