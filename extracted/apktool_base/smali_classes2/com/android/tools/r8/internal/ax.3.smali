.class public final Lcom/android/tools/r8/internal/ax;
.super Lcom/android/tools/r8/internal/ZI;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/P0;)V
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    new-instance v1, Lcom/android/tools/r8/internal/i51;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/i51;-><init>(Lcom/android/tools/r8/shaking/P0;)V

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ZI;-><init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;)V

    return-void
.end method
