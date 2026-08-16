.class public interface abstract Lcom/tonyodev/fetch2core/server/FileResourceTransporterWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract sendFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V
    .param p1    # Lcom/tonyodev/fetch2core/server/FileRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sendFileResponse(Lcom/tonyodev/fetch2core/server/FileResponse;)V
    .param p1    # Lcom/tonyodev/fetch2core/server/FileResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sendRawBytes([BII)V
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
