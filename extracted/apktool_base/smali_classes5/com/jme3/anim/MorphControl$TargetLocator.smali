.class Lcom/jme3/anim/MorphControl$TargetLocator;
.super Lcom/jme3/scene/SceneGraphVisitorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/MorphControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TargetLocator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/anim/MorphControl;


# direct methods
.method private constructor <init>(Lcom/jme3/anim/MorphControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jme3/anim/MorphControl$TargetLocator;->this$0:Lcom/jme3/anim/MorphControl;

    invoke-direct {p0}, Lcom/jme3/scene/SceneGraphVisitorAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/anim/MorphControl;Lcom/jme3/anim/MorphControl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/anim/MorphControl$TargetLocator;-><init>(Lcom/jme3/anim/MorphControl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/jme3/scene/Geometry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v0

    const-string v1, "MorphWeights"

    invoke-virtual {v0, v1}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->hasMorphTargets()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/anim/MorphControl$TargetLocator;->this$0:Lcom/jme3/anim/MorphControl;

    invoke-static {v1}, Lcom/jme3/anim/MorphControl;->access$100(Lcom/jme3/anim/MorphControl;)Lcom/jme3/util/SafeArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalMatParamOverrides()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/anim/MorphControl$TargetLocator;->this$0:Lcom/jme3/anim/MorphControl;

    invoke-static {v1}, Lcom/jme3/anim/MorphControl;->access$200(Lcom/jme3/anim/MorphControl;)Lcom/jme3/material/MatParamOverride;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/anim/MorphControl$TargetLocator;->this$0:Lcom/jme3/anim/MorphControl;

    invoke-static {v0}, Lcom/jme3/anim/MorphControl;->access$200(Lcom/jme3/anim/MorphControl;)Lcom/jme3/material/MatParamOverride;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    :cond_1
    return-void
.end method
