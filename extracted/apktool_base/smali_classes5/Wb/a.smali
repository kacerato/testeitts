.class public LWb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;)Lcc/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "fragment",
            "vertex",
            "binder"
        }
    .end annotation

    new-instance v0, Lcc/d;

    invoke-direct {v0, p0, p3}, Lcc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcc/d;->s(Z)Lcc/d;

    invoke-virtual {v0, p1}, Lcc/d;->r(Ljava/lang/String;)Lcc/d;

    invoke-virtual {v0, p2}, Lcc/d;->u(Ljava/lang/String;)Lcc/d;

    new-instance p0, Lec/i;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object p2, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 p3, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v1, p2, p3}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, p0}, Lcc/d;->w(Lec/i;)V

    new-instance p0, LWb/a$a;

    invoke-direct {p0}, LWb/a$a;-><init>()V

    invoke-virtual {v0, p0}, Lcc/d;->v(Lec/c;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string p2, "baseColor"

    invoke-virtual {v0, p0, p1, p2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p2, "fiberColorA"

    invoke-virtual {v0, p0, p1, p2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p2, "fiberColorB"

    invoke-virtual {v0, p0, p1, p2}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object p3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v1, "weaveScale"

    invoke-virtual {v0, p2, p3, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object p3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v1, "weaveContrast"

    invoke-virtual {v0, p2, p3, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "fiberDepth"

    invoke-virtual {v0, p2, p3, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "roughness"

    invoke-virtual {v0, p2, p3, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "metallic"

    invoke-virtual {v0, p2, p3, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "normalStrength"

    invoke-virtual {v0, p2, p3, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "shiftColorA"

    invoke-virtual {v0, p0, p1, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "shiftColorB"

    invoke-virtual {v0, p0, p1, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "flakeColor"

    invoke-virtual {v0, p0, p1, v1}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "filmThickness"

    invoke-virtual {v0, p2, p3, p0}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "iridescenceStrength"

    invoke-virtual {v0, p2, p3, p0}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "flakeIntensity"

    invoke-virtual {v0, p2, p3, p0}, Lcc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcc/d;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarbonFiberBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarbonFiberBinder;-><init>()V

    const-string v1, "CarPaint/CarbonFiber"

    const-string v2, "CarPaint/easy_carpaint_carbonfiber_frag.glsl"

    const-string v3, "CarPaint/easy_carpaint_carbonfiber_vertex.glsl"

    invoke-static {v1, v2, v3, v0}, LWb/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;)Lcc/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcc/d;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;-><init>()V

    const-string v1, "CarPaint/Iridescent"

    const-string v2, "CarPaint/easy_carpaint_iridescent_frag.glsl"

    const-string v3, "CarPaint/easy_carpaint_iridescent_vertex.glsl"

    invoke-static {v1, v2, v3, v0}, LWb/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;)Lcc/d;

    move-result-object v0

    return-object v0
.end method
