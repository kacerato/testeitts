.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a$a;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/VehicleWheel$c$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 v1, 0x2

    invoke-static {v1, v2}, LK8/a;->h(ILjava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
