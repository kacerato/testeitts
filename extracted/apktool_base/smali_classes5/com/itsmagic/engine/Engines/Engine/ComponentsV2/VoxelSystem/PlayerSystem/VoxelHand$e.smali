.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    const-string v2, "temp"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$e;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    :cond_1
    return-void
.end method
