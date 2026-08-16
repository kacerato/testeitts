.class public Lcom/google/android/filament/View$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$b$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:F

.field public C:Z

.field public a:Lcom/google/android/filament/View$b$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:Lcom/google/android/filament/View$n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public i:Lcom/google/android/filament/View$n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j:Lcom/google/android/filament/View$n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation
.end field

.field public s:F

.field public t:F

.field public u:I

.field public v:I

.field public w:Z

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/filament/View$b$a;->SAO:Lcom/google/android/filament/View$b$a;

    iput-object v0, p0, Lcom/google/android/filament/View$b;->a:Lcom/google/android/filament/View$b$a;

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/google/android/filament/View$b;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/filament/View$b;->c:F

    const v2, 0x3a03126f    # 5.0E-4f

    iput v2, p0, Lcom/google/android/filament/View$b;->d:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/google/android/filament/View$b;->e:F

    iput v1, p0, Lcom/google/android/filament/View$b;->f:F

    const v3, 0x3d4ccccd    # 0.05f

    iput v3, p0, Lcom/google/android/filament/View$b;->g:F

    sget-object v3, Lcom/google/android/filament/View$n;->LOW:Lcom/google/android/filament/View$n;

    iput-object v3, p0, Lcom/google/android/filament/View$b;->h:Lcom/google/android/filament/View$n;

    sget-object v4, Lcom/google/android/filament/View$n;->MEDIUM:Lcom/google/android/filament/View$n;

    iput-object v4, p0, Lcom/google/android/filament/View$b;->i:Lcom/google/android/filament/View$n;

    iput-object v3, p0, Lcom/google/android/filament/View$b;->j:Lcom/google/android/filament/View$n;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/filament/View$b;->k:Z

    iput-boolean v3, p0, Lcom/google/android/filament/View$b;->l:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/filament/View$b;->m:F

    iput v1, p0, Lcom/google/android/filament/View$b;->n:F

    iput v0, p0, Lcom/google/android/filament/View$b;->o:F

    iput v1, p0, Lcom/google/android/filament/View$b;->p:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/google/android/filament/View$b;->q:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/android/filament/View$b;->r:[F

    const v1, 0x3c23d70a    # 0.01f

    iput v1, p0, Lcom/google/android/filament/View$b;->s:F

    iput v1, p0, Lcom/google/android/filament/View$b;->t:F

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/filament/View$b;->u:I

    const/4 v4, 0x1

    iput v4, p0, Lcom/google/android/filament/View$b;->v:I

    iput-boolean v3, p0, Lcom/google/android/filament/View$b;->w:Z

    iput v1, p0, Lcom/google/android/filament/View$b;->x:I

    iput v0, p0, Lcom/google/android/filament/View$b;->y:I

    const v0, 0x3b83126f    # 0.004f

    iput v0, p0, Lcom/google/android/filament/View$b;->z:F

    iput-boolean v3, p0, Lcom/google/android/filament/View$b;->A:Z

    iput v2, p0, Lcom/google/android/filament/View$b;->B:F

    iput-boolean v3, p0, Lcom/google/android/filament/View$b;->C:Z

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method
