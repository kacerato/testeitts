.class public LUb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x1

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static b(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static c(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static d(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static e(ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textured",
            "transparent"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0());\n  c *= materialParams.baseColor;\n  c.rgb *= c.a;\n  material.baseColor = c;\n}\n"

    return-object p0

    :cond_0
    const-string p0, "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0());\n  c *= materialParams.baseColor;\n  material.baseColor = c;\n}\n"

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = materialParams.baseColor;\n  c.rgb *= c.a;\n  material.baseColor = c;\n}\n"

    return-object p0

    :cond_2
    const-string p0, "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  material.baseColor = materialParams.baseColor;\n}\n"

    return-object p0
.end method

.method public static f(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static g(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static h(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static i(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static j(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static k(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static l(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static m(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static n(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static o(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static p(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static q(Z)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justCache"
        }
    .end annotation

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move v0, p0

    invoke-static/range {v0 .. v5}, LUb/b;->r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static r(ZZLcom/google/android/filament/filamat/MaterialBuilder$a;ZZZ)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 5
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
            "justCache",
            "doubleSided",
            "blendingMode",
            "depthWrite",
            "depthCulling",
            "textured"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gizmo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lec/b;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_0
    invoke-static {v0}, Lec/b;->f(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance p2, Lcom/google/android/filament/Material$b;

    invoke-direct {p2}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    return-object p1

    :cond_1
    new-instance v2, LSb/b;

    invoke-direct {v2}, LSb/b;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gizmo-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->V(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p1

    check-cast p1, LSb/b;

    const/4 v2, 0x0

    if-nez p3, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p1, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    :cond_3
    sget-object p3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string p4, "baseColor"

    invoke-virtual {p1, p3, p4}, Lcom/google/android/filament/filamat/MaterialBuilder;->P(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    if-eqz p5, :cond_4

    sget-object p3, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p1, p3}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object p3, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object p4, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {p1, p3, p4, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :cond_4
    sget-object p3, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    if-ne p2, p3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {p5, v2}, LUb/b;->e(ZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p1}, LSb/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, p1}, Lec/b;->l(ILjava/nio/ByteBuffer;)V

    if-nez p0, :cond_6

    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance p1, Lcom/google/android/filament/Material$b;

    invoke-direct {p1}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    return-object p0

    :cond_6
    return-object v1

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Falha ao compilar material!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
