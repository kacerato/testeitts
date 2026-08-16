.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation runtime LIc/q;
.end annotation

.annotation runtime LIc/r;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawList"
.end annotation


# instance fields
.field public commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;",
            ">;"
        }
    .end annotation
.end field

.field public indexBuffer:Ljava/nio/ByteBuffer;

.field public vertexBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->commands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIndexBufferAsShort()Ljava/nio/ShortBuffer;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->indexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVertexBufferAsFloat()Ljava/nio/FloatBuffer;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->vertexBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->indexBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
