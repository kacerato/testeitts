.class public final Lcom/android/tools/r8/internal/Bb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8StatsMetadata;


# instance fields
.field public final a:F
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "noObfuscationPercentage"
    .end annotation
.end field

.field public final b:F
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "noOptimizationPercentage"
    .end annotation
.end field

.field public final c:F
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "noShrinkingPercentage"
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Bb0;->a:F

    iput p2, p0, Lcom/android/tools/r8/internal/Bb0;->b:F

    iput p3, p0, Lcom/android/tools/r8/internal/Bb0;->c:F

    return-void
.end method


# virtual methods
.method public final getNoObfuscationPercentage()F
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Bb0;->a:F

    return v0
.end method

.method public final getNoOptimizationPercentage()F
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Bb0;->b:F

    return v0
.end method

.method public final getNoShrinkingPercentage()F
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Bb0;->c:F

    return v0
.end method
