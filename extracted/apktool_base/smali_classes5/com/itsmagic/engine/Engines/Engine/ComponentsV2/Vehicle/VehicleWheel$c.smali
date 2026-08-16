.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;->migrateToNewStructure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/HashMap;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$newParent",
            "val$models",
            "val$snapshopHashMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G3()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method
