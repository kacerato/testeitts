.class public Lcom/ardor3d/util/DrawableCamera;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# instance fields
.field private final color:Lcom/ardor3d/math/ColorRGBA;

.field private final pattern:S

.field private final trackedCamera:Lcom/ardor3d/renderer/Camera;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    const/16 v1, -0x1000

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/ardor3d/util/DrawableCamera;-><init>(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/math/ColorRGBA;S)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/math/ColorRGBA;S)V
    .locals 1

    .line 2
    const-string v0, "DrawableCamera"

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/ardor3d/util/DrawableCamera;->trackedCamera:Lcom/ardor3d/renderer/Camera;

    .line 4
    iput-object p2, p0, Lcom/ardor3d/util/DrawableCamera;->color:Lcom/ardor3d/math/ColorRGBA;

    .line 5
    iput-short p3, p0, Lcom/ardor3d/util/DrawableCamera;->pattern:S

    return-void
.end method


# virtual methods
.method public draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/util/DrawableCamera;->trackedCamera:Lcom/ardor3d/renderer/Camera;

    iget-object v1, p0, Lcom/ardor3d/util/DrawableCamera;->color:Lcom/ardor3d/math/ColorRGBA;

    iget-short v2, p0, Lcom/ardor3d/util/DrawableCamera;->pattern:S

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ardor3d/util/geom/Debugger;->drawCameraFrustum(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;SZ)V

    return-void
.end method
