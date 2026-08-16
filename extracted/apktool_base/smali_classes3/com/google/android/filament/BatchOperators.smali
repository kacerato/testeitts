.class public final Lcom/google/android/filament/BatchOperators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final mNativeEngine:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/BatchOperators;->mNativeEngine:J

    return-void
.end method

.method private static native nChangeVisibility(JIJJI)V
.end method


# virtual methods
.method public changeVisibility(IJJI)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param

    if-ltz p1, :cond_3

    if-lez p6, :cond_2

    const/16 v0, 0x8

    if-gt p6, v0, :cond_2

    if-lez p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "native buffer pointers must be non-zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/filament/BatchOperators;->mNativeEngine:J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/BatchOperators;->nChangeVisibility(JIJJI)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "layersPerEntity must be in [1, 8]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "entityCount must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
