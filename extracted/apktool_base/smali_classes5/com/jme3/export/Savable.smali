.class public interface abstract Lcom/jme3/export/Savable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract read(Lcom/jme3/export/JmeImporter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/jme3/export/JmeExporter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
