.class Lcom/threed/jpct/GL20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Lcom/threed/jpct/GL20Handler;


# static fields
.field private static NEXT:I


# instance fields
.field private activeShader:Lcom/threed/jpct/GLSLShader;

.field private additionalColor:[F

.field private alpha:F

.field private ambientColor:[F

.field private attenuation:[F

.field private buffy4:Ljava/nio/IntBuffer;

.field private curColor:[F

.field private currentMatrixPointer:[F

.field private currentTextureStage:I

.field private defaultShader:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderFog:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

.field private defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

.field private depthMode:Z

.field private diffuseColors:[F

.field private fbo:I

.field private fboColorStorage:Lcom/threed/jpct/Texture;

.field private fboDepthStorage:Lcom/threed/jpct/Texture;

.field private fboTexture:I

.field private flatShading:Z

.field private fogColor:[F

.field private fogEnabled:Z

.field private fogEnd:F

.field private fogStart:F

.field private id:I

.field private lightCount:I

.field private lightPositions:[F

.field private lightsEnabled:Z

.field private lightsState:Ljava/util/BitSet;

.field private modelviewMatrix:[F

.field private projectionMatrix:[F

.field private shininess:F

.field private specularColors:[F

.field private storedShader:Lcom/threed/jpct/GLSLShader;

.field private storedUserShader:Lcom/threed/jpct/GLSLShader;

.field private tempMatrix:[F

.field private textureCombineRgb:I

.field private textureMatrix:[F

.field private textureMatrixUsed:Z

.field private textureModes:[I

.field private textureRgbScale:I

.field private textureStates:Ljava/util/BitSet;

.field private useColors:Z

.field private userShader:Lcom/threed/jpct/GLSLShader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderFog:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    const/4 v1, 0x4

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v2, 0x0

    iput v2, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    new-instance v3, Ljava/util/BitSet;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    iput-object v3, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/threed/jpct/GL20;->textureModes:[I

    iput v2, p0, Lcom/threed/jpct/GL20;->textureCombineRgb:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/threed/jpct/GL20;->textureRgbScale:I

    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->flatShading:Z

    iput-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/16 v3, 0x10

    new-array v5, v3, [F

    iput-object v5, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    new-array v5, v3, [F

    iput-object v5, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    new-array v5, v3, [F

    iput-object v5, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    iput-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/threed/jpct/GL20;->alpha:F

    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->useColors:Z

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    const/16 v3, 0x18

    new-array v5, v3, [F

    iput-object v5, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    new-array v5, v3, [F

    iput-object v5, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/threed/jpct/GL20;->attenuation:[F

    const/4 v3, 0x0

    iput v3, p0, Lcom/threed/jpct/GL20;->shininess:F

    iput v2, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/threed/jpct/GL20;->fogStart:F

    iput v3, p0, Lcom/threed/jpct/GL20;->fogEnd:F

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    iput-object v3, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    sget v3, Lcom/threed/jpct/GL20;->NEXT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/threed/jpct/GL20;->NEXT:I

    iput v3, p0, Lcom/threed/jpct/GL20;->id:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/threed/jpct/GL20;->fbo:I

    iput v3, p0, Lcom/threed/jpct/GL20;->fboTexture:I

    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    iput-object v0, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->fboColorStorage:Lcom/threed/jpct/Texture;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->fboDepthStorage:Lcom/threed/jpct/Texture;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/GL20;->buffy4:Ljava/nio/IntBuffer;

    const-string v1, "Initializing GL20 render pipeline..."

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    sget-boolean v1, Lcom/threed/jpct/Config;->useVBO:Z

    new-instance v1, Lcom/threed/jpct/GLSLShader;

    invoke-direct {v1, v0}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex0"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex1"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex0Light0"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Fog"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderFog:Lcom/threed/jpct/GLSLShader;

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "FogLight0"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Tex0Amb"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    const-string v1, "Depth"

    invoke-direct {v0, v1}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    iget-object v0, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    iput-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-virtual {p0}, Lcom/threed/jpct/GL20;->resetShaderData()V

    invoke-virtual {p0}, Lcom/threed/jpct/GL20;->updateShaderData()Lcom/threed/jpct/GLSLShader;

    const-string v0, "GL20 render pipeline initialized!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkError(Ljava/lang/String;)V
    .locals 3

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private checkFrameBufferObject()V
    .locals 4

    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const-string v1, "FrameBuffer: "

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected reply from glCheckFramebufferStatus: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has caused a GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS exception"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has caused a GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT exception"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has caused a GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT exception"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    :pswitch_4
    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/GL20;->fbo:I

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8cd5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearErrors()V
    .locals 1

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private getTextureStageIndex()I
    .locals 2

    iget v0, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v1, 0x84c0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasCap(I)Z
    .locals 3

    const/16 v0, 0xde1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x4000

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0xb50

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0xb57

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0xbc0

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xba1

    if-ne p1, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xb60

    if-ne p1, v0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method private setIdentity([F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, p1, v0

    const/4 v0, 0x2

    aput v2, p1, v0

    const/4 v0, 0x3

    aput v2, p1, v0

    const/4 v0, 0x4

    aput v2, p1, v0

    const/4 v0, 0x5

    aput v1, p1, v0

    const/4 v0, 0x6

    aput v2, p1, v0

    const/4 v0, 0x7

    aput v2, p1, v0

    const/16 v0, 0x8

    aput v2, p1, v0

    const/16 v0, 0x9

    aput v2, p1, v0

    const/16 v0, 0xa

    aput v1, p1, v0

    const/16 v0, 0xb

    aput v2, p1, v0

    const/16 v0, 0xc

    aput v2, p1, v0

    const/16 v0, 0xd

    aput v2, p1, v0

    const/16 v0, 0xe

    aput v2, p1, v0

    const/16 v0, 0xf

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public clearShader()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/GL20;->setShader(Lcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public clearTangents()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_0
    return-void
.end method

.method public clearTangents(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    if-lez p1, :cond_0

    const p1, 0x8892

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :cond_0
    return-void
.end method

.method public glActiveTexture(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iput p1, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glAlphaFuncx(II)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glBindBuffer(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public glBindTexture(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public glBlendFunc(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public glClear(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float p3, p3

    int-to-float p4, p4

    mul-float/2addr p4, v0

    float-to-int p4, p4

    int-to-float p4, p4

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public glClearDepthf(F)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glClearStencil(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iput p1, p0, Lcom/threed/jpct/GL20;->currentTextureStage:I

    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glClipPlanef(I[FI)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glClipPlanex(I[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glColor4f(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glColor4x(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/GL20;->curColor:[F

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v0, v2

    int-to-float p1, p2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    const/4 p2, 0x1

    aput p1, v0, p2

    int-to-float p1, p3

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    const/4 p2, 0x2

    aput p1, v0, p2

    int-to-float p1, p4

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    const/4 p2, 0x3

    aput p1, v0, p2

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 5
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_0
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .line 2
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    if-nez p4, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/threed/jpct/GL20;->useColors:Z

    :cond_0
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 0

    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 0

    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    return-void
.end method

.method public glCullFace(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCullFace(I)V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    return-void
.end method

.method public glDepthMask(Z)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDepthRangef(FF)V

    return-void
.end method

.method public glDepthRangex(II)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glDisable(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/threed/jpct/GL20;->hasCap(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xde1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xb50

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_3

    const/16 v2, 0x4007

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xb60

    if-ne p1, v0, :cond_4

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 3

    const v0, 0x8076

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->useColors:Z

    :cond_1
    const v0, 0x8074

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_2
    const v0, 0x8075

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_3
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    const v2, 0x8078

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object p1, p1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_4

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_4
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public glEnable(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/threed/jpct/GL20;->hasCap(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xde1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xb50

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_3

    const/16 v2, 0x4007

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xb60

    if-ne p1, v0, :cond_4

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 3

    const v0, 0x8076

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    iput-boolean v2, p0, Lcom/threed/jpct/GL20;->useColors:Z

    :cond_1
    const v0, 0x8074

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_2
    const v0, 0x8075

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_3
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    const v2, 0x8078

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object p1, p1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_4

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_4
    return-void
.end method

.method public glFinish()V
    .locals 0

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public glFlush()V
    .locals 0

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method public glFogf(IF)V
    .locals 1

    const/16 v0, 0xb63

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/threed/jpct/GL20;->fogStart:F

    goto :goto_0

    :cond_0
    const/16 v0, 0xb64

    if-ne p1, v0, :cond_1

    iput p2, p0, Lcom/threed/jpct/GL20;->fogEnd:F

    :cond_1
    :goto_0
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const/16 v0, 0xb66

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    aput v1, p1, v0

    .line 3
    iget-object p1, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    aput v1, p1, v0

    .line 4
    iget-object p1, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p2

    aput p2, p1, v0

    :cond_0
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 0

    .line 1
    return-void
.end method

.method public glFogx(II)V
    .locals 0

    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 0

    .line 2
    return-void
.end method

.method public glFrontFace(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glFrontFace(I)V

    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    int-to-float v7, p6

    const/4 v1, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 1

    .line 2
    const-string v0, "before"

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->checkError(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetBooleanv(I[ZI)V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetBufferParameteriv(II[II)V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetClipPlanex(I[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetError()I
    .locals 1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetFixedv(I[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetFloatv(I[FI)V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 0

    .line 2
    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 0

    .line 2
    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 0

    .line 2
    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 0

    .line 2
    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexEnviv(II[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glHint(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glHint(II)V

    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glIsBuffer(I)Z

    move-result p1

    return p1
.end method

.method public glIsEnabled(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/GL20;->hasCap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public glIsTexture(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result p1

    return p1
.end method

.method public glLightModelf(IF)V
    .locals 0

    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1

    const/16 p3, 0xb53

    if-ne p1, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    const/4 p3, 0x0

    aget v0, p2, p3

    aput v0, p1, p3

    const/4 p3, 0x1

    .line 3
    aget v0, p2, p3

    aput v0, p1, p3

    const/4 p3, 0x2

    .line 4
    aget v0, p2, p3

    aput v0, p1, p3

    const/4 p3, 0x3

    .line 5
    aget p2, p2, p3

    aput p2, p1, p3

    :cond_0
    return-void
.end method

.method public glLightModelx(II)V
    .locals 0

    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 0

    .line 2
    return-void
.end method

.method public glLightf(IIF)V
    .locals 1

    add-int/lit16 p1, p1, -0x4000

    const/16 v0, 0x1208

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/threed/jpct/GL20;->attenuation:[F

    aput p3, p2, p1

    :cond_0
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 3

    add-int/lit16 p1, p1, -0x4000

    mul-int/lit8 p1, p1, 0x3

    const/16 p4, 0x1203

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, p4, :cond_0

    .line 2
    iget-object p2, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    add-int/lit8 p4, p1, 0x1

    aget v0, p3, v0

    aput v0, p2, p1

    add-int/2addr p1, v1

    .line 3
    aget v0, p3, v2

    aput v0, p2, p4

    .line 4
    aget p3, p3, v1

    aput p3, p2, p1

    goto :goto_0

    :cond_0
    const/16 p4, 0x1201

    if-ne p2, p4, :cond_1

    .line 5
    iget-object p2, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    add-int/lit8 p4, p1, 0x1

    aget v0, p3, v0

    aput v0, p2, p1

    add-int/2addr p1, v1

    .line 6
    aget v0, p3, v2

    aput v0, p2, p4

    .line 7
    aget p3, p3, v1

    aput p3, p2, p1

    goto :goto_0

    :cond_1
    const/16 p4, 0x1202

    if-ne p2, p4, :cond_2

    .line 8
    iget-object p2, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    add-int/lit8 p4, p1, 0x1

    aget v0, p3, v0

    aput v0, p2, p1

    add-int/2addr p1, v1

    .line 9
    aget v0, p3, v2

    aput v0, p2, p4

    .line 10
    aget p3, p3, v1

    aput p3, p2, p1

    :cond_2
    :goto_0
    return-void
.end method

.method public glLightx(III)V
    .locals 0

    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 0

    .line 2
    return-void
.end method

.method public glLineWidth(F)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method

.method public glLineWidthx(I)V
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method

.method public glLoadIdentity()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    :cond_0
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object p1

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    :cond_0
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object p2, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    :cond_0
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glLoadMatrixx([II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object p2, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    add-int v2, v0, p2

    aget v2, p1, v2

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glLogicOp(I)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glMaterialf(IIF)V
    .locals 1

    const/16 v0, 0x408

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1600

    if-ne p2, p1, :cond_0

    iput p3, p0, Lcom/threed/jpct/GL20;->shininess:F

    :cond_0
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 0

    const/16 p4, 0x408

    if-ne p1, p4, :cond_0

    const/16 p1, 0x1600

    if-ne p2, p1, :cond_0

    const/4 p1, 0x3

    .line 2
    aget p1, p3, p1

    iput p1, p0, Lcom/threed/jpct/GL20;->alpha:F

    .line 3
    iget-object p1, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    const/4 p2, 0x0

    aget p4, p3, p2

    aput p4, p1, p2

    const/4 p2, 0x1

    .line 4
    aget p4, p3, p2

    aput p4, p1, p2

    const/4 p2, 0x2

    .line 5
    aget p3, p3, p2

    aput p3, p1, p2

    :cond_0
    return-void
.end method

.method public glMaterialx(III)V
    .locals 0

    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 0

    .line 2
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 3

    const/16 v0, 0x1700

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    iput-object p1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    goto :goto_0

    :cond_0
    const/16 v0, 0x1702

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    iput-object p1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    goto :goto_0

    :cond_1
    const/16 v0, 0x1701

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    iput-object p1, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported matrix mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2
    iget-object p1, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 4
    iget-object p1, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object p2, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/16 v0, 0x10

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glMultMatrixx([II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glNormal3f(FFF)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glNormal3x(III)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glNormalPointer(III)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x0

    move v3, p1

    move v5, p2

    move v6, p3

    .line 4
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_0
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x0

    move v3, p1

    move v5, p2

    move-object v6, p3

    .line 2
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    int-to-float v7, p6

    const/4 v1, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public glPixelStorei(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointParameterfv(I[FI)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointParameterx(II)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointParameterxv(I[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointSize(F)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPointSizex(I)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glPolygonOffset(FF)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    return-void
.end method

.method public glPopMatrix()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    invoke-direct {p0, v0}, Lcom/threed/jpct/GL20;->setIdentity([F)V

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    :cond_0
    return-void
.end method

.method public glPushMatrix()V
    .locals 0

    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public glRotatex(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glSampleCoverage(FZ)V

    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 0

    int-to-float p1, p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glSampleCoverage(FZ)V

    return-void
.end method

.method public glScalef(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public glScalex(III)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public glScissor(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    return-void
.end method

.method public glShadeModel(I)V
    .locals 1

    const/16 v0, 0x1d00

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/GL20;->flatShading:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/threed/jpct/GL20;->flatShading:Z

    :goto_0
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    return-void
.end method

.method public glStencilMask(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glStencilMask(I)V

    return-void
.end method

.method public glStencilOp(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilOp(III)V

    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 8

    .line 4
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, v1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v2, v1, v0

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    .line 6
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_0
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, v1, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    aget v2, v1, v0

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    .line 3
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 0

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/threed/jpct/GL20;->glTexEnvx(III)V

    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexEnvfv(II[FI)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexEnvi(III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/threed/jpct/GL20;->glTexEnvx(III)V

    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexEnviv(II[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexEnvx(III)V
    .locals 1

    const/16 v0, 0x2300

    if-ne p1, v0, :cond_6

    const/16 p1, 0x2200

    if-ne p2, p1, :cond_3

    const/16 p1, 0x104

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e01

    if-ne p3, p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/16 p1, 0xbe2

    if-ne p3, p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/threed/jpct/GL20;->textureModes:[I

    invoke-direct {p0}, Lcom/threed/jpct/GL20;->getTextureStageIndex()I

    move-result p3

    aput p1, p2, p3

    goto :goto_1

    :cond_3
    const p1, 0x8571

    if-ne p2, p1, :cond_4

    iput p3, p0, Lcom/threed/jpct/GL20;->textureCombineRgb:I

    goto :goto_1

    :cond_4
    const p1, 0x8573

    if-ne p2, p1, :cond_5

    iput p3, p0, Lcom/threed/jpct/GL20;->textureRgbScale:I

    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Parameter not supported: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Not implemented: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexEnvxv(II[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glTexParameterfv(II[FI)V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glTexParameteriv(II[II)V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexParameterxv(II[II)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public glTranslatex(III)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/GL20;->currentMatrixPointer:[F

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 4
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_0
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .line 2
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public glViewport(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    return-void
.end method

.method public resetShaderData()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/threed/jpct/GL20;->alpha:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threed/jpct/GL20;->useColors:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/threed/jpct/GL20;->shininess:F

    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    aput v2, v3, v1

    iget-object v3, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/GLRenderer;Lcom/threed/jpct/FrameBuffer;)V
    .locals 12

    iget v0, p2, Lcom/threed/jpct/GLRenderer;->myID:I

    const-string v1, ")!"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x8d40

    const v5, 0x8d41

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-nez p1, :cond_4

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    iget p1, p0, Lcom/threed/jpct/GL20;->fbo:I

    if-eq p1, v7, :cond_1

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unbinding buffers ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-virtual {p2, p3}, Lcom/threed/jpct/GLRenderer;->resetViewport(Lcom/threed/jpct/FrameBuffer;)V

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz p1, :cond_3

    iput-boolean v8, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    iget-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object p2, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    if-eq p1, p2, :cond_2

    const-string p1, "Exiting from depth mode without the shader being set...strange..."

    invoke-static {p1, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    iput-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object p1, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    iput-object p1, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    :cond_3
    iput-object v2, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    iput-object v2, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v9

    invoke-static {v8, v8, p3, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p3, p0, Lcom/threed/jpct/GL20;->buffy4:Ljava/nio/IntBuffer;

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-boolean v9, p1, Lcom/threed/jpct/Texture;->isShadowMap:Z

    iput-boolean v9, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    iget v9, p1, Lcom/threed/jpct/Texture;->fbo:I

    iput v9, p0, Lcom/threed/jpct/GL20;->fbo:I

    iget v9, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    iget v10, p1, Lcom/threed/jpct/Texture;->lastHandlerId:I

    iget v11, p0, Lcom/threed/jpct/GL20;->id:I

    if-eq v10, v11, :cond_6

    if-eq v10, v7, :cond_6

    iput v7, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v10

    iget v10, v10, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    iget v11, p0, Lcom/threed/jpct/GL20;->id:I

    if-eq v10, v11, :cond_6

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v10

    iget v10, v10, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    if-eq v10, v7, :cond_6

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v10

    iput v7, v10, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    goto :goto_0

    :cond_5
    move v9, v7

    :cond_6
    :goto_0
    iget v10, p0, Lcom/threed/jpct/GL20;->id:I

    iput v10, p1, Lcom/threed/jpct/Texture;->lastHandlerId:I

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v9

    iget v10, p0, Lcom/threed/jpct/GL20;->id:I

    iput v10, v9, Lcom/threed/jpct/DepthBuffer;->lastHandlerId:I

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object v9

    iget v9, v9, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    move v10, v6

    goto :goto_1

    :cond_7
    move v10, v8

    :goto_1
    iget v11, p0, Lcom/threed/jpct/GL20;->fbo:I

    if-ne v11, v7, :cond_10

    invoke-static {v6, p3}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v1

    if-nez v1, :cond_8

    sget v1, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    invoke-virtual {p1, v0, v1}, Lcom/threed/jpct/Texture;->setMarker(II)V

    invoke-virtual {p2, p1}, Lcom/threed/jpct/GLRenderer;->convertTexture(Lcom/threed/jpct/Texture;)V

    iget-object v1, p2, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aput v7, v1, v8

    :cond_8
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result p2

    iput p2, p0, Lcom/threed/jpct/GL20;->fboTexture:I

    iget p2, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-static {v4, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 p2, 0xde1

    const v0, 0x8ce0

    invoke-static {v4, v0, p2, v1, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create frame buffer ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/threed/jpct/GL20;->checkError(Ljava/lang/String;)V

    const p2, 0x8d00

    const v0, 0x81a5

    if-eqz v10, :cond_b

    if-ne v9, v7, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Using depth buffer\'s render buffer "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_a
    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v1

    invoke-static {v5, v0, p3, v1}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    invoke-static {v4, p2, v5, v9}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    goto :goto_5

    :cond_b
    :goto_2
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Creating render buffer "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_c

    const-string v7, "for depth buffer!"

    goto :goto_3

    :cond_c
    const-string v7, "in depth mode!"

    :goto_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_d
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v6, p3}, Landroid/opengl/GLES20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result p3

    invoke-static {v5, p3}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v6

    invoke-static {v5, v0, v1, v6}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    invoke-static {v4, p2, v5, p3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    if-eqz v10, :cond_e

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getDepthBuffer()Lcom/threed/jpct/DepthBuffer;

    move-result-object p2

    iput p3, p2, Lcom/threed/jpct/DepthBuffer;->renderBuffer:I

    goto :goto_4

    :cond_e
    iput p3, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    :goto_4
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_f

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Render buffer created: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_f
    :goto_5
    invoke-direct {p0}, Lcom/threed/jpct/GL20;->checkFrameBufferObject()V

    iget p2, p0, Lcom/threed/jpct/GL20;->fbo:I

    iput p2, p1, Lcom/threed/jpct/Texture;->fbo:I

    goto :goto_6

    :cond_10
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Binding buffers ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_11
    iget p1, p0, Lcom/threed/jpct/GL20;->fbo:I

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    :goto_6
    iget-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object p2, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    if-eq p1, p2, :cond_12

    iget-boolean p3, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz p3, :cond_12

    iput-object p1, p0, Lcom/threed/jpct/GL20;->storedShader:Lcom/threed/jpct/GLSLShader;

    iget-object p1, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iput-object p1, p0, Lcom/threed/jpct/GL20;->storedUserShader:Lcom/threed/jpct/GLSLShader;

    iput-object p2, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iput-object v2, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iget p1, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {p2, p1}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    :cond_12
    :goto_7
    return-void
.end method

.method public setShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader;->preInit()V

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v0, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    if-eq p1, v0, :cond_3

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    iget-object p1, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iput-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    iget v0, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    iget-object p1, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    iput-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    :cond_3
    :goto_0
    return-void
.end method

.method public setTangents(I)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x8892

    .line 5
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 6
    iget-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget p1, p1, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    iget-object p1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, p1, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x140c

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_0
    return-void
.end method

.method public setTangents(Ljava/nio/Buffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v0, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 3
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, v0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v2, 0x4

    const/16 v3, 0x140c

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public unloadRenderTarget(Lcom/threed/jpct/Texture;)V
    .locals 6

    iget-object v0, p0, Lcom/threed/jpct/GL20;->buffy4:Ljava/nio/IntBuffer;

    iget v1, p1, Lcom/threed/jpct/Texture;->fbo:I

    iget v2, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const v4, 0x8d40

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iput v3, p1, Lcom/threed/jpct/Texture;->fbo:I

    :cond_0
    if-eq v2, v3, :cond_1

    const v1, 0x8d41

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iput v3, p1, Lcom/threed/jpct/Texture;->renderBuffer:I

    :cond_1
    return-void
.end method

.method public updateShaderData()Lcom/threed/jpct/GLSLShader;
    .locals 13

    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->depthMode:Z

    if-eqz v0, :cond_0

    const-string v0, "Can\'t render into a depth map without the shader being set!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    iput-object v0, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v1, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->lightsState:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-boolean v1, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    if-nez v1, :cond_2

    move v0, v2

    :cond_2
    iget-object v1, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget-object v5, p0, Lcom/threed/jpct/GL20;->defaultShaderDepth:Lcom/threed/jpct/GLSLShader;

    if-eq v1, v5, :cond_9

    iget-object v1, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->length()I

    move-result v1

    iget-object v5, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    if-le v1, v4, :cond_4

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderTex1:Lcom/threed/jpct/GLSLShader;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShader:Lcom/threed/jpct/GLSLShader;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0:Lcom/threed/jpct/GLSLShader;

    iget-boolean v6, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    if-eqz v6, :cond_6

    if-eq v0, v4, :cond_5

    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderFog:Lcom/threed/jpct/GLSLShader;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderFogLight0:Lcom/threed/jpct/GLSLShader;

    goto :goto_0

    :cond_6
    iget-boolean v6, p0, Lcom/threed/jpct/GL20;->textureMatrixUsed:Z

    if-nez v6, :cond_8

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Amb:Lcom/threed/jpct/GLSLShader;

    goto :goto_0

    :cond_7
    if-ne v0, v4, :cond_8

    iget-object v1, p0, Lcom/threed/jpct/GL20;->defaultShaderTex0Light0:Lcom/threed/jpct/GLSLShader;

    :cond_8
    :goto_0
    if-eq v1, v5, :cond_9

    iget v5, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GLSLShader;->activate(I)V

    iput-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    :cond_9
    iget-object v1, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    iget v5, p0, Lcom/threed/jpct/GL20;->id:I

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GLSLShader;->checkContext(I)V

    iget-object v5, p0, Lcom/threed/jpct/GL20;->userShader:Lcom/threed/jpct/GLSLShader;

    iget-object v6, p0, Lcom/threed/jpct/GL20;->activeShader:Lcom/threed/jpct/GLSLShader;

    if-ne v5, v6, :cond_a

    invoke-virtual {v5}, Lcom/threed/jpct/GLSLShader;->update()V

    :cond_a
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    iget-object v7, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    iget-object v9, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    iget-object v11, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v5, v1, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    iget-object v7, p0, Lcom/threed/jpct/GL20;->tempMatrix:[F

    invoke-static {v5, v4, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_b
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    if-eq v5, v6, :cond_c

    iget-object v7, p0, Lcom/threed/jpct/GL20;->modelviewMatrix:[F

    invoke-static {v5, v4, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_c
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    if-eq v5, v6, :cond_d

    iget-object v7, p0, Lcom/threed/jpct/GL20;->textureMatrix:[F

    invoke-static {v5, v4, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_d
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    if-eq v5, v6, :cond_e

    iget-object v7, p0, Lcom/threed/jpct/GL20;->projectionMatrix:[F

    invoke-static {v5, v4, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_e
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    if-eq v5, v6, :cond_f

    iget v7, p0, Lcom/threed/jpct/GL20;->alpha:F

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_f
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    if-eq v5, v6, :cond_10

    iget-boolean v7, p0, Lcom/threed/jpct/GL20;->useColors:Z

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_10
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    if-eq v5, v6, :cond_11

    iget-object v7, p0, Lcom/threed/jpct/GL20;->additionalColor:[F

    invoke-static {v5, v4, v7, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    :cond_11
    iget v5, v1, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    if-eq v5, v6, :cond_12

    iget-object v7, p0, Lcom/threed/jpct/GL20;->ambientColor:[F

    invoke-static {v5, v4, v7, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    :cond_12
    iget-boolean v5, p0, Lcom/threed/jpct/GL20;->lightsEnabled:Z

    if-eqz v5, :cond_17

    iget v5, p0, Lcom/threed/jpct/GL20;->lightCount:I

    if-lez v5, :cond_17

    mul-int/lit8 v7, v0, 0x3

    iget-object v8, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    array-length v9, v8

    if-ge v7, v9, :cond_13

    add-int/lit8 v9, v7, 0x1

    const v10, -0x3b864000    # -999.0f

    aput v10, v8, v7

    add-int/2addr v7, v3

    aput v10, v8, v9

    aput v10, v8, v7

    :cond_13
    iget v3, v1, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    if-eq v3, v6, :cond_14

    iget-object v7, p0, Lcom/threed/jpct/GL20;->lightPositions:[F

    invoke-static {v3, v5, v7, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    :cond_14
    iget v3, v1, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    if-eq v3, v6, :cond_15

    iget v5, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-object v7, p0, Lcom/threed/jpct/GL20;->attenuation:[F

    invoke-static {v3, v5, v7, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    :cond_15
    iget v3, v1, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    if-eq v3, v6, :cond_16

    iget v5, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-object v7, p0, Lcom/threed/jpct/GL20;->diffuseColors:[F

    invoke-static {v3, v5, v7, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    :cond_16
    iget v3, v1, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    if-eq v3, v6, :cond_17

    iget v5, p0, Lcom/threed/jpct/GL20;->lightCount:I

    iget-object v7, p0, Lcom/threed/jpct/GL20;->specularColors:[F

    invoke-static {v3, v5, v7, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    :cond_17
    iget v3, v1, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    if-eq v3, v6, :cond_18

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_18
    iget v0, v1, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    if-eqz v0, :cond_19

    iget v3, p0, Lcom/threed/jpct/GL20;->shininess:F

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_19
    iget-boolean v0, p0, Lcom/threed/jpct/GL20;->fogEnabled:Z

    if-eqz v0, :cond_1c

    iget v0, v1, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    if-eq v0, v6, :cond_1a

    iget v3, p0, Lcom/threed/jpct/GL20;->fogStart:F

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1a
    iget v0, v1, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    if-eq v0, v6, :cond_1b

    iget v3, p0, Lcom/threed/jpct/GL20;->fogEnd:F

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1b
    iget v0, v1, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    if-eq v0, v6, :cond_1d

    iget-object v3, p0, Lcom/threed/jpct/GL20;->fogColor:[F

    invoke-static {v0, v4, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    goto :goto_1

    :cond_1c
    iget v0, v1, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    if-eq v0, v6, :cond_1d

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1d
    :goto_1
    iget-object v0, p0, Lcom/threed/jpct/GL20;->textureStates:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    iget v3, v1, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    if-eq v3, v6, :cond_1e

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1e
    iget v3, v1, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    if-eq v3, v6, :cond_1f

    iget-object v4, p0, Lcom/threed/jpct/GL20;->textureModes:[I

    invoke-static {v3, v0, v4, v2}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    :cond_1f
    return-object v1
.end method

.method public uploadTexture(IIIIZLjava/nio/ByteBuffer;)Z
    .locals 22

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p6

    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-boolean v7, Lcom/threed/jpct/Config;->cacheCompressedTextures:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v10, "Compressing texture to ETC1..."

    invoke-static {v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    mul-int v10, v0, v1

    const/4 v11, 0x3

    mul-int/2addr v10, v11

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual/range {p6 .. p6}, Ljava/nio/Buffer;->limit()I

    move-result v12

    const/16 v13, 0xf

    new-array v14, v13, [B

    mul-int/lit8 v15, v12, 0x6f

    mul-int/lit16 v13, v2, 0x6f5

    add-int/2addr v15, v13

    int-to-long v5, v15

    move-wide/from16 v20, v5

    move-object v6, v14

    move-wide/from16 v13, v20

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v12, :cond_4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "etc1_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".tex"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_1

    invoke-virtual {v4, v3}, Lcom/threed/jpct/Virtualizer;->readFromCache(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v6, v0, v1, v5}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    mul-int/lit8 v5, v0, 0x3

    invoke-static {v10, v0, v1, v11, v5}, Landroid/opengl/ETC1Util;->compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v0

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/threed/jpct/Virtualizer;->storeInCache(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z

    :cond_2
    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, v6

    :goto_3
    const/16 v3, 0x1907

    const/16 v4, 0x1401

    const/16 v0, 0xde1

    const/4 v6, 0x0

    move/from16 v1, p4

    move v2, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...done in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v0, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v15, v5, 0x4

    add-int/lit8 v5, v5, 0x8

    if-ge v5, v12, :cond_5

    invoke-virtual {v3, v6, v11, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    const/4 v15, 0x6

    move/from16 v20, v15

    move v15, v5

    move/from16 v5, v20

    goto :goto_4

    :cond_5
    move v5, v11

    :goto_4
    add-int/lit8 v0, v15, 0x4

    if-ge v0, v12, :cond_6

    invoke-virtual {v3, v6, v5, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v5, v5, 0x3

    move v15, v0

    :cond_6
    add-int/lit8 v0, v15, 0x4

    if-ge v0, v12, :cond_7

    invoke-virtual {v3, v6, v5, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v5, v5, 0x3

    move v15, v0

    :cond_7
    add-int/lit8 v0, v15, 0x4

    if-ge v0, v12, :cond_8

    invoke-virtual {v3, v6, v5, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v5, v5, 0x3

    move v15, v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v10, v6, v0, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/16 v5, 0xf

    :goto_5
    if-lt v0, v5, :cond_9

    move/from16 v0, p1

    move v5, v15

    goto/16 :goto_1

    :cond_9
    aget-byte v5, v6, v0

    and-int/lit8 v11, v15, 0x1

    const/4 v1, 0x1

    if-ne v11, v1, :cond_a

    move v11, v1

    goto :goto_6

    :cond_a
    const/4 v11, -0x1

    :goto_6
    mul-int/lit8 v1, v15, 0xa

    int-to-long v1, v1

    move-object/from16 v18, v4

    int-to-long v3, v5

    move-object/from16 v19, v6

    int-to-long v5, v11

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    add-long/2addr v13, v1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    const/16 v5, 0xf

    const/4 v11, 0x3

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    return v0
.end method
