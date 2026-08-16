.class public final Lcom/google/android/filament/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFFFFFFF[F)V
    .locals 11
    .param p9    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param

    const/4 v10, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/MathUtils;->nPackTangentFrame(FFFFFFFFF[FI)V

    return-void
.end method

.method public static b(FFFFFFFFF[FI)V
    .locals 0
    .param p9    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .param p10    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-static/range {p0 .. p10}, Lcom/google/android/filament/MathUtils;->nPackTangentFrame(FFFFFFFFF[FI)V

    return-void
.end method

.method private static native nPackTangentFrame(FFFFFFFFF[FI)V
    .param p9    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .param p10    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method
