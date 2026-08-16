.class public Lcom/google/android/filament/View$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/filament/View$p;->a:F

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/android/filament/View$p;->b:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/google/android/filament/View$p;->c:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/google/android/filament/View$p;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/View$p;->e:Z

    return-void
.end method
