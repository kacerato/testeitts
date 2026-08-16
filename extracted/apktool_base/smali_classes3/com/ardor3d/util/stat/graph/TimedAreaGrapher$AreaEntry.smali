.class Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AreaEntry"
.end annotation


# instance fields
.field public area:Lcom/ardor3d/scenegraph/Mesh;

.field public maxSamples:I

.field final synthetic this$0:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;

.field public verts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public visited:Z


# direct methods
.method public constructor <init>(Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;ILcom/ardor3d/util/stat/StatType;)V
    .locals 3

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->this$0:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->verts:Ljava/util/List;

    iput p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->maxSamples:I

    new-instance v0, Lcom/ardor3d/scenegraph/Mesh;

    const-string v1, "a"

    invoke-direct {v0, v1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->setIndexBuffer(Ljava/nio/IntBuffer;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p2

    sget-object v0, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p2

    sget-object v0, Lcom/ardor3d/renderer/IndexMode;->LineStrip:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    sget-object v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/math/ColorRGBA;->LIGHT_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p1, p3, v0, v1}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    sget-object p2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->ShowAreas:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$AreaEntry;->area:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    :cond_1
    return-void
.end method
