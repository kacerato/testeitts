.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LM9/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$b;
    }
.end annotation


# static fields
.field public static final e:LM9/c;


# instance fields
.field private final autoGenMipmaps:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$b;",
            ">;"
        }
    .end annotation
.end field

.field private final format:Lcom/google/android/filament/Texture$e;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final height:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final internalFormat:Lcom/google/android/filament/Texture$f;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final layerCount:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final mipMapLevels:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private sampler:Lcom/google/android/filament/TextureSampler;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final texture:Lcom/google/android/filament/Texture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final type:Lcom/google/android/filament/Texture$k;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final usages:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final width:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRb/e;

    invoke-direct {v0}, LRb/e;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->e:LM9/c;

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "type",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages"
        }
    .end annotation

    .line 1
    sget-object v10, Lcom/google/android/filament/Texture$i;->SAMPLER_2D:Lcom/google/android/filament/Texture$i;

    if-lez p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "type",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages",
            "usageSampler"
        }
    .end annotation

    if-lez p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 2
    invoke-direct/range {v0 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "type",
            "internalFormat",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages"
        }
    .end annotation

    .line 3
    sget-object v10, Lcom/google/android/filament/Texture$i;->SAMPLER_2D:Lcom/google/android/filament/Texture$i;

    if-lez p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "type",
            "internalFormat",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages",
            "usageSampler"
        }
    .end annotation

    if-lez p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 4
    invoke-direct/range {v0 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "type",
            "internalFormat",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages",
            "usageSampler",
            "layerCount"
        }
    .end annotation

    if-lez p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 5
    invoke-direct/range {v0 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "type",
            "internalFormat",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages",
            "usageSampler",
            "layerCount",
            "autoGenerateMipmaps"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->d:Ljava/util/ArrayDeque;

    .line 9
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->width:I

    .line 10
    iput p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->height:I

    .line 11
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    .line 12
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->type:Lcom/google/android/filament/Texture$k;

    .line 13
    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->internalFormat:Lcom/google/android/filament/Texture$f;

    .line 14
    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->sampler:Lcom/google/android/filament/TextureSampler;

    const/4 p3, 0x1

    .line 15
    invoke-static {p3, p11}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->layerCount:I

    .line 16
    iput p9, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->usages:I

    const/4 p4, 0x0

    if-gez p8, :cond_0

    const/16 p3, 0xff

    .line 17
    iput p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->mipMapLevels:I

    .line 18
    invoke-virtual {p6, p3}, Lcom/google/android/filament/Texture$a;->g(I)Lcom/google/android/filament/Texture$a;

    .line 19
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    goto :goto_1

    .line 20
    :cond_0
    iput p8, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->mipMapLevels:I

    add-int/lit8 p5, p8, 0x1

    .line 21
    invoke-virtual {p6, p5}, Lcom/google/android/filament/Texture$a;->g(I)Lcom/google/android/filament/Texture$a;

    if-eqz p12, :cond_1

    if-lez p8, :cond_1

    goto :goto_0

    :cond_1
    move p3, p4

    .line 22
    :goto_0
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    :goto_1
    or-int/lit8 p3, p9, 0x10

    .line 23
    iget-boolean p5, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p5, :cond_2

    or-int/lit16 p3, p9, 0x210

    .line 24
    :cond_2
    invoke-virtual {p6, p3}, Lcom/google/android/filament/Texture$a;->k(I)Lcom/google/android/filament/Texture$a;

    .line 25
    invoke-virtual {p6, p10}, Lcom/google/android/filament/Texture$a;->h(Lcom/google/android/filament/Texture$i;)Lcom/google/android/filament/Texture$a;

    .line 26
    invoke-virtual {p6, p1}, Lcom/google/android/filament/Texture$a;->l(I)Lcom/google/android/filament/Texture$a;

    .line 27
    invoke-virtual {p6, p2}, Lcom/google/android/filament/Texture$a;->e(I)Lcom/google/android/filament/Texture$a;

    .line 28
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/google/android/filament/Texture$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide p1

    sget-object p3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->e:LM9/c;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    .line 30
    invoke-static {p0}, Lyb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    return-void
.end method

.method public static synthetic E(J)V
    .locals 0

    invoke-static {p0, p1}, Lyb/a;->c(J)V

    invoke-static {p0, p1}, LQb/c;->o(J)V

    return-void
.end method

.method public static synthetic e(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->E(J)V

    return-void
.end method

.method public static f(Lcom/google/android/filament/Texture$d;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/google/android/filament/Texture$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "storageReference"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "storageReference"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->a:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v4, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$e;

    sget-object v4, Lcom/google/android/filament/TextureSampler$d;->NEAREST:Lcom/google/android/filament/TextureSampler$d;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->a:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    :goto_0
    move-object v0, v3

    move-object v4, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v4, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->NEAREST:Lcom/google/android/filament/TextureSampler$e;

    sget-object v4, Lcom/google/android/filament/TextureSampler$d;->NEAREST:Lcom/google/android/filament/TextureSampler$d;

    :goto_1
    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->b:[I

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v5, p0

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/google/android/filament/TextureSampler$f;->MIRRORED_REPEAT:Lcom/google/android/filament/TextureSampler$f;

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/google/android/filament/TextureSampler$f;->REPEAT:Lcom/google/android/filament/TextureSampler$f;

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    :goto_2
    new-instance p0, Lcom/google/android/filament/TextureSampler;

    invoke-direct {p0, v0, v4, v3}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    return-object p0
.end method

.method public static l(Lcom/google/android/filament/Texture$d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lcom/google/android/filament/Texture$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "storageReference"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Lcom/google/android/filament/Texture$k;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-wide/16 v0, 0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->e:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x4

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public static x(Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "internalFormat",
            "format",
            "type"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-wide/16 v0, 0x4

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 p0, 0x10

    return-wide p0

    :pswitch_1
    const-wide/16 p0, 0x8

    return-wide p0

    :pswitch_2
    return-wide v0

    :pswitch_3
    const-wide/16 p0, 0x3

    return-wide p0

    :pswitch_4
    const-wide/16 p0, 0x2

    return-wide p0

    :pswitch_5
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->w(Lcom/google/android/filament/Texture$k;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->y(Lcom/google/android/filament/Texture$e;)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y(Lcom/google/android/filament/Texture$e;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const-wide/16 v0, 0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x4

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x3

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x2

    return-wide v0
.end method


# virtual methods
.method public A()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-virtual {v0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Lcom/google/android/filament/TextureSampler;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->sampler:Lcom/google/android/filament/TextureSampler;

    return-object v0
.end method

.method public C()Lcom/google/android/filament/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    return-object v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "buffer",
            "nativePointerOffset",
            "compressedFormat",
            "sizeInBytes",
            "post"
        }
    .end annotation

    move-object/from16 v7, p0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    if-eqz p8, :cond_1

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v0

    add-long v1, v0, p9

    move-object/from16 v0, p0

    move/from16 v3, p12

    move-object/from16 v4, p11

    move-object/from16 v5, p8

    move-object/from16 v6, p13

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->h(JILcom/google/android/filament/Texture$b;Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object v17

    iget-object v8, v7, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v9

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-virtual/range {v8 .. v17}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    iget-boolean v0, v7, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G(IIIIIIIJI)V
    .locals 17
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "nativePixelsPointer",
            "sizeInBytes"
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move/from16 v3, p10

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object v16

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v8

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    iget-boolean v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void
.end method

.method public H(IIIIIIIJILjava/lang/Runnable;)V
    .locals 17
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "nativePixelsPointer",
            "sizeInBytes",
            "post"
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move/from16 v3, p10

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object v16

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v8

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    iget-boolean v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void
.end method

.method public I(IIIIIIILcom/google/android/filament/Texture$d;)V
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # Lcom/google/android/filament/Texture$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "buffer"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v10, p8

    iget-object v1, v10, Lcom/google/android/filament/Texture$d;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-static/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->l(Lcom/google/android/filament/Texture$d;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->k(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_1
    return-void
.end method

.method public J(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 17
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "buffer"
        }
    .end annotation

    move-object/from16 v6, p0

    if-eqz p8, :cond_1

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v1

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object v16

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v8

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    iget-boolean v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public K(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V
    .locals 17
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "buffer",
            "post"
        }
    .end annotation

    move-object/from16 v6, p0

    if-eqz p8, :cond_1

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v1

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object v16

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v8

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    iget-boolean v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "buffer"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p8

    if-eqz v1, :cond_1

    new-instance v10, Lcom/google/android/filament/Texture$d;

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v5, v2, 0x2

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    sget-object v7, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/google/android/filament/Texture$d;-><init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    invoke-static {v10, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->f(Lcom/google/android/filament/Texture$d;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->k(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v10, v1, p0}, Lcom/google/android/filament/Texture$d;->a(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "buffer can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public M(Lcom/google/android/filament/TextureSampler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampler"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->sampler:Lcom/google/android/filament/TextureSampler;

    return-void
.end method

.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->GPU:LM9/a;

    return-object v0
.end method

.method public destroyImmediate()V
    .locals 5

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->b:Z

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Material|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->h(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RenderTarget|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->h(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IndirectLight|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->h(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Skybox|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Utils/StillsInUseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Utils/StillsInUseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->width:I

    return v0
.end method

.method public gpuUsageType()LM9/d;
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->usages:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LM9/d;->TEXTURE:LM9/d;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, LM9/d;->FRAME_BUFFER:LM9/d;

    return-object v0
.end method

.method public gpuUsedBytes()J
    .locals 13

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->b:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->internalFormat:Lcom/google/android/filament/Texture$f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->type:Lcom/google/android/filament/Texture$k;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->x(Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)J

    move-result-wide v3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->layerCount:I

    int-to-long v5, v0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->mipMapLevels:I

    add-int/2addr v0, v7

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_2

    iget v9, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->width:I

    shr-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->height:I

    shr-int/2addr v10, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v11, v9

    int-to-long v9, v10

    mul-long/2addr v11, v9

    add-long/2addr v1, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    mul-long/2addr v1, v5

    mul-long/2addr v1, v3

    :cond_3
    :goto_2
    return-wide v1
.end method

.method public final h(JILcom/google/android/filament/Texture$b;Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;
    .locals 1
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePixelsPointer",
            "sizeInBytes",
            "compressedFormat",
            "storageReference",
            "post"
        }
    .end annotation

    new-instance v0, Lcom/google/android/filament/Texture$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/filament/Texture$d;-><init>(JILcom/google/android/filament/Texture$b;)V

    invoke-static {v0, p5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->f(Lcom/google/android/filament/Texture$d;Ljava/lang/Object;)V

    invoke-virtual {p0, p5, p6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->k(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/android/filament/Texture$d;->a(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;
    .locals 7
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePixelsPointer",
            "sizeInBytes",
            "storageReference",
            "post"
        }
    .end annotation

    new-instance v6, Lcom/google/android/filament/Texture$d;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->type:Lcom/google/android/filament/Texture$k;

    move-object v0, v6

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/Texture$d;-><init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    invoke-static {v6, p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->f(Lcom/google/android/filament/Texture$d;Ljava/lang/Object;)V

    invoke-virtual {p0, p4, p5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->k(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v6, p1, p0}, Lcom/google/android/filament/Texture$d;->a(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "storageReference",
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->d:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$b;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "buffer",
            "nativePointerOffset",
            "compressedFormat",
            "sizeInBytes"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->n(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V

    return-void
.end method

.method public n(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "buffer",
            "nativePointerOffset",
            "compressedFormat",
            "sizeInBytes",
            "post"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v0

    add-long v1, v0, p3

    move-object v0, p0

    move v3, p6

    move-object v4, p5

    move-object v5, p2

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->h(JILcom/google/android/filament/Texture$b;Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/filament/Texture;->J(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$d;)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nativeUsageType()LM9/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeUsedBytes()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public o(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/google/android/filament/Texture$b;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "compressedFormat",
            "sizeInBytes"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->n(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V

    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "compressedFormat",
            "sizeInBytes",
            "post"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->n(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;JLcom/google/android/filament/Texture$b;ILjava/lang/Runnable;)V

    return-void
.end method

.method public q(JI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePixelsPointer",
            "sizeInBytes"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p1}, Lcom/google/android/filament/Texture;->J(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$d;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void
.end method

.method public r(JILjava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePixelsPointer",
            "sizeInBytes",
            "post"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/filament/Texture;->J(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$d;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$b;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/filament/Texture;->J(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$d;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "buffer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->i(JILjava/lang/Object;Ljava/lang/Runnable;)Lcom/google/android/filament/Texture$d;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/filament/Texture;->J(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$d;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    return-void
.end method

.method public z()Lcom/google/android/filament/Texture$e;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    return-object v0
.end method
