.class public final Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;
.super Lcom/tonyodev/fetch2core/OutputResourceWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2core/StorageResolverHelper;->getOutputResourceWrapper(Ljava/io/FileOutputStream;Landroid/os/ParcelFileDescriptor;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fileOutputStream:Ljava/io/FileOutputStream;

.field final synthetic $parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final fileOutputStream:Ljava/io/FileOutputStream;

.field private final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    iput-object p1, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->$fileOutputStream:Ljava/io/FileOutputStream;

    iput-object p2, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->$parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->fileOutputStream:Ljava/io/FileOutputStream;

    iput-object p2, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public setWriteOffset(J)V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$1;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method
