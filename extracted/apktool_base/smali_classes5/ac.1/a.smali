.class public Lac/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcc/d;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    new-instance v0, Lcc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;-><init>()V

    invoke-direct {v0, p0, v1}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcc/d;->s(Z)Lcc/d;

    const-string v1, "Unlit/easy_unlit_simple_frag.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    const-string v1, "Unlit/easy_unlit_simple_vertex.glsl"

    invoke-virtual {v0, v1}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/high16 v3, 0x3f000000    # 0.5f

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-direct {v1, v2, v3, v4, p0}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lcc/d;->w(Lec/i;)V

    new-instance p0, Lac/a$a;

    invoke-direct {p0}, Lac/a$a;-><init>()V

    invoke-virtual {v0, p0}, Lcc/d;->v(Lec/c;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "albedo"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v2, "baseColor"

    invoke-virtual {v0, p0, v1, v2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcc/d;
    .locals 1

    const-string v0, "Unlit/Simple"

    invoke-static {v0}, Lac/a;->a(Ljava/lang/String;)Lcc/d;

    move-result-object v0

    return-object v0
.end method
