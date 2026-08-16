.class public interface abstract Lcom/ardor3d/util/export/Ardor3dExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract save(Lcom/ardor3d/util/export/Savable;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
