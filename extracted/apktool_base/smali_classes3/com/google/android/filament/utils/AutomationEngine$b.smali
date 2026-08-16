.class public Lcom/google/android/filament/utils/AutomationEngine$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/AutomationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$b;->a:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/filament/utils/AutomationEngine$b;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/filament/utils/AutomationEngine$b;->c:Z

    return-void
.end method
