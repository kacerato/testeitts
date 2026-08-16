.class public Lorg/ITsMagic/Atlas/BakeOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public bilinear:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public blockAlign:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public blurCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public blurDirections:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public blurQuality:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public blurSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public blurSizeIncrementPerSample:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public collider:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public diffuseDistortion:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public enableLightBlur:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public globalIntensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public light:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxBoundaryLength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxChartArea:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxChartSize:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxRTXSamples:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxReflections:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public normalDeviationWeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public normalSeamWeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public padding:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public photonCollisionReduction:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public photonLightCircleMultiplier:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roundnessWeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public straightnessWeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public texelsPerUnit:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public texture:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public textureSeamWeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ITsMagic/Atlas/BakeOptions;->light:Z

    iput v0, p0, Lorg/ITsMagic/Atlas/BakeOptions;->maxReflections:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->photonLightCircleMultiplier:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lorg/ITsMagic/Atlas/BakeOptions;->photonCollisionReduction:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/ITsMagic/Atlas/BakeOptions;->enableLightBlur:Z

    iput v0, p0, Lorg/ITsMagic/Atlas/BakeOptions;->blurCount:I

    const v4, 0x3a83126f    # 0.001f

    iput v4, p0, Lorg/ITsMagic/Atlas/BakeOptions;->blurSize:F

    iput v4, p0, Lorg/ITsMagic/Atlas/BakeOptions;->blurSizeIncrementPerSample:F

    const/high16 v4, 0x41000000    # 8.0f

    iput v4, p0, Lorg/ITsMagic/Atlas/BakeOptions;->blurDirections:F

    const/high16 v4, 0x40800000    # 4.0f

    iput v4, p0, Lorg/ITsMagic/Atlas/BakeOptions;->blurQuality:F

    const/16 v5, 0x64

    iput v5, p0, Lorg/ITsMagic/Atlas/BakeOptions;->maxRTXSamples:I

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->globalIntensity:F

    const v1, 0x3ca3d70a    # 0.02f

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->diffuseDistortion:F

    iput-boolean v0, p0, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->a:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartArea:F

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->maxBoundaryLength:F

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->normalDeviationWeight:F

    const v1, 0x3c23d70a    # 0.01f

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->roundnessWeight:F

    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->straightnessWeight:F

    iput v4, p0, Lorg/ITsMagic/Atlas/BakeOptions;->normalSeamWeight:F

    iput v2, p0, Lorg/ITsMagic/Atlas/BakeOptions;->textureSeamWeight:F

    iput v3, p0, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartSize:I

    const/high16 v1, 0x42800000    # 64.0f

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->texelsPerUnit:F

    const/16 v1, 0x8

    iput v1, p0, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    iput-boolean v0, p0, Lorg/ITsMagic/Atlas/BakeOptions;->bilinear:Z

    iput-boolean v0, p0, Lorg/ITsMagic/Atlas/BakeOptions;->blockAlign:Z

    iput-boolean v0, p0, Lorg/ITsMagic/Atlas/BakeOptions;->collider:Z

    return-void
.end method
