.class LJAVARuntime/VoxelHand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/VoxelHand;->setListener(LJAVARuntime/VoxelHand$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/VoxelHand;

.field final synthetic val$value:LJAVARuntime/VoxelHand$Listener;


# direct methods
.method public constructor <init>(LJAVARuntime/VoxelHand;LJAVARuntime/VoxelHand$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/VoxelHand$1;->this$0:LJAVARuntime/VoxelHand;

    iput-object p2, p0, LJAVARuntime/VoxelHand$1;->val$value:LJAVARuntime/VoxelHand$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockBroken(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelHand$1;->val$value:LJAVARuntime/VoxelHand$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, LJAVARuntime/VoxelHand$Listener;->onBlockBroken(IIII)V

    return-void
.end method

.method public onBlockPlaced(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelHand$1;->val$value:LJAVARuntime/VoxelHand$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, LJAVARuntime/VoxelHand$Listener;->onBlockPlaced(IIII)V

    return-void
.end method

.method public onBlockSelected(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelHand$1;->val$value:LJAVARuntime/VoxelHand$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, LJAVARuntime/VoxelHand$Listener;->onBlockSelected(IIII)V

    return-void
.end method
