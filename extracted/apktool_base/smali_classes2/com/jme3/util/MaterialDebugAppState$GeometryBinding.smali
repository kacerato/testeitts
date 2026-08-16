.class Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/MaterialDebugAppState$Binding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/MaterialDebugAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GeometryBinding"
.end annotation


# instance fields
.field geom:Lcom/jme3/scene/Geometry;

.field final synthetic this$0:Lcom/jme3/util/MaterialDebugAppState;

.field trigger:Lcom/jme3/input/controls/Trigger;


# direct methods
.method public constructor <init>(Lcom/jme3/util/MaterialDebugAppState;Lcom/jme3/input/controls/Trigger;Lcom/jme3/scene/Geometry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->trigger:Lcom/jme3/input/controls/Trigger;

    iput-object p3, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->geom:Lcom/jme3/scene/Geometry;

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Reload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrigger()Lcom/jme3/input/controls/Trigger;
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->trigger:Lcom/jme3/input/controls/Trigger;

    return-object v0
.end method

.method public reload()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/MaterialDebugAppState;->reloadMaterial(Lcom/jme3/material/Material;)Lcom/jme3/material/Material;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    :cond_0
    return-void
.end method
