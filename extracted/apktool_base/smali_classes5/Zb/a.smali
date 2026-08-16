.class public LZb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$n;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder;)Lcc/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "shading",
            "fragment",
            "vertex",
            "binder"
        }
    .end annotation

    new-instance v0, Lcc/d;

    invoke-direct {v0, p0, p4}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->LIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    const/4 p4, 0x0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p4

    :goto_0
    invoke-virtual {v0, p0}, Lcc/d;->s(Z)Lcc/d;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PS1/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance p0, Lec/i;

    sget-object p2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/high16 p3, 0x3f000000    # 0.5f

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-direct {p0, p2, p3, v1, p4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, p0}, Lcc/d;->w(Lec/i;)V

    new-instance p0, LZb/a$a;

    invoke-direct {p0, p1}, LZb/a$a;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$n;)V

    invoke-virtual {v0, p0}, Lcc/d;->v(Lec/c;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object p2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string p3, "albedo"

    invoke-virtual {v0, p0, p1, p2, p3}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string p3, "baseColor"

    invoke-virtual {v0, p0, p1, p3}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->INT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string p3, "depthMode"

    invoke-virtual {v0, p0, p1, p3}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object p3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string p4, "albedoSize"

    invoke-virtual {v0, p0, p3, p4}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p3, "fakeSize"

    invoke-virtual {v0, p0, p1, p3}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p1, "albedoTilling"

    invoke-virtual {v0, p0, p2, p1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p1, "albedoOffset"

    invoke-virtual {v0, p0, p2, p1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcc/d;
    .locals 5

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->LIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1LitBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1LitBinder;-><init>()V

    const-string v2, "Lit/PS1"

    const-string v3, "easy_ps1_lit_frag.glsl"

    const-string v4, "easy_ps1_lit_vertex.glsl"

    invoke-static {v2, v0, v3, v4, v1}, LZb/a;->a(Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$n;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder;)Lcc/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcc/d;
    .locals 5

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1UnlitBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1UnlitBinder;-><init>()V

    const-string v2, "Unlit/PS1"

    const-string v3, "easy_ps1_unlit_frag.glsl"

    const-string v4, "easy_ps1_unlit_vertex.glsl"

    invoke-static {v2, v0, v3, v4, v1}, LZb/a;->a(Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$n;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder;)Lcc/d;

    move-result-object v0

    return-object v0
.end method
