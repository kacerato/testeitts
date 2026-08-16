.class public interface abstract Lcom/tonyodev/fetch2core/server/FileResourceTransporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/server/FileResourceTransporterWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/server/FileResourceTransporter$Companion;
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field public static final Companion:Lcom/tonyodev/fetch2core/server/FileResourceTransporter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2core/server/FileResourceTransporter$Companion;->$$INSTANCE:Lcom/tonyodev/fetch2core/server/FileResourceTransporter$Companion;

    sput-object v0, Lcom/tonyodev/fetch2core/server/FileResourceTransporter;->Companion:Lcom/tonyodev/fetch2core/server/FileResourceTransporter$Companion;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Ljava/net/SocketAddress;)V
    .param p1    # Ljava/net/SocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract readRawBytes([BII)I
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract receiveFileRequest()Lcom/tonyodev/fetch2core/server/FileRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract receiveFileResponse()Lcom/tonyodev/fetch2core/server/FileResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
