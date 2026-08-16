.class public synthetic Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I

.field public static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/google/android/filament/Texture$k;->values()[Lcom/google/android/filament/Texture$k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->e:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->e:[I

    sget-object v3, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->e:[I

    sget-object v4, Lcom/google/android/filament/Texture$k;->FLOAT:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/google/android/filament/Texture$e;->values()[Lcom/google/android/filament/Texture$e;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->d:[I

    :try_start_3
    sget-object v4, Lcom/google/android/filament/Texture$e;->R:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->d:[I

    sget-object v4, Lcom/google/android/filament/Texture$e;->DEPTH_COMPONENT:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->d:[I

    sget-object v4, Lcom/google/android/filament/Texture$e;->RG:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->d:[I

    sget-object v5, Lcom/google/android/filament/Texture$e;->RGB:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->d:[I

    sget-object v6, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/google/android/filament/Texture$f;->values()[Lcom/google/android/filament/Texture$f;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    :try_start_8
    sget-object v6, Lcom/google/android/filament/Texture$f;->R8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v6, Lcom/google/android/filament/Texture$f;->DEPTH16:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v6, Lcom/google/android/filament/Texture$f;->RGB8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v6, Lcom/google/android/filament/Texture$f;->SRGB8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v5, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v4, Lcom/google/android/filament/Texture$f;->SRGB8_A8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v4, Lcom/google/android/filament/Texture$f;->R32F:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v4, Lcom/google/android/filament/Texture$f;->RGBA16F:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    sget-object v4, Lcom/google/android/filament/Texture$f;->RGBA32F:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->b:[I

    :try_start_11
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->b:[I

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Repeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->b:[I

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->MirrorRepeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->a:[I

    :try_start_14
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->a:[I

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method
