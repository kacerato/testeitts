.class public Lcom/google/android/filament/View$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "x"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:Z

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filament/View$x;->a:I

    iput-boolean v0, p0, Lcom/google/android/filament/View$x;->b:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/filament/View$x;->c:I

    iput-boolean v0, p0, Lcom/google/android/filament/View$x;->d:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/filament/View$x;->e:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/google/android/filament/View$x;->f:F

    return-void
.end method
