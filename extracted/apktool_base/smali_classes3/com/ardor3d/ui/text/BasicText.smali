.class public Lcom/ardor3d/ui/text/BasicText;
.super Lcom/ardor3d/ui/text/BMText;
.source "SourceFile"


# static fields
.field public static DEFAULT_FONT:Lcom/ardor3d/ui/text/BMFont;

.field public static DEFAULT_FONT_SIZE:D

.field static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/ardor3d/ui/text/BasicText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/ardor3d/ui/text/BasicText;->logger:Ljava/util/logging/Logger;

    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    sput-wide v1, Lcom/ardor3d/ui/text/BasicText;->DEFAULT_FONT_SIZE:D

    :try_start_0
    new-instance v1, Lcom/ardor3d/ui/text/BMFont;

    new-instance v2, Lcom/ardor3d/util/resource/URLResourceSource;

    const-string v3, "com/ardor3d/ui/text/arial-24-bold-regular.fnt"

    invoke-static {v0, v3}, Lcom/ardor3d/util/resource/ResourceLocatorTool;->getClassPathResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ardor3d/util/resource/URLResourceSource;-><init>(Ljava/net/URL;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/ui/text/BMFont;-><init>(Lcom/ardor3d/util/resource/ResourceSource;Z)V

    sput-object v1, Lcom/ardor3d/ui/text/BasicText;->DEFAULT_FONT:Lcom/ardor3d/ui/text/BMFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/ardor3d/ui/text/BasicText;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "static font init"

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;D)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/ardor3d/ui/text/BMText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/renderer/queue/RenderBucketType;->Ortho:Lcom/ardor3d/renderer/queue/RenderBucketType;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setRenderBucketType(Lcom/ardor3d/renderer/queue/RenderBucketType;)V

    invoke-virtual {p0, p4, p5}, Lcom/ardor3d/ui/text/BMText;->setFontScale(D)V

    sget-object p1, Lcom/ardor3d/ui/text/BMText$AutoFade;->Off:Lcom/ardor3d/ui/text/BMText$AutoFade;

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMText;->setAutoFade(Lcom/ardor3d/ui/text/BMText$AutoFade;)V

    sget-object p1, Lcom/ardor3d/ui/text/BMText$AutoScale;->Off:Lcom/ardor3d/ui/text/BMText$AutoScale;

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMText;->setAutoScale(Lcom/ardor3d/ui/text/BMText$AutoScale;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMText;->setAutoRotate(Z)V

    new-instance v0, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    new-instance p2, Lcom/ardor3d/renderer/state/ZBufferState;

    invoke-direct {p2}, Lcom/ardor3d/renderer/state/ZBufferState;-><init>()V

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/ZBufferState;->setWritable(Z)V

    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance p2, Lcom/ardor3d/renderer/state/CullState;

    invoke-direct {p2}, Lcom/ardor3d/renderer/state/CullState;-><init>()V

    invoke-virtual {p2, p1}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    new-instance p1, Lcom/ardor3d/renderer/state/BlendState;

    invoke-direct {p1}, Lcom/ardor3d/renderer/state/BlendState;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEnabled(Z)V

    sget-object p3, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {p1, p3}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    sget-object p3, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {p1, p3}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setTestEnabled(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setReference(F)V

    sget-object p2, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    invoke-virtual {p1, p2}, Lcom/ardor3d/renderer/state/BlendState;->setTestFunction(Lcom/ardor3d/renderer/state/BlendState$TestFunction;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->updateModelBound()V

    return-void
.end method

.method public static createDefaultTextLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/ardor3d/ui/text/BasicText;
    .locals 7

    .line 2
    new-instance v6, Lcom/ardor3d/ui/text/BasicText;

    sget-object v3, Lcom/ardor3d/ui/text/BasicText;->DEFAULT_FONT:Lcom/ardor3d/ui/text/BMFont;

    sget-wide v4, Lcom/ardor3d/ui/text/BasicText;->DEFAULT_FONT_SIZE:D

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/ui/text/BasicText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;D)V

    return-object v6
.end method

.method public static createDefaultTextLabel(Ljava/lang/String;Ljava/lang/String;D)Lcom/ardor3d/ui/text/BasicText;
    .locals 7

    .line 1
    new-instance v6, Lcom/ardor3d/ui/text/BasicText;

    sget-object v3, Lcom/ardor3d/ui/text/BasicText;->DEFAULT_FONT:Lcom/ardor3d/ui/text/BMFont;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/ui/text/BasicText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;D)V

    return-object v6
.end method
