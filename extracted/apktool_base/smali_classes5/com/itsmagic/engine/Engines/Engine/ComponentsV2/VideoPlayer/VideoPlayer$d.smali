.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lub/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)Lub/q;

    move-result-object v0

    invoke-virtual {v0}, Lub/p;->Q()V

    :cond_1
    return-void
.end method
