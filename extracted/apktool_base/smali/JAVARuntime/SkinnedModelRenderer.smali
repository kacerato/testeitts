.class public final LJAVARuntime/SkinnedModelRenderer;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Rendering",
        "Components"
    }
.end annotation


# static fields
.field public static final CIRCLE:I = 0x1cc

.field public static final CONE:I = 0x1ca

.field public static final CUBE:I = 0x1c8

.field public static final CYLINDER:I = 0x1cb

.field public static final SPHERE:I = 0x1c9

.field public static final SQUARE:I = 0x1ce

.field public static final SQUARE90:I = 0x1cf

.field public static final TORUS:I = 0x1cd


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, LJAVARuntime/SkinnedModelRenderer;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public attachPrimitive(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "primitive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitive"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/square90.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/square.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/torus.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/circle.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/cylinder.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/cone.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/sphere.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const-string v0, "@@ASSET@@Engine/Primitives/Models/cube.obj"

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/SkinnedModelRenderer;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getMaterial()LJAVARuntime/Material;
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k0()LJAVARuntime/Material;

    move-result-object v0

    return-object v0
.end method

.method public getVertex()LJAVARuntime/Vertex;
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    return-object v0
.end method

.method public setMaterial(LJAVARuntime/Material;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "material"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    iget-object p1, p1, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->setMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    return-void
.end method

.method public setMaterialFile(LJAVARuntime/MaterialFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "PFile is now obsolete, use SkinnedModelRenderer.setMaterial(Material) instead"
        }
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->materialFile:Ljava/lang/String;

    return-void
.end method

.method public setModelFile(LJAVARuntime/VertexFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "PFile is now obsolete, use SkinnedModelRenderer.setVertex(Vertex) instead"
        }
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFileFromAssets:Z

    return-void
.end method

.method public setVertex(LJAVARuntime/Vertex;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    iget-object p1, p1, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->setVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/SkinnedModelRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->setVertex(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    :goto_0
    return-void
.end method
