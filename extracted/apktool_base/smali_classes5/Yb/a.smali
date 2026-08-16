.class public LYb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcc/d;
    .locals 6

    new-instance v0, Lcc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;-><init>()V

    const-string v2, "Lit/Matcap"

    invoke-direct {v0, v2, v1}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcc/d;->s(Z)Lcc/d;

    const-string v1, "Matcap/easy_matcap_lit_frag.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    const-string v1, "Matcap/easy_matcap_lit_vertex.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lcc/d;->w(Lec/i;)V

    new-instance v1, LYb/a$a;

    invoke-direct {v1}, LYb/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcc/d;->v(Lec/c;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "matcap"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v4, "normalMap"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v4, "roughnessMap"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v4, "metallicMap"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "baseColor"

    invoke-virtual {v0, v1, v2, v4}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

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

    new-instance v1, Lgc/a;

    const-string v2, "hasNormal"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcc/d;->b(Lgc/a;)V

    return-object v0
.end method

.method public static b()Lcc/d;
    .locals 6

    new-instance v0, Lcc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapUnlitBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapUnlitBinder;-><init>()V

    const-string v2, "Unlit/Matcap"

    invoke-direct {v0, v2, v1}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcc/d;->s(Z)Lcc/d;

    const-string v2, "Matcap/easy_matcap_unlit_frag.glsl"

    invoke-virtual {v0, v2}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    const-string v2, "Matcap/easy_matcap_unlit_vertex.glsl"

    invoke-virtual {v0, v2}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance v2, Lec/i;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-direct {v2, v3, v4, v5, v1}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v2}, Lcc/d;->w(Lec/i;)V

    new-instance v1, LYb/a$b;

    invoke-direct {v1}, LYb/a$b;-><init>()V

    invoke-virtual {v0, v1}, Lcc/d;->v(Lec/c;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "matcap"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "baseColor"

    invoke-virtual {v0, v1, v2, v3}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    return-object v0
.end method
