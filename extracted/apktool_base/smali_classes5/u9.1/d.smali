.class public Lu9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lec/e;

.field public static b:Lec/e;

.field public static c:Lec/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 10

    invoke-static {}, Lu9/d;->e()Lec/h;

    move-result-object v0

    new-instance v9, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v3, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STerrainBrush-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lec/h;->r(Lec/i;Ljava/lang/String;)Lec/e;

    move-result-object v0

    sput-object v0, Lu9/d;->c:Lec/e;

    return-void
.end method

.method public static b()V
    .locals 6

    invoke-static {}, Lu9/d;->g()Lec/h;

    move-result-object v0

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STerrain-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lec/h;->r(Lec/i;Ljava/lang/String;)Lec/e;

    move-result-object v0

    sput-object v0, Lu9/d;->a:Lec/e;

    return-void
.end method

.method public static c()V
    .locals 6

    invoke-static {}, Lu9/d;->i()Lec/h;

    move-result-object v0

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STerrain-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lec/h;->r(Lec/i;Ljava/lang/String;)Lec/e;

    move-result-object v0

    sput-object v0, Lu9/d;->b:Lec/e;

    return-void
.end method

.method public static d()Lec/e;
    .locals 1

    sget-object v0, Lu9/d;->c:Lec/e;

    return-object v0
.end method

.method public static e()Lec/h;
    .locals 7

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lec/f;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v5, "baseColor"

    invoke-direct {v0, v1, v2, v5}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/g;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "brushMap"

    invoke-direct {v0, v1, v2, v5, v6}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lgc/e;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v5, "brush_preview_frag.glsl"

    invoke-static {v5}, Lu9/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v2, v5}, Lgc/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    new-instance v6, Lec/h;

    new-instance v2, Lu9/d$c;

    invoke-direct {v2}, Lu9/d$c;-><init>()V

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lec/h;-><init>(Lgc/e;Lec/c;Ljava/util/List;Ljava/util/List;Z)V

    return-object v6
.end method

.method public static f()Lec/e;
    .locals 1

    sget-object v0, Lu9/d;->a:Lec/e;

    return-object v0
.end method

.method public static g()Lec/h;
    .locals 7

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lgc/e;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v5, "lit_a_frag.glsl"

    invoke-static {v5}, Lu9/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v2, v5}, Lgc/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    new-instance v6, Lec/h;

    new-instance v2, Lu9/d$a;

    invoke-direct {v2}, Lu9/d$a;-><init>()V

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lec/h;-><init>(Lgc/e;Lec/c;Ljava/util/List;Ljava/util/List;Z)V

    return-object v6
.end method

.method public static h()Lec/e;
    .locals 1

    sget-object v0, Lu9/d;->b:Lec/e;

    return-object v0
.end method

.method public static i()Lec/h;
    .locals 9

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lec/f;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v5, "maxHeight"

    invoke-direct {v0, v1, v2, v5}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "uvStep"

    invoke-direct {v0, v1, v5, v6}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/g;

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v7, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    const-string v8, "layer1Map"

    invoke-direct {v0, v6, v7, v5, v8}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/g;

    const-string v8, "albedo1R"

    invoke-direct {v0, v6, v7, v5, v8}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/g;

    const-string v8, "metallic1R"

    invoke-direct {v0, v6, v7, v5, v8}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/g;

    const-string v8, "nm1R"

    invoke-direct {v0, v6, v7, v5, v8}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/g;

    const-string v8, "heightMap"

    invoke-direct {v0, v6, v7, v5, v8}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "enableHeight"

    invoke-direct {v0, v1, v5, v6}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v6, "heightIntensity"

    invoke-direct {v0, v1, v2, v6}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v6, "heightNormalStrength"

    invoke-direct {v0, v1, v2, v6}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v6, "heightMinLayers"

    invoke-direct {v0, v1, v5, v6}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v6, "heightMaxLayers"

    invoke-direct {v0, v1, v5, v6}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v6, "layer1Sizes"

    invoke-direct {v0, v1, v2, v6}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v2, "layer1Roughness"

    invoke-direct {v0, v1, v5, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v2, "layer1Specular"

    invoke-direct {v0, v1, v5, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "lit_b_frag.glsl"

    invoke-static {v0}, Lu9/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lgc/e;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-direct {v1, v2, v5, v0}, Lgc/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    new-instance v6, Lec/h;

    new-instance v2, Lu9/d$b;

    invoke-direct {v2}, Lu9/d$b;-><init>()V

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lec/h;-><init>(Lgc/e;Lec/c;Ljava/util/List;Ljava/util/List;Z)V

    return-object v6
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shaders/Terrain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k()V
    .locals 6

    invoke-static {}, Lu9/d;->g()Lec/h;

    move-result-object v0

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lec/h;->C(Lec/i;)Z

    return-void
.end method

.method public static l()V
    .locals 6

    invoke-static {}, Lu9/d;->g()Lec/h;

    move-result-object v0

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lec/h;->E(Lec/i;)Z

    return-void
.end method

.method public static m()V
    .locals 6

    invoke-static {}, Lu9/d;->i()Lec/h;

    move-result-object v0

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lec/h;->C(Lec/i;)Z

    return-void
.end method

.method public static n()V
    .locals 6

    invoke-static {}, Lu9/d;->i()Lec/h;

    move-result-object v0

    new-instance v1, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2, v5, v3, v4}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, v1}, Lec/h;->E(Lec/i;)Z

    return-void
.end method

.method public static o()V
    .locals 10

    invoke-static {}, Lu9/d;->e()Lec/h;

    move-result-object v0

    new-instance v9, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v3, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    invoke-virtual {v0, v9}, Lec/h;->C(Lec/i;)Z

    return-void
.end method

.method public static p()V
    .locals 10

    invoke-static {}, Lu9/d;->e()Lec/h;

    move-result-object v0

    new-instance v9, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v3, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    invoke-virtual {v0, v9}, Lec/h;->E(Lec/i;)Z

    return-void
.end method
