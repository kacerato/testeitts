.class public Lcom/google/android/filament/View$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$f$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Z

.field public e:Lcom/google/android/filament/View$f$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/filament/View$f;->a:F

    iput v0, p0, Lcom/google/android/filament/View$f;->b:F

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/android/filament/View$f;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/View$f;->d:Z

    sget-object v1, Lcom/google/android/filament/View$f$a;->MEDIAN:Lcom/google/android/filament/View$f$a;

    iput-object v1, p0, Lcom/google/android/filament/View$f;->e:Lcom/google/android/filament/View$f$a;

    iput-boolean v0, p0, Lcom/google/android/filament/View$f;->f:Z

    iput v0, p0, Lcom/google/android/filament/View$f;->g:I

    iput v0, p0, Lcom/google/android/filament/View$f;->h:I

    iput v0, p0, Lcom/google/android/filament/View$f;->i:I

    iput v0, p0, Lcom/google/android/filament/View$f;->j:I

    iput v0, p0, Lcom/google/android/filament/View$f;->k:I

    return-void
.end method
