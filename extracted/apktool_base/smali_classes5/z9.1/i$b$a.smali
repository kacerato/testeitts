.class public Lz9/i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz9/i$b;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lz9/i$b;


# direct methods
.method public constructor <init>(Lz9/i$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v1}, Lz9/i$b;->k(Lz9/i$b;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->findMaxValue()I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v2}, Lz9/i$b;->k(Lz9/i$b;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    invoke-static {v2, v1}, Lz9/i;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lz9/i$b$a$a;

    invoke-direct {v2, p0, v1, v0}, Lz9/i$b$a$a;-><init>(Lz9/i$b$a;ZLjava/nio/ByteBuffer;)V

    invoke-static {v2}, Lz9/f;->d(Lz9/f$b;)V

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lz9/i$b$a;->b:Lz9/i$b;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lz9/i$b$a;->b:Lz9/i$b;

    invoke-static {v3, v0}, Lz9/i$b;->l(Lz9/i$b;Z)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
