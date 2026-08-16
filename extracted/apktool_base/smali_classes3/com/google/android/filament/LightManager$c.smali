.class public Lcom/google/android/filament/LightManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x4L
    .end annotation
.end field

.field public c:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation
.end field

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:F

.field public l:F

.field public m:Z

.field public n:I

.field public o:F

.field public p:Z

.field public q:F

.field public r:F

.field public s:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        max = 0x4L
        min = 0x4L
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/filament/LightManager$c;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/filament/LightManager$c;->b:I

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/android/filament/LightManager$c;->c:[F

    const v1, 0x3a83126f    # 0.001f

    iput v1, p0, Lcom/google/android/filament/LightManager$c;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/filament/LightManager$c;->e:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/filament/LightManager$c;->f:F

    iput v1, p0, Lcom/google/android/filament/LightManager$c;->g:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/google/android/filament/LightManager$c;->h:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/filament/LightManager$c;->i:Z

    iput-boolean v1, p0, Lcom/google/android/filament/LightManager$c;->j:Z

    iput v0, p0, Lcom/google/android/filament/LightManager$c;->k:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/google/android/filament/LightManager$c;->l:F

    iput-boolean v1, p0, Lcom/google/android/filament/LightManager$c;->m:Z

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/filament/LightManager$c;->n:I

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/google/android/filament/LightManager$c;->o:F

    iput-boolean v1, p0, Lcom/google/android/filament/LightManager$c;->p:Z

    iput v2, p0, Lcom/google/android/filament/LightManager$c;->q:F

    const v0, 0x3ca3d70a    # 0.02f

    iput v0, p0, Lcom/google/android/filament/LightManager$c;->r:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/filament/LightManager$c;->s:[F

    return-void

    :array_0
    .array-data 4
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
