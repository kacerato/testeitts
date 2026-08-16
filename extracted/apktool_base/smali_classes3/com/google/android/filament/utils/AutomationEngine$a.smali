.class public Lcom/google/android/filament/utils/AutomationEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/AutomationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$a;->a:F

    const/high16 v0, 0x42fa0000    # 125.0f

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$a;->b:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$a;->c:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/google/android/filament/utils/AutomationEngine$a;->d:F

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$a;->e:F

    const/high16 v0, 0x41e00000    # 28.0f

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$a;->f:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$a;->g:F

    return-void
.end method
