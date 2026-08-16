.class public Lcom/jme3/material/RenderState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/RenderState$FaceCullMode;,
        Lcom/jme3/material/RenderState$BlendEquation;,
        Lcom/jme3/material/RenderState$BlendEquationAlpha;,
        Lcom/jme3/material/RenderState$BlendMode;,
        Lcom/jme3/material/RenderState$TestFunction;,
        Lcom/jme3/material/RenderState$StencilOperation;,
        Lcom/jme3/material/RenderState$BlendFunc;
    }
.end annotation


# static fields
.field public static final ADDITIONAL:Lcom/jme3/material/RenderState;

.field public static final DEFAULT:Lcom/jme3/material/RenderState;

.field public static final NULL:Lcom/jme3/material/RenderState;


# instance fields
.field applyBlendMode:Z

.field applyColorWrite:Z

.field applyCullMode:Z

.field applyDepthFunc:Z

.field applyDepthTest:Z

.field applyDepthWrite:Z

.field applyLineWidth:Z

.field applyPolyOffset:Z

.field applyStencilTest:Z

.field applyWireFrame:Z

.field backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field backStencilMask:I

.field backStencilReference:I

.field backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

.field blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field blendMode:Lcom/jme3/material/RenderState$BlendMode;

.field cachedHashCode:I

.field colorWrite:Z

.field cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

.field depthFunc:Lcom/jme3/material/RenderState$TestFunction;

.field depthTest:Z

.field depthWrite:Z

.field dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

.field dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

.field frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field frontStencilMask:I

.field frontStencilReference:I

.field frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field lineWidth:F

.field offsetEnabled:Z

.field offsetFactor:F

.field offsetUnits:F

.field sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

.field sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

.field stencilTest:Z

.field wireframe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/RenderState;->DEFAULT:Lcom/jme3/material/RenderState;

    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/RenderState;->NULL:Lcom/jme3/material/RenderState;

    new-instance v1, Lcom/jme3/material/RenderState;

    invoke-direct {v1}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v1, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v2, v0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v2, v1, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    iput-boolean v2, v1, Lcom/jme3/material/RenderState;->applyCullMode:Z

    iput-boolean v2, v1, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    iput-boolean v2, v1, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    iput-boolean v2, v1, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    iput-boolean v2, v1, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    iput-boolean v2, v1, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v2, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    sget-object v2, Lcom/jme3/material/RenderState$BlendEquation;->Add:Lcom/jme3/material/RenderState$BlendEquation;

    iput-object v2, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    sget-object v2, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iput-object v2, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v2, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput v2, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/material/RenderState;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v0

    return-object v0
.end method

.method public contentHashCode()I
    .locals 3

    iget v0, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    const/16 v1, 0x229

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget v0, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    iget-object v0, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    :cond_d
    iget v0, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return v0
.end method

.method public copyFrom(Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;
    .locals 1

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyCullMode:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget v0, p1, Lcom/jme3/material/RenderState;->backStencilMask:I

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    iget v0, p1, Lcom/jme3/material/RenderState;->backStencilReference:I

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iget v0, p1, Lcom/jme3/material/RenderState;->cachedHashCode:I

    iput v0, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->colorWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget v0, p1, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iget v0, p1, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget v0, p1, Lcom/jme3/material/RenderState;->lineWidth:F

    iput v0, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iget v0, p1, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    iget v0, p1, Lcom/jme3/material/RenderState;->offsetUnits:F

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    iget-object v0, p1, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    iget-boolean p1, p1, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    return-object p0
.end method

.method public copyMergedTo(Lcom/jme3/material/RenderState;Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->wireframe:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->wireframe:Z

    :goto_0
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyCullMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    :goto_1
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthWrite:Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthWrite:Z

    :goto_2
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthTest:Z

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthTest:Z

    :goto_3
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    :goto_4
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->colorWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->colorWrite:Z

    goto :goto_5

    :cond_6
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->colorWrite:Z

    :goto_5
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Custom:Lcom/jme3/material/RenderState$BlendMode;

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Custom:Lcom/jme3/material/RenderState$BlendMode;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    :cond_8
    :goto_6
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iget v0, p1, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetFactor:F

    iget v0, p1, Lcom/jme3/material/RenderState;->offsetUnits:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetUnits:F

    goto :goto_7

    :cond_9
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iget v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetFactor:F

    iget v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetUnits:F

    :goto_7
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->stencilTest:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget v0, p1, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iput v0, p2, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iget v0, p1, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iput v0, p2, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iget v0, p1, Lcom/jme3/material/RenderState;->backStencilMask:I

    iput v0, p2, Lcom/jme3/material/RenderState;->backStencilMask:I

    iget v0, p1, Lcom/jme3/material/RenderState;->backStencilReference:I

    iput v0, p2, Lcom/jme3/material/RenderState;->backStencilReference:I

    goto :goto_8

    :cond_a
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->stencilTest:Z

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget v0, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iput v0, p2, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iget v0, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iput v0, p2, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iget v0, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    iput v0, p2, Lcom/jme3/material/RenderState;->backStencilMask:I

    iget v0, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    iput v0, p2, Lcom/jme3/material/RenderState;->backStencilReference:I

    :goto_8
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    if-eqz v0, :cond_b

    iget p1, p1, Lcom/jme3/material/RenderState;->lineWidth:F

    iput p1, p2, Lcom/jme3/material/RenderState;->lineWidth:F

    goto :goto_9

    :cond_b
    iget p1, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    iput p1, p2, Lcom/jme3/material/RenderState;->lineWidth:F

    :goto_9
    const/4 p1, -0x1

    iput p1, p2, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jme3/material/RenderState;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/material/RenderState;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    iget-boolean v2, p1, Lcom/jme3/material/RenderState;->wireframe:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    iget-boolean v2, p1, Lcom/jme3/material/RenderState;->depthWrite:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    iget-boolean v2, p1, Lcom/jme3/material/RenderState;->depthTest:Z

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    iget-boolean v2, p1, Lcom/jme3/material/RenderState;->colorWrite:Z

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    if-eq v1, v2, :cond_8

    return v0

    :cond_8
    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Custom:Lcom/jme3/material/RenderState$BlendMode;

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    if-eq v1, v2, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    if-eq v1, v2, :cond_a

    return v0

    :cond_a
    iget-object v1, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    iget-object v1, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    if-eq v1, v2, :cond_c

    return v0

    :cond_c
    iget-object v1, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    if-eq v1, v2, :cond_d

    return v0

    :cond_d
    iget-object v1, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    if-eq v1, v2, :cond_e

    return v0

    :cond_e
    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iget-boolean v2, p1, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    iget v1, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    iget v2, p1, Lcom/jme3/material/RenderState;->offsetFactor:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_10

    return v0

    :cond_10
    iget v1, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    iget v2, p1, Lcom/jme3/material/RenderState;->offsetUnits:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    return v0

    :cond_11
    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    iget-boolean v2, p1, Lcom/jme3/material/RenderState;->stencilTest:Z

    if-eq v1, v2, :cond_12

    return v0

    :cond_12
    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eq v1, v2, :cond_14

    return v0

    :cond_14
    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eq v1, v2, :cond_15

    return v0

    :cond_15
    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eq v1, v2, :cond_16

    return v0

    :cond_16
    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eq v1, v2, :cond_17

    return v0

    :cond_17
    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    if-eq v1, v2, :cond_18

    return v0

    :cond_18
    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    if-eq v1, v2, :cond_19

    return v0

    :cond_19
    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget-object v2, p1, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    if-eq v1, v2, :cond_1a

    return v0

    :cond_1a
    iget v1, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iget v2, p1, Lcom/jme3/material/RenderState;->frontStencilMask:I

    if-eq v1, v2, :cond_1b

    return v0

    :cond_1b
    iget v1, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    iget v2, p1, Lcom/jme3/material/RenderState;->backStencilMask:I

    if-eq v1, v2, :cond_1c

    return v0

    :cond_1c
    iget v1, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iget v2, p1, Lcom/jme3/material/RenderState;->frontStencilReference:I

    if-eq v1, v2, :cond_1d

    return v0

    :cond_1d
    iget v1, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    iget v2, p1, Lcom/jme3/material/RenderState;->backStencilReference:I

    if-eq v1, v2, :cond_1e

    return v0

    :cond_1e
    iget v1, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    iget p1, p1, Lcom/jme3/material/RenderState;->lineWidth:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_1f

    return v0

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public flipFaceCull()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {p0, v0}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {p0, v0}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    :goto_0
    return-void
.end method

.method public getAlphaFallOff()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaFunc()Lcom/jme3/material/RenderState$TestFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->Greater:Lcom/jme3/material/RenderState$TestFunction;

    return-object v0
.end method

.method public getBackStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method

.method public getBackStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method

.method public getBackStencilFunction()Lcom/jme3/material/RenderState$TestFunction;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    return-object v0
.end method

.method public getBackStencilMask()I
    .locals 1

    iget v0, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    return v0
.end method

.method public getBackStencilReference()I
    .locals 1

    iget v0, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    return v0
.end method

.method public getBackStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method

.method public getBlendEquation()Lcom/jme3/material/RenderState$BlendEquation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    return-object v0
.end method

.method public getBlendEquationAlpha()Lcom/jme3/material/RenderState$BlendEquationAlpha;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    return-object v0
.end method

.method public getBlendMode()Lcom/jme3/material/RenderState$BlendMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    return-object v0
.end method

.method public getCustomDfactorAlpha()Lcom/jme3/material/RenderState$BlendFunc;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    return-object v0
.end method

.method public getCustomDfactorRGB()Lcom/jme3/material/RenderState$BlendFunc;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    return-object v0
.end method

.method public getCustomSfactorAlpha()Lcom/jme3/material/RenderState$BlendFunc;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    return-object v0
.end method

.method public getCustomSfactorRGB()Lcom/jme3/material/RenderState$BlendFunc;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    return-object v0
.end method

.method public getDepthFunc()Lcom/jme3/material/RenderState$TestFunction;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    return-object v0
.end method

.method public getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    return-object v0
.end method

.method public getFrontStencilDepthFailOperation()Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method

.method public getFrontStencilDepthPassOperation()Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method

.method public getFrontStencilFunction()Lcom/jme3/material/RenderState$TestFunction;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    return-object v0
.end method

.method public getFrontStencilMask()I
    .locals 1

    iget v0, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    return v0
.end method

.method public getFrontStencilReference()I
    .locals 1

    iget v0, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    return v0
.end method

.method public getFrontStencilStencilFailOperation()Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    return v0
.end method

.method public getPolyOffsetFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    return v0
.end method

.method public getPolyOffsetUnits()F
    .locals 1

    iget v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    return v0
.end method

.method public isAlphaTest()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isApplyBlendMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    return v0
.end method

.method public isApplyColorWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    return v0
.end method

.method public isApplyCullMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    return v0
.end method

.method public isApplyDepthFunc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    return v0
.end method

.method public isApplyDepthTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    return v0
.end method

.method public isApplyDepthWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    return v0
.end method

.method public isApplyLineWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    return v0
.end method

.method public isApplyPolyOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    return v0
.end method

.method public isApplyWireFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    return v0
.end method

.method public isColorWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    return v0
.end method

.method public isDepthTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    return v0
.end method

.method public isDepthWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    return v0
.end method

.method public isFaceCullFlippable()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPointSprite()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isPolyOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    return v0
.end method

.method public isStencilTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    return v0
.end method

.method public isWireframe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "wireframe"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    const-class v0, Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v3, "cullMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v0, "depthWrite"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    const-string v0, "depthTest"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    const-string v0, "colorWrite"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    const-class v0, Lcom/jme3/material/RenderState$BlendMode;

    sget-object v3, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    const-string v4, "blendMode"

    invoke-interface {p1, v4, v0, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    const-string v0, "offsetEnabled"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    const-string v0, "offsetFactor"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    const-string v0, "offsetUnits"

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    const-string v0, "stencilTest"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v3, "frontStencilStencilFailOperation"

    const-class v4, Lcom/jme3/material/RenderState$StencilOperation;

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v3, "frontStencilDepthFailOperation"

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v3, "frontStencilDepthPassOperation"

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v3, "backStencilStencilFailOperation"

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v3, "backStencilDepthFailOperation"

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v3, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v3, "backStencilDepthPassOperation"

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    const-string v3, "frontStencilFunction"

    const-class v4, Lcom/jme3/material/RenderState$TestFunction;

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/RenderState$TestFunction;

    iput-object v3, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    const-string v3, "backStencilFunction"

    invoke-interface {p1, v3, v4, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    const-string v0, "frontStencilReference"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    const-string v0, "backStencilReference"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    const-string v0, "frontStencilMask"

    const v1, 0x7fffffff

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    const-string v0, "backStencilMask"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    const-class v0, Lcom/jme3/material/RenderState$BlendEquation;

    sget-object v1, Lcom/jme3/material/RenderState$BlendEquation;->Add:Lcom/jme3/material/RenderState$BlendEquation;

    const-string v3, "blendEquation"

    invoke-interface {p1, v3, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$BlendEquation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    const-class v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v1, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v3, "blendEquationAlpha"

    invoke-interface {p1, v3, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v0, "depthFunc"

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    invoke-interface {p1, v0, v4, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    const-string v0, "lineWidth"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "sfactorRGB"

    const-class v3, Lcom/jme3/material/RenderState$BlendFunc;

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "dfactorRGB"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "sfactorAlpha"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v1, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "dfactorAlpha"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v0, "applyWireFrame"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    const-string v0, "applyCullMode"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    const-string v0, "applyDepthWrite"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    const-string v0, "applyDepthTest"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    const-string v0, "applyColorWrite"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    const-string v0, "applyBlendMode"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    const-string v0, "applyPolyOffset"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    const-string v0, "applyDepthFunc"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    const-string v0, "applyLineWidth"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    return-void
.end method

.method public set(Lcom/jme3/material/RenderState;)V
    .locals 1

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->colorWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iget v0, p1, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    iget v0, p1, Lcom/jme3/material/RenderState;->offsetUnits:F

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iget v0, p1, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    iget v0, p1, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iput v0, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    iget v0, p1, Lcom/jme3/material/RenderState;->backStencilMask:I

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    iget v0, p1, Lcom/jme3/material/RenderState;->backStencilReference:I

    iput v0, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    iget v0, p1, Lcom/jme3/material/RenderState;->lineWidth:F

    iput v0, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    iget-object v0, p1, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object v0, p1, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iget-object p1, p1, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p1, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    return-void
.end method

.method public setBackStencilMask(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setBackStencilReference(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setBlendEquation(Lcom/jme3/material/RenderState$BlendEquation;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setBlendEquationAlpha(Lcom/jme3/material/RenderState$BlendEquationAlpha;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    iput-object p1, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setColorWrite(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setCustomBlendFactors(Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;Lcom/jme3/material/RenderState$BlendFunc;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p2, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p3, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    iput-object p4, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setDepthFunc(Lcom/jme3/material/RenderState$TestFunction;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    iput-object p1, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setDepthTest(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setDepthWrite(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    iput-object p1, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setFrontStencilMask(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setFrontStencilReference(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "lineWidth must be greater than or equal to 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPolyOffset(FF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput p1, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput p2, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setStencil(ZLcom/jme3/material/RenderState$StencilOperation;Lcom/jme3/material/RenderState$StencilOperation;Lcom/jme3/material/RenderState$StencilOperation;Lcom/jme3/material/RenderState$StencilOperation;Lcom/jme3/material/RenderState$StencilOperation;Lcom/jme3/material/RenderState$StencilOperation;Lcom/jme3/material/RenderState$TestFunction;Lcom/jme3/material/RenderState$TestFunction;)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    iput-object p2, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object p3, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object p4, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object p5, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object p6, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object p7, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object p8, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object p9, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public setWireframe(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/material/RenderState;->cachedHashCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderState[\n\nwireframe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\napplyWireFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncullMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\napplyCullMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ndepthWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\napplyDepthWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ndepthTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ndepthFunc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\napplyDepthTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncolorWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\napplyColorWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nblendEquation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nblendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\napplyBlendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\noffsetEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\napplyPolyOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\noffsetFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\noffsetUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nlineWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Custom:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncustomBlendFactors=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "pointSprite"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    const-string v3, "wireframe"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v3, "cullMode"

    sget-object v4, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    const-string v3, "depthWrite"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    const-string v3, "depthTest"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    const-string v3, "colorWrite"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    const-string v3, "blendMode"

    sget-object v4, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    const-string v3, "offsetEnabled"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v1, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    const-string v3, "offsetFactor"

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v1, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    const-string v3, "offsetUnits"

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    const-string v3, "stencilTest"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v4, "frontStencilStencilFailOperation"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v4, "frontStencilDepthFailOperation"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v4, "frontStencilDepthPassOperation"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v4, "backStencilStencilFailOperation"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v4, "backStencilDepthFailOperation"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    const-string v4, "backStencilDepthPassOperation"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    const-string v4, "frontStencilFunction"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    const-string v4, "backStencilFunction"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v1, p0, Lcom/jme3/material/RenderState;->frontStencilReference:I

    const-string v3, "frontStencilReference"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v1, p0, Lcom/jme3/material/RenderState;->backStencilReference:I

    const-string v3, "backStencilReference"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v1, p0, Lcom/jme3/material/RenderState;->frontStencilMask:I

    const-string v2, "frontStencilMask"

    const v3, 0x7fffffff

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v1, p0, Lcom/jme3/material/RenderState;->backStencilMask:I

    const-string v2, "backStencilMask"

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendEquation:Lcom/jme3/material/RenderState$BlendEquation;

    const-string v2, "blendEquation"

    sget-object v3, Lcom/jme3/material/RenderState$BlendEquation;->Add:Lcom/jme3/material/RenderState$BlendEquation;

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendEquationAlpha:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v2, "blendEquationAlpha"

    sget-object v3, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->depthFunc:Lcom/jme3/material/RenderState$TestFunction;

    const-string v2, "depthFunc"

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v1, p0, Lcom/jme3/material/RenderState;->lineWidth:F

    const-string v2, "lineWidth"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->sfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v2, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v3, "sfactorRGB"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->dfactorRGB:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v3, "dfactorRGB"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->sfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v3, "sfactorAlpha"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v1, p0, Lcom/jme3/material/RenderState;->dfactorAlpha:Lcom/jme3/material/RenderState$BlendFunc;

    const-string v3, "dfactorAlpha"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    const-string v2, "applyWireFrame"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    const-string v2, "applyCullMode"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    const-string v2, "applyDepthWrite"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    const-string v2, "applyDepthTest"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    const-string v2, "applyColorWrite"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    const-string v2, "applyBlendMode"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    const-string v2, "applyPolyOffset"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthFunc:Z

    const-string v2, "applyDepthFunc"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyLineWidth:Z

    const-string v2, "applyLineWidth"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
