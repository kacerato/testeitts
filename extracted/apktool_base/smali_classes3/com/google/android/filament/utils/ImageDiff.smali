.class public Lcom/google/android/filament/utils/ImageDiff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/ImageDiff$a;,
        Lcom/google/android/filament/utils/ImageDiff$b;,
        Lcom/google/android/filament/utils/ImageDiff$c;,
        Lcom/google/android/filament/utils/ImageDiff$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/filament/utils/ImageDiff$Result;
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/ImageDiff;->nCompareJson(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/filament/utils/ImageDiff$Result;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/android/filament/utils/ImageDiff$a;Landroid/graphics/Bitmap;)Lcom/google/android/filament/utils/ImageDiff$Result;
    .locals 9
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/utils/ImageDiff$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p2, Lcom/google/android/filament/utils/ImageDiff$a;->a:Lcom/google/android/filament/utils/ImageDiff$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v0, p2, Lcom/google/android/filament/utils/ImageDiff$a;->b:Lcom/google/android/filament/utils/ImageDiff$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget v5, p2, Lcom/google/android/filament/utils/ImageDiff$a;->c:I

    iget v6, p2, Lcom/google/android/filament/utils/ImageDiff$a;->d:F

    iget v7, p2, Lcom/google/android/filament/utils/ImageDiff$a;->e:F

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/google/android/filament/utils/ImageDiff;->nCompareBasic(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIFFLandroid/graphics/Bitmap;)Lcom/google/android/filament/utils/ImageDiff$Result;

    move-result-object p0

    return-object p0
.end method

.method private static native nCompareBasic(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIFFLandroid/graphics/Bitmap;)Lcom/google/android/filament/utils/ImageDiff$Result;
.end method

.method private static native nCompareJson(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/filament/utils/ImageDiff$Result;
.end method
