.class public Lcom/google/android/filament/View$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$e$a;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/filament/Texture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:Lcom/google/android/filament/View$e$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:F

.field public j:Lcom/google/android/filament/View$n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:F

.field public n:I

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/View$e;->a:Lcom/google/android/filament/Texture;

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/google/android/filament/View$e;->b:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/filament/View$e;->c:F

    const/16 v1, 0x180

    iput v1, p0, Lcom/google/android/filament/View$e;->d:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/google/android/filament/View$e;->e:I

    sget-object v1, Lcom/google/android/filament/View$e$a;->ADD:Lcom/google/android/filament/View$e$a;

    iput-object v1, p0, Lcom/google/android/filament/View$e;->f:Lcom/google/android/filament/View$e$a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/filament/View$e;->g:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/filament/View$e;->h:Z

    const/high16 v3, 0x447a0000    # 1000.0f

    iput v3, p0, Lcom/google/android/filament/View$e;->i:F

    sget-object v3, Lcom/google/android/filament/View$n;->LOW:Lcom/google/android/filament/View$n;

    iput-object v3, p0, Lcom/google/android/filament/View$e;->j:Lcom/google/android/filament/View$n;

    iput-boolean v2, p0, Lcom/google/android/filament/View$e;->k:Z

    iput-boolean v1, p0, Lcom/google/android/filament/View$e;->l:Z

    const v1, 0x3ba3d70a    # 0.005f

    iput v1, p0, Lcom/google/android/filament/View$e;->m:F

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/filament/View$e;->n:I

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/google/android/filament/View$e;->o:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/google/android/filament/View$e;->p:F

    iput v0, p0, Lcom/google/android/filament/View$e;->q:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/google/android/filament/View$e;->r:F

    iput v1, p0, Lcom/google/android/filament/View$e;->s:F

    return-void
.end method
