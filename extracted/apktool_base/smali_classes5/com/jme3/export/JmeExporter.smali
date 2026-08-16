.class public interface abstract Lcom/jme3/export/JmeExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;
.end method

.method public save(Lcom/jme3/export/Savable;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lcom/jme3/export/JmeExporter;->save(Lcom/jme3/export/Savable;Ljava/io/File;Z)V

    return-void
.end method

.method public abstract save(Lcom/jme3/export/Savable;Ljava/io/File;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract save(Lcom/jme3/export/Savable;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
