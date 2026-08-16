.class public Lcom/google/android/filament/View$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/filament/View$n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/filament/View$h;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/filament/View$h;->b:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/google/android/filament/View$h;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/View$h;->d:Z

    iput-boolean v0, p0, Lcom/google/android/filament/View$h;->e:Z

    sget-object v0, Lcom/google/android/filament/View$n;->LOW:Lcom/google/android/filament/View$n;

    iput-object v0, p0, Lcom/google/android/filament/View$h;->f:Lcom/google/android/filament/View$n;

    return-void
.end method
