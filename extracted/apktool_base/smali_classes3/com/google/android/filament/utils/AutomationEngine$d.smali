.class public Lcom/google/android/filament/utils/AutomationEngine$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/AutomationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:F

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$d;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/utils/AutomationEngine$d;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/filament/utils/AutomationEngine$d;->c:Z

    iput-boolean v1, p0, Lcom/google/android/filament/utils/AutomationEngine$d;->d:Z

    iput-boolean v0, p0, Lcom/google/android/filament/utils/AutomationEngine$d;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$d;->f:F

    return-void
.end method
