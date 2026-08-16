.class public final Ln0/E;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/E$a;
    }
.end annotation


# static fields
.field public static final a:Z = true


# direct methods
.method public static final a(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Ln0/F;)Lcom/google/android/filament/Texture;
    .locals 2

    new-instance v0, Lcom/google/android/filament/Texture$a;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$a;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$a;->l(I)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$a;->e(I)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$i;->SAMPLER_2D:Lcom/google/android/filament/Texture$i;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$a;->h(Lcom/google/android/filament/Texture$i;)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    invoke-static {p2}, Ln0/E;->c(Ln0/F;)Lcom/google/android/filament/Texture$f;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object p2

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Lcom/google/android/filament/Texture$a;->g(I)Lcom/google/android/filament/Texture$a;

    move-result-object p2

    const/16 v0, 0x218

    invoke-virtual {p2, v0}, Lcom/google/android/filament/Texture$a;->k(I)Lcom/google/android/filament/Texture$a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/filament/Texture$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object p2

    const-string v0, "build(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, p1}, Lcom/google/android/filament/android/TextureHelper;->c(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture;ILandroid/graphics/Bitmap;)V

    invoke-virtual {p2, p0}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    return-object p2
.end method

.method public static final b(Landroid/graphics/Bitmap;)Lcom/google/android/filament/Texture$e;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "RGB_565"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$e;->RGB:Lcom/google/android/filament/Texture$e;

    goto :goto_0

    :sswitch_1
    const-string v0, "RGBA_F16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    goto :goto_0

    :sswitch_2
    const-string v0, "ARGB_8888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    goto :goto_0

    :sswitch_3
    const-string v0, "ALPHA_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$e;->ALPHA:Lcom/google/android/filament/Texture$e;

    :goto_0
    return-object p0

    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown bitmap configuration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0xb519289 -> :sswitch_3
        0xd4fdd93 -> :sswitch_2
        0x665adb60 -> :sswitch_1
        0x6eb51b22 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final c(Ln0/F;)Lcom/google/android/filament/Texture$f;
    .locals 1

    sget-object v0, Ln0/E$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/filament/Texture$f;->SRGB8_A8:Lcom/google/android/filament/Texture$f;

    :goto_0
    return-object p0
.end method

.method public static final d(Lcom/google/android/filament/Engine;Landroid/content/res/Resources;ILn0/F;)Lcom/google/android/filament/Texture;
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/F;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Ln0/F;->COLOR:Ln0/F;

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {p0, p1, p3}, Ln0/E;->a(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Ln0/F;)Lcom/google/android/filament/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/google/android/filament/Engine;[BLn0/F;II)Lcom/google/android/filament/Texture;
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/F;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Ln0/F;->COLOR:Ln0/F;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {p1, p3, p4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Ln0/E;->a(Lcom/google/android/filament/Engine;Landroid/graphics/Bitmap;Ln0/F;)Lcom/google/android/filament/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/android/filament/Engine;[BLn0/F;IIILjava/lang/Object;)Lcom/google/android/filament/Texture;
    .locals 0

    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    array-length p4, p1

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Ln0/E;->e(Lcom/google/android/filament/Engine;[BLn0/F;II)Lcom/google/android/filament/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Landroid/graphics/Bitmap;)Lcom/google/android/filament/Texture$k;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "RGB_565"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$k;->USHORT_565:Lcom/google/android/filament/Texture$k;

    goto :goto_0

    :sswitch_1
    const-string v0, "RGBA_F16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$k;->HALF:Lcom/google/android/filament/Texture$k;

    goto :goto_0

    :sswitch_2
    const-string v0, "ARGB_8888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    goto :goto_0

    :sswitch_3
    const-string v0, "ALPHA_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    :goto_0
    return-object p0

    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported bitmap configuration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0xb519289 -> :sswitch_3
        0xd4fdd93 -> :sswitch_2
        0x665adb60 -> :sswitch_1
        0x6eb51b22 -> :sswitch_0
    .end sparse-switch
.end method
