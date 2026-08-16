.class final Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/jse/JseProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CopyThread"
.end annotation


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;

.field private final ownedInput:Ljava/io/InputStream;

.field private final ownedOutput:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->output:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->ownedOutput:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->ownedInput:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->input:Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/luaj/vm2/lib/jse/JseProcess$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->ownedInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->ownedOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :goto_2
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->ownedInput:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$CopyThread;->ownedOutput:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method
