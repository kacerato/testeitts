.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
.source "SourceFile"


# annotations
.annotation runtime LP8/o;
.end annotation


# instance fields
.field private forceUploadAll:Z

.field private localWindIntensity:F
    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final localWindIntensity_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

.field private final paramVersions:[I

.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LVb/b;",
            ">;"
        }
    .end annotation
.end field

.field private time:F

.field private timeVersion:I

.field private tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field private final uploadedParamVersions:[I

.field private uploadedTimeVersion:I

.field private windVerticality:F
    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final windVerticality_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialShader"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->timeVersion:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->uploadedTimeVersion:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->forceUploadAll:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    new-instance v2, Ldc/e;

    invoke-direct {v2, p0}, Ldc/e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity_OFCBRL:Lec/d;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    new-instance v2, Ldc/f;

    invoke-direct {v2, p0}, Ldc/f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality_OFCBRL:Lec/d;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    new-instance v2, Lnc/h;

    invoke-direct {v2}, Lnc/h;-><init>()V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->k0(Lnc/h;)V

    new-instance v2, Lnc/b;

    invoke-direct {v2}, Lnc/b;-><init>()V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g0(Lnc/b;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVb/b;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-virtual {v4}, LVb/b;->a()LVb/b;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->paramVersions:[I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->uploadedParamVersions:[I

    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->paramVersions:[I

    aput v0, p1, v2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->uploadedParamVersions:[I

    aput v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->e1()V

    return-void
.end method

.method public static synthetic A0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->M0()V

    return-void
.end method

.method public static synthetic B0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->T0(LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

.method public static synthetic C0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->R0(LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

.method public static synthetic D0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->S0(LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

.method public static synthetic E0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->W0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic F0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->X0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Ljava/lang/Object;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->b1(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static synthetic H0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->a1(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    return p0
.end method

.method public static synthetic J0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    return p0
.end method

.method private K0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()Lnc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    invoke-virtual {v0, v1}, Lnc/h;->v(F)V

    :cond_0
    return-void
.end method

.method private M0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()Lnc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    invoke-virtual {v0, v1}, Lnc/h;->w(F)V

    :cond_0
    return-void
.end method

.method private Y0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Ljava/lang/String;)LJAVARuntime/Texture;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "noiseData",
            "fileName"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-static {p1}, LTc/b;->z(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Lub/j;

    invoke-direct {v0, p2}, Lub/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    invoke-virtual {v0}, Lub/j;->U0()V

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_0

    invoke-virtual {v0, v5, v6}, Lub/n;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".texture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".png.config"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->K0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, LVc/e;->f()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lub/g;->E0()V

    invoke-virtual {p1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->K0()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVb/b;

    iget-object v3, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, LVb/b;->b:Ljava/lang/String;

    const-string v4, "float2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    check-cast p1, [F

    if-eqz p1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    aget v0, p1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-direct {v1, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v1

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iget-boolean v7, v6, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    if-eqz v7, :cond_0

    new-instance p1, LC5/b;

    iget-object p2, v6, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b:Ljava/lang/String;

    const/16 v0, 0xc

    const v1, 0x7f05012d

    invoke-direct {p1, p2, v0, v1}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    move v6, v4

    :goto_0
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LVb/b;

    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    const-string v9, "time"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v8, v7, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v11, "sampler2D"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v10, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v11, "float"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x7

    goto :goto_1

    :sswitch_2
    const-string v11, "rgba"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_3
    const-string v11, "bool"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_4
    const-string v11, "rgb"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    move v10, v0

    goto :goto_1

    :sswitch_5
    const-string v11, "float01"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    move v10, v1

    goto :goto_1

    :sswitch_6
    const-string v11, "float4"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    move v10, v2

    goto :goto_1

    :sswitch_7
    const-string v11, "float3"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_1

    :cond_9
    move v10, v3

    goto :goto_1

    :sswitch_8
    const-string v11, "float2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_1

    :cond_a
    move v10, v4

    :goto_1
    packed-switch v10, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid param type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] at shader:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LJ4/d;->M1(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$a;

    invoke-direct {v9, p0, v7, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v8, v9, v7, v10, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$d;

    invoke-direct {v9, p0, v7, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v8, v9, v7, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$b;

    invoke-direct {v9, p0, v7, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v8, v9, v7, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;

    invoke-direct {v9, p0, v7, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v8, v9, v7, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$c;

    invoke-direct {v9, p0, v7, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v8, v9, v7, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$e;

    invoke-direct {v9, p0, v7, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v8, v9, v7, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    iget-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    if-nez v8, :cond_b

    new-array v8, v0, [F

    iput-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    :cond_b
    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    iget-object v10, v7, LVb/b;->f:Ljava/lang/Object;

    check-cast v10, [F

    new-instance v11, Ldc/g;

    invoke-direct {v11, p0, v7, p2}, Ldc/g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    invoke-static {v8, v10, v9, v11}, LF5/c;->V(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    iget-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    if-nez v8, :cond_c

    new-array v8, v1, [F

    iput-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    :cond_c
    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    iget-object v10, v7, LVb/b;->f:Ljava/lang/Object;

    check-cast v10, [F

    new-instance v11, Ldc/h;

    invoke-direct {v11, p0, v7, p2}, Ldc/h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    invoke-static {v8, v10, v9, v11}, LF5/c;->P(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_8
    iget-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    if-nez v8, :cond_d

    new-array v8, v2, [F

    iput-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    :cond_d
    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    iget-object v10, v7, LVb/b;->f:Ljava/lang/Object;

    check-cast v10, [F

    new-instance v11, Ldc/i;

    invoke-direct {v11, p0, v7, p2}, Ldc/i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    invoke-static {v8, v10, v9, v11}, LF5/c;->C(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/2addr v6, v3

    goto/16 :goto_0

    :cond_e
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g;

    invoke-direct {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v0, "Wind effect"

    invoke-static {v0, p1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h;

    invoke-direct {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string p2, "Others"

    invoke-static {p2, p1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L0(LVb/b;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p1, :cond_14

    iget-object v6, p1, LVb/b;->a:Ljava/lang/String;

    if-nez v6, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v6, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v6, v0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "sampler2D"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "float"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v7, "rgba"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_3
    const-string v7, "bool"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_4
    const-string v7, "rgb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move v6, v2

    goto :goto_1

    :sswitch_5
    const-string v7, "float01"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    move v6, v1

    goto :goto_1

    :sswitch_6
    const-string v7, "float4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move v6, v5

    goto :goto_1

    :sswitch_7
    const-string v7, "float3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    move v6, v4

    goto :goto_1

    :sswitch_8
    const-string v7, "float2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move v6, v3

    :goto_1
    packed-switch v6, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid param type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] at shader:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_0
    iget-object v1, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v2, v1, Lub/p;

    if-eqz v2, :cond_a

    check-cast v1, Lub/p;

    goto :goto_4

    :cond_a
    iget-object v1, p1, LVb/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p1, LVb/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    :sswitch_9
    const-string v2, "empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    move v0, v5

    goto :goto_2

    :sswitch_a
    const-string v2, "black"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    move v0, v4

    goto :goto_2

    :sswitch_b
    const-string v2, "filled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget-object v1, Lyb/b;->h:Lub/p;

    goto :goto_4

    :pswitch_2
    sget-object v1, Lyb/b;->i:Lub/p;

    goto :goto_4

    :pswitch_3
    sget-object v1, Lyb/b;->g:Lub/p;

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v6, v0, [F

    if-eqz v6, :cond_f

    check-cast v0, [F

    array-length v6, v0

    if-lt v6, v2, :cond_14

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v8, p1, LVb/b;->a:Ljava/lang/String;

    aget v9, v0, v3

    aget v10, v0, v4

    aget v11, v0, v5

    aget v12, v0, v1

    invoke-virtual/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    goto/16 :goto_5

    :cond_f
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v2, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v2, v0, [F

    if-eqz v2, :cond_10

    check-cast v0, [F

    array-length v2, v0

    if-lt v2, v1, :cond_14

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    aget v2, v0, v3

    aget v3, v0, v4

    aget v0, v0, v5

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    goto/16 :goto_5

    :cond_10
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    goto/16 :goto_5

    :cond_11
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->r(Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v6, v0, [F

    if-eqz v6, :cond_14

    check-cast v0, [F

    array-length v6, v0

    if-lt v6, v2, :cond_14

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v8, p1, LVb/b;->a:Ljava/lang/String;

    aget v9, v0, v3

    aget v10, v0, v4

    aget v11, v0, v5

    aget v12, v0, v1

    invoke-virtual/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    goto :goto_5

    :pswitch_8
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v2, v0, [F

    if-eqz v2, :cond_12

    check-cast v0, [F

    array-length v2, v0

    if-lt v2, v1, :cond_14

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    aget v2, v0, v3

    aget v3, v0, v4

    aget v0, v0, v5

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    goto :goto_5

    :cond_12
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    goto :goto_5

    :pswitch_9
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, [F

    if-eqz v1, :cond_13

    check-cast v0, [F

    array-length v1, v0

    if-lt v1, v5, :cond_14

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-virtual {v1, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V

    goto :goto_5

    :cond_13
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->y(Ljava/lang/String;FF)V

    :cond_14
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4bf7529e -> :sswitch_b
        0x5978fff -> :sswitch_a
        0x5c2854d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final N0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p1, [F

    if-eqz v0, :cond_0

    check-cast p1, [F

    array-length v0, p1

    new-array v0, v0, [F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public O0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    return v0
.end method

.method public P0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    return v0
.end method

.method public final Q0(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "rgba"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rgb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "float4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "float3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "float2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final synthetic R0(LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->W0(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->X0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

.method public final synthetic S0(LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->W0(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->X0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

.method public final synthetic T0(LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->W0(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->X0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

.method public final U0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->forceUploadAll:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->paramVersions:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final V0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->paramVersions:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget v1, v0, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    aput v2, v0, p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final W0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    if-eqz v1, :cond_1

    iget-object v1, v1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final X0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->B()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->c0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public Z0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lec/e;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "shader",
            "filamentMaterial"
        }
    .end annotation

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->time:F

    invoke-static {}, LK8/d;->b()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->time:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->timeVersion:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->timeVersion:I

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    iput p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->timeVersion:I

    :cond_0
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->forceUploadAll:Z

    if-nez p2, :cond_1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->uploadedTimeVersion:I

    iget p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->timeVersion:I

    if-eq p2, p3, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string p3, "time"

    invoke-virtual {p2, p3, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->timeVersion:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->uploadedTimeVersion:I

    :cond_2
    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LVb/b;

    iget-boolean v0, p3, LVb/b;->e:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p3, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->Q0(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->forceUploadAll:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->uploadedParamVersions:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->paramVersions:[I

    aget v1, v1, p2

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->L0(LVb/b;)V

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->uploadedParamVersions:[I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->paramVersions:[I

    aget v0, v0, p2

    aput v0, p3, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->forceUploadAll:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->tmpMat:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-void
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a1(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->b1(Ljava/lang/Object;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "Float"

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVb/b;

    iget-boolean v5, v3, LVb/b;->e:Z

    if-eqz v5, :cond_9

    iget-object v5, v3, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "sampler2D"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "float"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v7, "rgba"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_3
    const-string v7, "bool"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_4
    const-string v7, "rgb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v7, "float01"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_6
    const-string v7, "float4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_7
    const-string v7, "float3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    move v6, v0

    goto :goto_1

    :sswitch_8
    const-string v7, "float2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    move v6, v1

    :goto_1
    packed-switch v6, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid param type["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] at shader:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LJ4/d;->M1(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    iget-object v4, v3, LVb/b;->a:Ljava/lang/String;

    const-string v5, "Texture"

    invoke-static {v4, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lub/g;

    move-result-object v4

    iput-object v4, v3, LVb/b;->f:Ljava/lang/Object;

    goto :goto_2

    :pswitch_1
    iget-object v5, v3, LVb/b;->a:Ljava/lang/String;

    invoke-static {v5, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, LVb/b;->f:Ljava/lang/Object;

    goto :goto_2

    :pswitch_2
    iget-object v4, v3, LVb/b;->a:Ljava/lang/String;

    const-string v5, "FloatArray"

    invoke-static {v4, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->f(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)[F

    move-result-object v4

    iput-object v4, v3, LVb/b;->f:Ljava/lang/Object;

    :cond_9
    :goto_2
    add-int/2addr v2, v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "localWindIntensity"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->c1(F)V

    :cond_b
    const-string v0, "windVerticality"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->d1(F)V

    :cond_c
    const-string v0, "materialID"

    const-string v1, "Int"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->n0(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->U0()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b1(Ljava/lang/Object;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    return v1
.end method

.method public c0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "Float"

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVb/b;

    iget-boolean v6, v4, LVb/b;->e:Z

    if-eqz v6, :cond_a

    iget-object v6, v4, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "sampler2D"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "float"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_2
    const-string v8, "rgba"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_3
    const-string v8, "bool"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_4
    const-string v8, "rgb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_5
    const-string v8, "float01"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_6
    const-string v8, "float4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_7
    const-string v8, "float3"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move v7, v0

    goto :goto_1

    :sswitch_8
    const-string v8, "float2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v7, v2

    :goto_1
    packed-switch v7, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid param type["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] at shader:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LJ4/d;->M1(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    iget-object v5, v4, LVb/b;->f:Ljava/lang/Object;

    if-eqz v5, :cond_a

    check-cast v5, Lub/p;

    instance-of v6, v5, Lub/g;

    const-string v7, "Texture"

    if-eqz v6, :cond_9

    iget-object v4, v4, LVb/b;->a:Ljava/lang/String;

    invoke-static {v4, v7, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v5, Lub/g;

    invoke-static {v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lub/g;)V

    goto :goto_2

    :cond_9
    iget-object v4, v4, LVb/b;->a:Ljava/lang/String;

    invoke-static {v4, v7, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lub/g;)V

    goto :goto_2

    :pswitch_1
    iget-object v6, v4, LVb/b;->f:Ljava/lang/Object;

    if-eqz v6, :cond_a

    iget-object v6, v4, LVb/b;->a:Ljava/lang/String;

    invoke-static {v6, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->b1(Ljava/lang/Object;)F

    move-result v4

    invoke-static {v5, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    goto :goto_2

    :pswitch_2
    iget-object v5, v4, LVb/b;->f:Ljava/lang/Object;

    if-eqz v5, :cond_a

    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    const-string v6, "FloatArray"

    invoke-static {v5, v6, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v5, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->r(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;[F)V

    :cond_a
    :goto_2
    add-int/2addr v3, v0

    goto/16 :goto_0

    :cond_b
    const-string v0, "localWindIntensity"

    invoke-static {v0, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v0, "windVerticality"

    invoke-static {v0, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v0, "materialID"

    const-string v2, "Int"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v2

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindIntensity"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->K0()V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windVerticality"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->M0()V

    :cond_1
    return-void
.end method

.method public e0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "colorINT"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVb/b;

    iget-object v3, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v2, LVb/b;->b:Ljava/lang/String;

    const-string v7, "rgba"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    check-cast p1, [F

    if-nez p1, :cond_0

    new-array p1, v5, [F

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v3

    aput v3, p1, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    aput v0, p1, v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v0

    int-to-float v0, v0

    aput v0, p1, v4

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p2

    aput p2, p1, v0

    iput-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    goto :goto_1

    :cond_1
    iget-object v3, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, LVb/b;->b:Ljava/lang/String;

    const-string v7, "rgb"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    check-cast p1, [F

    if-nez p1, :cond_2

    new-array p1, v5, [F

    :cond_2
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v3

    aput v3, p1, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    aput v0, p1, v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result p2

    int-to-float p2, p2

    aput p2, p1, v4

    iput-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final e1()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()Lnc/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    invoke-virtual {v0, v1}, Lnc/h;->v(F)V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    invoke-virtual {v0, v1}, Lnc/h;->w(F)V

    return-void
.end method

.method public h0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filamentMaterial",
            "material"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->h0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->e1()V

    return-void
.end method

.method public i0(Ljava/lang/String;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "localWindIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->d1(F)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    iget-object v2, v1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, LVb/b;->b:Ljava/lang/String;

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, LVb/b;->b:Ljava/lang/String;

    const-string v3, "float01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v1, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->c1(F)V

    return-void
.end method

.method public k0(Lnc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalShaderEntity"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->k0(Lnc/h;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->e1()V

    return-void
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->materialShader:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVb/b;

    invoke-virtual {v2}, LVb/b;->a()LVb/b;

    move-result-object v3

    iget-object v2, v2, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->N0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, LVb/b;->f:Ljava/lang/Object;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->n0(I)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->e1()V

    return-object v0
.end method

.method public r0(Ljava/lang/String;Lub/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "texture"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    iget-object v2, v1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, LVb/b;->b:Ljava/lang/String;

    const-string v3, "sampler2D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p2, v1, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    iget-object v2, v1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, LVb/b;->b:Ljava/lang/String;

    const-string v3, "sampler2D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, LVb/b;->f:Ljava/lang/Object;

    check-cast v2, Lub/p;

    if-eqz v2, :cond_0

    instance-of v3, v2, Lub/g;

    if-eqz v3, :cond_0

    check-cast v2, Lub/g;

    invoke-virtual {v2}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v2

    iput-object v2, v1, LVb/b;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v1, LVb/b;->f:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVb/b;

    iget-object v3, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v2, LVb/b;->b:Ljava/lang/String;

    const-string v6, "rgba"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    check-cast p1, [F

    if-eqz p1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v2, 0x3

    aget v2, p1, v2

    aget v0, p1, v0

    aget v3, p1, v5

    aget p1, p1, v4

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object v1

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    return-object p1

    :cond_1
    iget-object v3, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, LVb/b;->b:Ljava/lang/String;

    const-string v6, "rgb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    check-cast p1, [F

    if-eqz p1, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    aget v0, p1, v0

    aget v2, p1, v5

    aget p1, p1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v0, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    return-object v1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public u(Ljava/lang/String;)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "localWindIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->windVerticality:F

    return p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    iget-object v3, v1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, LVb/b;->b:Ljava/lang/String;

    const-string v4, "float"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, LVb/b;->b:Ljava/lang/String;

    const-string v4, "float01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object p1, v1, LVb/b;->f:Ljava/lang/Object;

    if-nez p1, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v1, LVb/b;->f:Ljava/lang/Object;

    :cond_3
    iget-object p1, v1, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->b1(Ljava/lang/Object;)F

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->localWindIntensity:F

    return p1
.end method

.method public w0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "vector2"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVb/b;

    iget-object v3, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, LVb/b;->b:Ljava/lang/String;

    const-string v4, "float2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    check-cast p1, [F

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v3

    aput v3, p1, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    iput-object p1, v2, LVb/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->V0(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Z()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public y(Ljava/lang/String;)Lub/p;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    iget-object v2, v1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, LVb/b;->b:Ljava/lang/String;

    const-string v3, "sampler2D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, LVb/b;->f:Ljava/lang/Object;

    instance-of v2, v1, Lub/p;

    if-eqz v2, :cond_0

    check-cast v1, Lub/p;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->params:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    iget-object v2, v1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, LVb/b;->b:Ljava/lang/String;

    const-string v3, "sampler2D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, LVb/b;->f:Ljava/lang/Object;

    instance-of v2, v1, Lub/g;

    if-eqz v2, :cond_0

    check-cast v1, Lub/g;

    invoke-virtual {v1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
