.class public Lcom/google/android/filament/Renderer$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/filament/Renderer$c;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filament/Renderer$c;->b:F

    const v0, 0x3d888889

    iput v0, p0, Lcom/google/android/filament/Renderer$c;->c:F

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/filament/Renderer$c;->d:I

    return-void
.end method
