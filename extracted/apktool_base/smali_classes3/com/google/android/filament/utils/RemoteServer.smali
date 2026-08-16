.class public Lcom/google/android/filament/utils/RemoteServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/RemoteServer$a;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/filament/utils/RemoteServer;->nCreate(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create RemoteServer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native nAcquireReceivedMessage(JLjava/nio/ByteBuffer;I)V
.end method

.method private static native nCreate(I)J
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nPeekIncomingLabel(J)Ljava/lang/String;
.end method

.method private static native nPeekReceivedBufferLength(J)I
.end method

.method private static native nPeekReceivedLabel(J)Ljava/lang/String;
.end method


# virtual methods
.method public a()Lcom/google/android/filament/utils/RemoteServer$a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/RemoteServer;->nPeekReceivedBufferLength(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/filament/utils/RemoteServer$a;

    invoke-direct {v1}, Lcom/google/android/filament/utils/RemoteServer$a;-><init>()V

    iget-wide v2, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    invoke-static {v2, v3}, Lcom/google/android/filament/utils/RemoteServer;->nPeekReceivedLabel(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/filament/utils/RemoteServer$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/filament/utils/RemoteServer$a;->b:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    iget-object v4, v1, Lcom/google/android/filament/utils/RemoteServer$a;->b:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/filament/utils/RemoteServer;->nAcquireReceivedMessage(JLjava/nio/ByteBuffer;I)V

    return-object v1
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/RemoteServer;->nDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/RemoteServer;->nPeekIncomingLabel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/RemoteServer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/RemoteServer;->nDestroy(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
