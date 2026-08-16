.class public Lcom/google/android/filament/View$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$u$b;,
        Lcom/google/android/filament/View$u$a;,
        Lcom/google/android/filament/View$u$c;
    }
.end annotation


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:F

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/google/android/filament/View$u$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public l:Lcom/google/android/filament/View$u$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public m:Lcom/google/android/filament/View$u$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public n:F

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/filament/View$u;->a:F

    const v1, 0x3df5c28f    # 0.12f

    iput v1, p0, Lcom/google/android/filament/View$u;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/filament/View$u;->c:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/filament/View$u;->d:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/filament/View$u;->e:Z

    iput v0, p0, Lcom/google/android/filament/View$u;->f:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/filament/View$u;->g:Z

    iput-boolean v2, p0, Lcom/google/android/filament/View$u;->h:Z

    iput-boolean v1, p0, Lcom/google/android/filament/View$u;->i:Z

    iput-boolean v2, p0, Lcom/google/android/filament/View$u;->j:Z

    sget-object v3, Lcom/google/android/filament/View$u$b;->AABB:Lcom/google/android/filament/View$u$b;

    iput-object v3, p0, Lcom/google/android/filament/View$u;->k:Lcom/google/android/filament/View$u$b;

    sget-object v3, Lcom/google/android/filament/View$u$a;->ACCURATE:Lcom/google/android/filament/View$u$a;

    iput-object v3, p0, Lcom/google/android/filament/View$u;->l:Lcom/google/android/filament/View$u$a;

    sget-object v3, Lcom/google/android/filament/View$u$c;->HALTON_23_X16:Lcom/google/android/filament/View$u$c;

    iput-object v3, p0, Lcom/google/android/filament/View$u;->m:Lcom/google/android/filament/View$u$c;

    iput v0, p0, Lcom/google/android/filament/View$u;->n:F

    iput-boolean v1, p0, Lcom/google/android/filament/View$u;->o:Z

    iput-boolean v2, p0, Lcom/google/android/filament/View$u;->p:Z

    return-void
.end method
