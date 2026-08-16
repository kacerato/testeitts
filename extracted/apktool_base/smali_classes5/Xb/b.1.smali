.class public LXb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcc/d;
    .locals 7

    new-instance v0, Lcc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;-><init>()V

    const-string v2, "Lit/LightMap"

    invoke-direct {v0, v2, v1}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcc/d;->s(Z)Lcc/d;

    const-string v1, "Lightmap/easy_lit_lightmap_frag.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    const-string v1, "Lightmap/easy_lit_lightmap_vertex.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lcc/d;->w(Lec/i;)V

    new-instance v1, LXb/b$d;

    invoke-direct {v1}, LXb/b$d;-><init>()V

    invoke-virtual {v0, v1}, Lcc/d;->v(Lec/c;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "baseColor"

    invoke-virtual {v0, v4, v5}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    const-string v5, "emissive"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "emissiveNits"

    invoke-virtual {v0, v4, v5}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    const-string v5, "normalMap"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "normalStrength"

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v5, "roughnessMap"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v5, "metallicMap"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v5, "aoMap"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v5, "lightMap"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "lightIntensity"

    invoke-virtual {v0, v4, v1}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "albedoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "albedoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcc/d;
    .locals 8

    new-instance v0, Lcc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;-><init>()V

    const-string v2, "Lit/PBR"

    invoke-direct {v0, v2, v1}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcc/d;->s(Z)Lcc/d;

    const-string v1, "PBR/easy_lit_pbr_frag.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    const-string v1, "PBR/easy_lit_pbr_vertex.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lcc/d;->w(Lec/i;)V

    new-instance v1, LXb/b$a;

    invoke-direct {v1}, LXb/b$a;-><init>()V

    invoke-virtual {v0, v1}, Lcc/d;->v(Lec/c;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v4, "opacity"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "baseColor"

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "emissive"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v6, "emissiveNits"

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "normalMap"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v7, "normalStrength"

    invoke-virtual {v0, v4, v6, v7}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "roughnessMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "metallicMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "aoMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "heightMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightIntensity"

    invoke-virtual {v0, v4, v6, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightNormalStrength"

    invoke-virtual {v0, v4, v6, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightMinLayers"

    invoke-virtual {v0, v4, v5, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightMaxLayers"

    invoke-virtual {v0, v4, v5, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "albedoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "albedoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "worldUVScale"

    invoke-virtual {v0, v4, v6, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    new-instance v1, Lgc/a;

    const-string v2, "useWorldUV"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    new-instance v1, Lgc/a;

    const-string v2, "hasHeight"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    new-instance v1, Lgc/a;

    const-string v2, "discardEdges"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    return-object v0
.end method

.method public static c()Lcc/d;
    .locals 8

    new-instance v0, Lcc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;-><init>()V

    const-string v2, "Lit/Refractive"

    invoke-direct {v0, v2, v1}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcc/d;->s(Z)Lcc/d;

    invoke-virtual {v0, v1}, Lcc/d;->t(Z)Lcc/d;

    const-string v1, "PBR/easy_lit_refractive_frag.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    const-string v1, "PBR/easy_lit_refractive_vertex.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance v1, Lec/i;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;)V

    invoke-virtual {v0, v1}, Lcc/d;->w(Lec/i;)V

    new-instance v1, LXb/b$c;

    invoke-direct {v1}, LXb/b$c;-><init>()V

    invoke-virtual {v0, v1}, Lcc/d;->v(Lec/c;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v4, "opacity"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "baseColor"

    invoke-virtual {v0, v4, v5}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    const-string v5, "emissive"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "emissiveNits"

    invoke-virtual {v0, v4, v5}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    const-string v5, "normalMap"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "normalStrength"

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "roughnessMap"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "metallicMap"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "aoMap"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "transmission"

    invoke-virtual {v0, v4, v1}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "absorption"

    invoke-virtual {v0, v1, v2}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    const-string v1, "ior"

    invoke-virtual {v0, v4, v1}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    const-string v1, "microThickness"

    invoke-virtual {v0, v4, v1}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    const-string v1, "dispersion"

    invoke-virtual {v0, v4, v1}, Lcc/d;->d(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "albedoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "albedoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "worldUVScale"

    invoke-virtual {v0, v4, v5, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    new-instance v1, Lgc/a;

    const-string v2, "useWorldUV"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    new-instance v1, Lgc/a;

    const-string v2, "refractionTypeIsThin"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    new-instance v1, Lgc/a;

    const-string v2, "refractionTypeIsSolid"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    return-object v0
.end method

.method public static d()Lcc/d;
    .locals 8

    new-instance v0, Lcc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitUltraBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitUltraBinder;-><init>()V

    const-string v2, "Lit/Ultra"

    invoke-direct {v0, v2, v1}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcc/d;->s(Z)Lcc/d;

    const-string v1, "PBR/easy_lit_ultra_frag.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    const-string v1, "PBR/easy_lit_ultra_vertex.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lcc/d;->w(Lec/i;)V

    new-instance v1, LXb/b$b;

    invoke-direct {v1}, LXb/b$b;-><init>()V

    invoke-virtual {v0, v1}, Lcc/d;->v(Lec/c;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v4, "opacity"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "baseColor"

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "emissive"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v6, "emissiveNits"

    invoke-virtual {v0, v4, v5, v6}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "normalMap"

    invoke-virtual {v0, v1, v2, v3, v6}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v7, "normalStrength"

    invoke-virtual {v0, v4, v6, v7}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "hasNormalMap"

    invoke-virtual {v0, v4, v5, v7}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "roughnessMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "hasRoughnessMap"

    invoke-virtual {v0, v4, v5, v7}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "metallicMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "aoMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "hasAoMap"

    invoke-virtual {v0, v4, v5, v7}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v7, "heightMap"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "hasHeightMap"

    invoke-virtual {v0, v4, v5, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightIntensity"

    invoke-virtual {v0, v4, v6, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightNormalStrength"

    invoke-virtual {v0, v4, v6, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightMinLayers"

    invoke-virtual {v0, v4, v5, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightMaxLayers"

    invoke-virtual {v0, v4, v5, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v2, "albedoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "albedoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "normalOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "roughnessOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "metallicOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "aoOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "heightOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveTilling"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v2, "emissiveOffset"

    invoke-virtual {v0, v1, v3, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "worldUVScale"

    invoke-virtual {v0, v4, v6, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    new-instance v1, Lgc/a;

    const-string v2, "useWorldUV"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    new-instance v1, Lgc/a;

    const-string v2, "hasHeight"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    new-instance v1, Lgc/a;

    const-string v2, "discardEdges"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    return-object v0
.end method
