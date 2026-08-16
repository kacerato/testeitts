.class public Lcom/android/tools/r8/internal/N50;
.super Lcom/android/tools/r8/internal/EJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/EJ;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/Sw;",
            "Lcom/android/tools/r8/internal/bX;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/internal/w7;->b:Lcom/android/tools/r8/internal/w7;

    new-instance v1, Lcom/android/tools/r8/internal/P50;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, p4}, Lcom/android/tools/r8/internal/P50;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/tools/r8/internal/EJ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/E1;)V

    return-void
.end method
