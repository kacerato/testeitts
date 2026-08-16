.class public final Lcom/jme3/texture/image/LastTextureState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public anisoFilter:I

.field public magFilter:Lcom/jme3/texture/Texture$MagFilter;

.field public minFilter:Lcom/jme3/texture/Texture$MinFilter;

.field public minFilterMipmapsAvailable:Z

.field public rWrap:Lcom/jme3/texture/Texture$WrapMode;

.field public sWrap:Lcom/jme3/texture/Texture$WrapMode;

.field public shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

.field public tWrap:Lcom/jme3/texture/Texture$WrapMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/texture/image/LastTextureState;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/texture/image/LastTextureState;->sWrap:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/image/LastTextureState;->tWrap:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/image/LastTextureState;->rWrap:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/image/LastTextureState;->magFilter:Lcom/jme3/texture/Texture$MagFilter;

    iput-object v0, p0, Lcom/jme3/texture/image/LastTextureState;->minFilter:Lcom/jme3/texture/Texture$MinFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/texture/image/LastTextureState;->minFilterMipmapsAvailable:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/texture/image/LastTextureState;->anisoFilter:I

    sget-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    iput-object v0, p0, Lcom/jme3/texture/image/LastTextureState;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    return-void
.end method
