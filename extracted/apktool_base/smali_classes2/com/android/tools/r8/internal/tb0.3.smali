.class public final Lcom/android/tools/r8/internal/tb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8ResourceOptimizationMetadata;


# instance fields
.field public final a:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isOptimizedShrinkingEnabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/ResourceShrinkerConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->isOptimizedShrinking()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/tb0;->a:Z

    return-void
.end method


# virtual methods
.method public final isOptimizedShrinkingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/tb0;->a:Z

    return v0
.end method
