.class public Lcom/ardor3d/image/util/TextureProjector;
.super Lcom/ardor3d/renderer/Camera;
.source "SourceFile"


# static fields
.field private static final BIAS:Lcom/ardor3d/math/type/ReadOnlyMatrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v33, Lcom/ardor3d/math/Matrix4;

    move-object/from16 v0, v33

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    const-wide/16 v23, 0x0

    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v0 .. v32}, Lcom/ardor3d/math/Matrix4;-><init>(DDDDDDDDDDDDDDDD)V

    sput-object v33, Lcom/ardor3d/image/util/TextureProjector;->BIAS:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    return-void
.end method


# virtual methods
.method public updateTextureMatrix(Lcom/ardor3d/image/Texture;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ardor3d/math/Matrix4;->fetchTempInstance()Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ardor3d/image/util/TextureProjector;->updateTextureMatrix(Lcom/ardor3d/math/Matrix4;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setTextureMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V

    .line 4
    invoke-static {v0}, Lcom/ardor3d/math/Matrix4;->releaseTempInstance(Lcom/ardor3d/math/Matrix4;)V

    return-void
.end method

.method public updateTextureMatrix(Lcom/ardor3d/math/Matrix4;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->update()V

    .line 6
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getModelViewMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/ardor3d/renderer/Camera;->getProjectionMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ardor3d/math/Matrix4;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object p1

    sget-object v0, Lcom/ardor3d/image/util/TextureProjector;->BIAS:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Matrix4;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    return-void
.end method
