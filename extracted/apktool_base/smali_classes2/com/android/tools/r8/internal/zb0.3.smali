.class public final Lcom/android/tools/r8/internal/zb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8StartupOptimizationMetadata;


# instance fields
.field public final a:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isDexLayoutOptimizationEnabled"
    .end annotation
.end field

.field public final b:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isProfileGuidedOptimizationEnabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/po0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/tools/r8/internal/po0;->e:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/zb0;->a:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/po0;->c:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/zb0;->b:Z

    return-void
.end method


# virtual methods
.method public final isDexLayoutOptimizationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/zb0;->a:Z

    return v0
.end method

.method public final isProfileGuidedOptimizationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/zb0;->b:Z

    return v0
.end method
