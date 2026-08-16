.class public final Lcom/android/tools/r8/internal/Re;
.super Lcom/android/tools/r8/internal/Qe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V
    .locals 8

    new-instance v4, Lcom/android/tools/r8/internal/vV0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/vV0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Qe;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Pe;IJ)V

    return-void
.end method
