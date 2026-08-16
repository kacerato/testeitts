.class public interface abstract Lcom/ardor3d/util/export/Ardor3dImporter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract load(Ljava/io/File;)Lcom/ardor3d/util/export/Savable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract load(Ljava/net/URL;)Lcom/ardor3d/util/export/Savable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract load([B)Lcom/ardor3d/util/export/Savable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
