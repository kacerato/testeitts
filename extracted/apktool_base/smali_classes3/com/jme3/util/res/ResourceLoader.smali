.class public interface abstract Lcom/jme3/util/res/ResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation
.end method

.method public abstract getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation
.end method

.method public abstract getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
