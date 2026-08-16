.class public Lcom/google/android/filament/Renderer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/google/android/filament/Renderer$b;->a:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Renderer$b;->b:J

    iput-wide v0, p0, Lcom/google/android/filament/Renderer$b;->c:J

    return-void
.end method
