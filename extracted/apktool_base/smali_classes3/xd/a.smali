.class public interface abstract Lxd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/io/BufferedReader;)Lxd/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/InputStream;)Lxd/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lwd/e;)V
.end method

.method public abstract getLimits()Lwd/e;
.end method
