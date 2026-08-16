.class public LP6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP6/b$z;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LP6/b;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LP6/b;->i(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;",
            "LP6/b$z;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DOMAIN_WRAP:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->enableDomainWarp:Z

    new-instance v5, LP6/b$e;

    invoke-direct {v5, p0, p1}, LP6/b$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->domainWrapEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v2, v3, v4, v5, v6}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TYPE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->getDomainWarpType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    move-result-object v4

    new-instance v5, LP6/b$f;

    invoke-direct {v5, p1, p0}, LP6/b$f;-><init>(LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    invoke-static {v3, v6, v4, v5}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$g;

    invoke-direct {v4, p0, p1}, LP6/b$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v6, "Amplitude"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$h;

    invoke-direct {v4, p0, p1}, LP6/b$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v6, "Frequency"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FRACTAL_TYPE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->getDomainWarpFractalType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    move-result-object v4

    new-instance v6, LP6/b$i;

    invoke-direct {v6, p1, p0}, LP6/b$i;-><init>(LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    const-class v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    invoke-static {v3, v7, v4, v6}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$j;

    invoke-direct {v4, p0, p1}, LP6/b$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v6, "Octaves"

    sget-object v7, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v3, v4, v6, v7}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$l;

    invoke-direct {v4, p0, p1}, LP6/b$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v6, "Gain"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$m;

    invoke-direct {v4, p0, p1}, LP6/b$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string p0, "Lacunarity"

    invoke-direct {v3, v4, p0, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;",
            "LP6/b$z;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TYPE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->getNoiseType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    move-result-object v2

    new-instance v3, LP6/b$t;

    invoke-direct {v3, p1, p0}, LP6/b$t;-><init>(LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LP6/b$u;

    invoke-direct {v2, p0, p1}, LP6/b$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v3, "Seed"

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LP6/b$v;

    invoke-direct {v2, p0, p1}, LP6/b$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string p1, "Frequency"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, p1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OFFSET:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-static {p1, p0, v1}, LF5/c;->L(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v0, LP6/b$q;->b:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "Linear"

    return-object p0

    :cond_1
    const-string p0, "Pixel"

    return-object p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;",
            "LP6/b$z;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const-string v6, "x"

    if-ge v4, v3, :cond_0

    aget v7, v2, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, LC5/b;

    new-instance v3, LP6/b$k;

    invoke-direct {v3, v1, p1}, LP6/b$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;LP6/b$z;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v4, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v7, "Max resolution"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, LP6/b$r;

    invoke-direct {v3, v1, p1}, LP6/b$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;LP6/b$z;)V

    const-string v1, "Quality"

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v2, v3, v1, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->coloRamp:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LP6/b$s;

    invoke-direct {v3, p1}, LP6/b$s;-><init>(LP6/b$z;)V

    const-string v4, "Color ramp"

    invoke-static {v4, v1, v2, v3}, LN9/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, LP6/b;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1}, LP6/b;->g(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1}, LP6/b;->c(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1}, LP6/b;->h(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;",
            "LP6/b$z;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FRACTAL:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->fractalEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TYPE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->getFractalType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    move-result-object v4

    new-instance v5, LP6/b$w;

    invoke-direct {v5, p1, p0}, LP6/b$w;-><init>(LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    invoke-static {v3, v6, v4, v5}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, LP6/b$q;->a:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->getFractalType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_0
    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$x;

    invoke-direct {v4, p0, p1}, LP6/b$x;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v5, "Ping pong strength"

    sget-object v6, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$y;

    invoke-direct {v4, p0, p1}, LP6/b$y;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v5, "Octaves"

    sget-object v6, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$a;

    invoke-direct {v4, p0, p1}, LP6/b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v6, "Lacunarity"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$b;

    invoke-direct {v4, p0, p1}, LP6/b$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v6, "Gain"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$c;

    invoke-direct {v4, p0, p1}, LP6/b$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string v6, "Bounding"

    invoke-direct {v3, v4, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/b$d;

    invoke-direct {v4, p0, p1}, LP6/b$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)V

    const-string p0, "Weighted Strength"

    invoke-direct {v3, v4, p0, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;",
            "LP6/b$z;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v4, LC5/b;

    new-instance v5, LC5/a;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXTURE:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v5, v6, v7, v8}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v4, v5}, LC5/b;-><init>(LC5/a;)V

    iget-object v5, v4, LC5/b;->Q:LC5/a;

    const v6, 0x7f0500b2

    iput v6, v5, LC5/a;->p:I

    new-instance v10, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v5, "Pixel"

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "Linear"

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    new-instance v6, LC5/b;

    new-instance v8, LP6/b$n;

    invoke-direct {v8, v3, v1, v0}, LP6/b$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    invoke-static/range {p0 .. p0}, LP6/b;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;

    move-result-object v9

    sget-object v15, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v12, "Filter"

    move-object v7, v6

    move-object v11, v15

    invoke-direct/range {v7 .. v12}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v14}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v5, "Clamp"

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "Repeat"

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "MirrorRepeat"

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, LC5/b;->Q:LC5/a;

    iget-object v5, v5, LC5/a;->o:Ljava/util/List;

    new-instance v6, LC5/b;

    new-instance v12, LP6/b$o;

    invoke-direct {v12, v3, v1, v0}, LP6/b$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;LP6/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    invoke-static/range {p0 .. p0}, LP6/b;->i(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;

    move-result-object v13

    const-string v16, "Wrap"

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, LC5/b;->Q:LC5/a;

    iget-object v0, v0, LC5/a;->o:Ljava/util/List;

    new-instance v5, LC5/b;

    new-instance v6, LP6/b$p;

    invoke-direct {v6, v3, v1}, LP6/b$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;LP6/b$z;)V

    const-string v1, "Mipmaps"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v5, v6, v1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v0, LP6/b$q;->c:[I

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "MirrorRepeat"

    return-object p0

    :cond_1
    const-string p0, "Repeat"

    return-object p0

    :cond_2
    const-string p0, "Clamp"

    return-object p0
.end method
