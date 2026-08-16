.class public Lcom/jme3/shader/UniformBindingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final camDir:Lcom/jme3/math/Vector3f;

.field private final camLeft:Lcom/jme3/math/Vector3f;

.field private final camLoc:Lcom/jme3/math/Vector3f;

.field private final camUp:Lcom/jme3/math/Vector3f;

.field private far:F

.field private near:F

.field private final nearFar:Lcom/jme3/math/Vector2f;

.field private final normalMatrix:Lcom/jme3/math/Matrix3f;

.field private final normalMatrixInv:Lcom/jme3/math/Matrix3f;

.field private final projMatrix:Lcom/jme3/math/Matrix4f;

.field private final projMatrixInv:Lcom/jme3/math/Matrix4f;

.field private final resolution:Lcom/jme3/math/Vector2f;

.field private final resolutionInv:Lcom/jme3/math/Vector2f;

.field private final tempMatrix:Lcom/jme3/math/Matrix4f;

.field private time:Ljava/lang/Float;

.field private timer:Lcom/jme3/system/Timer;

.field private tpf:Ljava/lang/Float;

.field private viewHeight:I

.field private final viewMatrix:Lcom/jme3/math/Matrix4f;

.field private final viewMatrixInv:Lcom/jme3/math/Matrix4f;

.field private final viewPort:Lcom/jme3/math/Vector4f;

.field private final viewProjMatrix:Lcom/jme3/math/Matrix4f;

.field private final viewProjMatrixInv:Lcom/jme3/math/Matrix4f;

.field private viewWidth:I

.field private viewX:I

.field private viewY:I

.field private final worldMatrix:Lcom/jme3/math/Matrix4f;

.field private final worldMatrixInv:Lcom/jme3/math/Matrix4f;

.field private final worldMatrixInvTrsp:Lcom/jme3/math/Matrix3f;

.field private final worldNormalMatrix:Lcom/jme3/math/Matrix3f;

.field private final worldViewMatrix:Lcom/jme3/math/Matrix4f;

.field private final worldViewMatrixInv:Lcom/jme3/math/Matrix4f;

.field private final worldViewProjMatrix:Lcom/jme3/math/Matrix4f;

.field private final worldViewProjMatrixInv:Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->camUp:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->camLeft:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->camDir:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->camLoc:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrix:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrix:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldNormalMatrix:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInv:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInvTrsp:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrixInv:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrixInv:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrixInv:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrixInv:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->viewPort:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->resolution:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->resolutionInv:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->nearFar:Lcom/jme3/math/Vector2f;

    return-void
.end method


# virtual methods
.method public newFrame()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->getTimeInSeconds()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->time:Ljava/lang/Float;

    iget-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->tpf:Ljava/lang/Float;

    return-void
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object p2, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p2, p3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object p2, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p2, p4}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object p2, p0, Lcom/jme3/shader/UniformBindingManager;->camLoc:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/shader/UniformBindingManager;->camLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/shader/UniformBindingManager;->camUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/shader/UniformBindingManager;->camDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result p2

    iput p2, p0, Lcom/jme3/shader/UniformBindingManager;->near:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result p1

    iput p1, p0, Lcom/jme3/shader/UniformBindingManager;->far:F

    return-void
.end method

.method public setTimer(Lcom/jme3/system/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/UniformBindingManager;->timer:Lcom/jme3/system/Timer;

    return-void
.end method

.method public setViewPort(IIII)V
    .locals 0

    iput p1, p0, Lcom/jme3/shader/UniformBindingManager;->viewX:I

    iput p2, p0, Lcom/jme3/shader/UniformBindingManager;->viewY:I

    iput p3, p0, Lcom/jme3/shader/UniformBindingManager;->viewWidth:I

    iput p4, p0, Lcom/jme3/shader/UniformBindingManager;->viewHeight:I

    return-void
.end method

.method public setWorldMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public updateUniformBindings(Lcom/jme3/shader/Shader;)V
    .locals 7

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getBoundUniforms()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Uniform;

    sget-object v2, Lcom/jme3/shader/UniformBindingManager$1;->$SwitchMap$com$jme3$shader$UniformBinding:[I

    invoke-virtual {v1}, Lcom/jme3/shader/Uniform;->getBinding()Lcom/jme3/shader/UniformBinding;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object v2, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v3}, Lcom/jme3/system/Timer;->getFrameRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object v2, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->tpf:Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    sget-object v2, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->time:Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v2, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->camUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v2, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->camLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    sget-object v2, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->camDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    sget-object v2, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->camLoc:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->nearFar:Lcom/jme3/math/Vector2f;

    iget v3, p0, Lcom/jme3/shader/UniformBindingManager;->near:F

    iget v4, p0, Lcom/jme3/shader/UniformBindingManager;->far:F

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    sget-object v2, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->nearFar:Lcom/jme3/math/Vector2f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    iget v2, p0, Lcom/jme3/shader/UniformBindingManager;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->resolutionInv:Lcom/jme3/math/Vector2f;

    iget v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    iget v5, p0, Lcom/jme3/shader/UniformBindingManager;->viewHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    sget-object v2, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->resolutionInv:Lcom/jme3/math/Vector2f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->resolution:Lcom/jme3/math/Vector2f;

    iget v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jme3/shader/UniformBindingManager;->viewHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    sget-object v2, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->resolution:Lcom/jme3/math/Vector2f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->viewPort:Lcom/jme3/math/Vector4f;

    iget v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jme3/shader/UniformBindingManager;->viewY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jme3/shader/UniformBindingManager;->viewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/jme3/shader/UniformBindingManager;->viewHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewPort:Lcom/jme3/math/Vector4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrixInv:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrixInv:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrixInv:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrixInv:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrixInv:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInvTrsp:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInvTrsp:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInvTrsp:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInv:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrixInv:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldNormalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldNormalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldNormalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldNormalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->tempMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->normalMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldViewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_18
    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_19
    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1a
    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1b
    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/shader/UniformBindingManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
