.class public Lcom/google/android/filament/View$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation
.end field

.field public g:F

.field public h:F

.field public i:F

.field public j:Z

.field public k:Lcom/google/android/filament/Texture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filament/View$i;->a:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v1, p0, Lcom/google/android/filament/View$i;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/filament/View$i;->c:F

    iput v0, p0, Lcom/google/android/filament/View$i;->d:F

    iput v1, p0, Lcom/google/android/filament/View$i;->e:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/android/filament/View$i;->f:[F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/google/android/filament/View$i;->g:F

    iput v0, p0, Lcom/google/android/filament/View$i;->h:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/filament/View$i;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/View$i;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/filament/View$i;->k:Lcom/google/android/filament/Texture;

    iput-boolean v0, p0, Lcom/google/android/filament/View$i;->l:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
