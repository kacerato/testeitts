.class public abstract Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
.source "SourceFile"


# instance fields
.field public genNormal:LJAVARuntime/Texture;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public A0(LJAVARuntime/Texture;Lub/p;Lub/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z
    .locals 11
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
            "tex",
            "fallback",
            "tripleFallback",
            "name",
            "filamentMaterial",
            "spriteIndex"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p4

    move-object/from16 v8, p5

    invoke-static {p1}, LJAVARuntime/Texture;->isRenderable(LJAVARuntime/Texture;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v9, 0x1

    const-string v4, "Sprite"

    if-eqz v2, :cond_2

    iget-object v2, v0, LJAVARuntime/Texture;->instance:Lub/p;

    instance-of v5, v2, Lub/g;

    if-eqz v5, :cond_0

    check-cast v2, Lub/g;

    invoke-virtual {v2}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v5

    sub-int/2addr v5, v9

    move/from16 v6, p6

    invoke-static {v3, v6, v5}, LNc/b;->F(III)I

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v2

    move v10, v2

    move v7, v6

    move v6, v5

    move v5, v3

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move v7, v2

    move v10, v7

    move v5, v3

    move v6, v5

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p5

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v10

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_1
    iget-object v0, v0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, v8, p4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v9

    :cond_2
    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p5

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_3
    move-object v0, p2

    invoke-virtual {p2, v8, p4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v9

    :cond_4
    invoke-static {p3}, Lub/p;->L(Lub/p;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p5

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_5
    move-object v0, p3

    invoke-virtual {p3, v8, p4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v9

    :cond_6
    return v3
.end method

.method public B0(Lub/p;Lub/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tex",
            "fallback",
            "name",
            "filamentMaterial"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, LJAVARuntime/Texture;->isRenderable(Lub/p;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p4, p3}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p4, p3}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public C0(Lub/p;Lub/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tex",
            "fallback",
            "name",
            "filamentMaterial",
            "spriteIndex"
        }
    .end annotation

    invoke-static {p1}, LJAVARuntime/Texture;->isRenderable(Lub/p;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Sprite"

    if-eqz v0, :cond_2

    instance-of p2, p1, Lub/g;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lub/g;

    invoke-virtual {p2}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p2

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    if-ne v0, v4, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v1, p5, v0}, LNc/b;->F(III)I

    move-result p5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result p5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result p2

    move v9, p2

    move v6, p5

    move v7, v0

    move v8, v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 p5, 0x0

    move v6, p5

    move v7, v6

    move v8, v1

    move v9, v8

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p4

    invoke-virtual/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_1
    invoke-virtual {p1, p4, p3}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p4

    invoke-virtual/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_3
    invoke-virtual {p2, p4, p3}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v2

    :cond_4
    return v1
.end method

.method public D0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->genNormal:LJAVARuntime/Texture;

    return-void
.end method

.method public abstract E0()LJAVARuntime/Texture;
.end method

.method public F0()Lub/p;
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->genNormal:LJAVARuntime/Texture;

    invoke-static {v0, v1}, Lab/d;->d(LJAVARuntime/Texture;LJAVARuntime/Texture;)Lub/p;

    move-result-object v0

    return-object v0
.end method

.method public abstract G0()LJAVARuntime/Texture;
.end method

.method public H0()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->E0()LJAVARuntime/Texture;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->o()LNb/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->genNormal:LJAVARuntime/Texture;

    invoke-static {v0, v2}, Lab/d;->d(LJAVARuntime/Texture;LJAVARuntime/Texture;)Lub/p;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->E0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()LJAVARuntime/Texture;

    move-result-object v2

    sget-object v3, Lab/d$a;->NM:Lab/d$a;

    invoke-static {v0, v2, v3}, Lab/d;->a(LJAVARuntime/Texture;LJAVARuntime/Texture;Lab/d$a;)Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->genNormal:LJAVARuntime/Texture;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->genNormal:LJAVARuntime/Texture;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->genNormal:LJAVARuntime/Texture;

    :cond_2
    :goto_0
    return-void
.end method

.method public z0(LJAVARuntime/Texture;Lub/p;Lub/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tex",
            "fallback",
            "tripleFallback",
            "name",
            "filamentMaterial"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, LJAVARuntime/Texture;->isRenderable(LJAVARuntime/Texture;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {p1, p5, p4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p5, p4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p3}, Lub/p;->L(Lub/p;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3, p5, p4}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
