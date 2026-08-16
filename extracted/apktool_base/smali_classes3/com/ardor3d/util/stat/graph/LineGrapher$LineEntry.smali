.class Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/stat/graph/LineGrapher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LineEntry"
.end annotation


# instance fields
.field public line:Lcom/ardor3d/scenegraph/Line;

.field public max:D

.field public maxSamples:I

.field public min:D

.field public point:Lcom/ardor3d/scenegraph/Point;

.field final synthetic this$0:Lcom/ardor3d/util/stat/graph/LineGrapher;

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
.method public constructor <init>(Lcom/ardor3d/util/stat/graph/LineGrapher;ILcom/ardor3d/util/stat/StatType;)V
    .locals 11

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->this$0:Lcom/ardor3d/util/stat/graph/LineGrapher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->verts:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->min:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->max:D

    iput p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->maxSamples:I

    new-instance v0, Lcom/ardor3d/scenegraph/Point;

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "p"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ardor3d/scenegraph/Point;-><init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->PointColor:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ardor3d/math/ColorRGBA;

    sget-object v4, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v3, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p1, p3, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->PointSize:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, p3, v2, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/Point;->setPointSize(F)V

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    sget-object v2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, p3, v3, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/Point;->setAntialiased(Z)V

    sget-object v0, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->ShowPoints:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, p3, v0, v3}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->point:Lcom/ardor3d/scenegraph/Point;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    sget-object v3, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/Line;

    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "l"

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p2

    sget-object v0, Lcom/ardor3d/renderer/IndexMode;->LineStrip:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    sget-object v0, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/math/ColorRGBA;->LIGHT_GRAY:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-virtual {p1, p3, v0, v1}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    sget-object v0, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, p3, v0, v1}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/Line;->setLineWidth(F)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    sget-object v0, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, p3, v0, v1}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/Line;->setStipplePattern(S)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/Line;->setAntialiased(Z)V

    sget-object p2, Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;->ShowLines:Lcom/ardor3d/util/stat/graph/LineGrapher$ConfigKeys;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v4}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/LineGrapher$LineEntry;->line:Lcom/ardor3d/scenegraph/Line;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    :cond_1
    return-void
.end method
