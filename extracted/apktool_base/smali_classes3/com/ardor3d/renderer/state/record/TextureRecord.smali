.class public Lcom/ardor3d/renderer/state/record/TextureRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# static fields
.field public static colorBuffer:Ljava/nio/FloatBuffer;


# instance fields
.field public anisoLevel:F

.field public borderColor:Lcom/ardor3d/math/ColorRGBA;

.field public depthTextureCompareFunc:I

.field public depthTextureCompareMode:I

.field public depthTextureMode:I

.field public magFilter:I

.field public minFilter:I

.field public wrapR:I

.field public wrapS:I

.field public wrapT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/record/TextureRecord;->colorBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->anisoLevel:F

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->borderColor:Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->wrapR:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->wrapT:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->wrapS:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->minFilter:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->magFilter:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->depthTextureCompareMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->depthTextureCompareFunc:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->depthTextureMode:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->anisoLevel:F

    iget-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureRecord;->borderColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method
