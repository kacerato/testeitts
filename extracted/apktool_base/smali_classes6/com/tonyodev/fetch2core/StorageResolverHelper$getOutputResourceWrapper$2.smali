.class public final Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;
.super Lcom/tonyodev/fetch2core/OutputResourceWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2core/StorageResolverHelper;->getOutputResourceWrapper(Ljava/io/RandomAccessFile;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $randomAccessFile:Ljava/io/RandomAccessFile;

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2

    iput-object p1, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->$randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public setWriteOffset(J)V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

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

    iget-object v0, p0, Lcom/tonyodev/fetch2core/StorageResolverHelper$getOutputResourceWrapper$2;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
