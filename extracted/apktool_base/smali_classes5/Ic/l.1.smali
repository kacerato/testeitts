.class public LIc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = ".ar"

.field public static final B:Ljava/lang/String; = ".sound"

.field public static final C:Ljava/lang/String; = ".anim"

.field public static final D:Ljava/lang/String; = ".amask"

.field public static final E:Ljava/lang/String; = ".mat"

.field public static final F:Ljava/lang/String; = ".hpop"

.field public static final G:Ljava/lang/String; = ".zip"

.field public static final H:Ljava/lang/String; = ".tdata"

.field public static final I:Ljava/lang/String; = ".bin"

.field public static final J:Ljava/lang/String; = ".java"

.field public static final K:Ljava/lang/String; = ".javac"

.field public static final L:Ljava/lang/String; = ".class"

.field public static final M:Ljava/lang/String; = ".dex"

.field public static final N:Ljava/lang/String; = ".skedata"

.field public static final O:Ljava/lang/String; = ".jks"

.field public static final P:Ljava/lang/String; = ".config"

.field public static final Q:Ljava/lang/String; = ".vglsl"

.field public static final R:Ljava/lang/String; = ".fglsl"

.field public static final S:Ljava/lang/String; = ".gglsl"

.field public static final T:Ljava/lang/String; = ".itjar"

.field public static final U:Ljava/lang/String; = ".jar"

.field public static final V:Ljava/lang/String; = ".txt"

.field public static final W:Ljava/lang/String; = ".pdf"

.field public static final X:Ljava/lang/String; = ".doc"

.field public static final Y:Ljava/lang/String; = ".docx"

.field public static final Z:Ljava/lang/String; = ".xml"

.field public static final a:Ljava/lang/String; = ".itsmbp"

.field public static final a0:Ljava/lang/String; = ".json"

.field public static final b:Ljava/lang/String; = ".mp4|.3gp|.webm"

.field public static final b0:Ljava/lang/String; = ".ttf|.otf"

.field public static final c:Ljava/lang/String; = ".ivo"

.field public static final c0:Ljava/lang/String; = ".impack"

.field public static final d:Ljava/lang/String; = ".imv"

.field public static final d0:Ljava/lang/String; = ".ipm"

.field public static final e:Ljava/lang/String; = ".imvs"

.field public static final e0:Ljava/lang/String; = ".pvsc"

.field public static final f:Ljava/lang/String; = ".rte"

.field public static final f0:Ljava/lang/String; = ".uipvsc"

.field public static final g:Ljava/lang/String; = ".nse"

.field public static final g0:Ljava/lang/String; = ".svsc"

.field public static final h:Ljava/lang/String; = ".nm"

.field public static final h0:Ljava/lang/String; = ".avsc"

.field public static final i:Ljava/lang/String; = ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

.field public static final i0:Ljava/lang/String; = ".mvsc"

.field public static final j:Ljava/lang/String; = ".cbm"

.field public static final j0:Ljava/lang/String; = ".vfxs"

.field public static final k:Ljava/lang/String; = ".cubet"

.field public static final k0:Ljava/lang/String; = ".vgs"

.field public static final l:Ljava/lang/String; = ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm"

.field public static final l0:Ljava/lang/String; = ".ncg"

.field public static final m:Ljava/lang/String; = ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf"

.field public static final m0:Ljava/lang/String; = ".angr"

.field public static final n:Ljava/lang/String; = ".texture"

.field public static final n0:Ljava/lang/String; = ".usy"

.field public static final o:Ljava/lang/String; = ".astc"

.field public static final p:Ljava/lang/String; = ".tif"

.field public static final q:Ljava/lang/String; = ".tga"

.field public static final r:Ljava/lang/String; = ".lua"

.field public static final s:Ljava/lang/String; = ".java|.lua"

.field public static final t:Ljava/lang/String; = ".go"

.field public static final u:Ljava/lang/String; = ".nvmb"

.field public static final v:Ljava/lang/String; = ".mesh"

.field public static final w:Ljava/lang/String; = ".mwf"

.field public static final x:Ljava/lang/String; = ".mtl"

.field public static final y:Ljava/lang/String; = ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

.field public static final z:Ljava/lang/String; = ".world"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "format"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extension",
            "format"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\\|"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    invoke-static {v7, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v6, "\\s+"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_5

    aget-object v3, v1, v0

    invoke-static {p0, v3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    const-string p1, " "

    invoke-virtual {p0, p1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const-string v0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Textura"

    const-string v2, "Texture"

    if-eqz v0, :cond_0

    new-instance p0, Lbd/a;

    invoke-direct {p0, v2, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ".texture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lbd/a;

    invoke-direct {p0, v2, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, ".cbm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lbd/a;

    const-string v0, "Cubemap"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, ".mesh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lbd/a;

    const-string v0, "Mesh"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lbd/a;

    const-string v0, "Zip"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, ".go"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lbd/a;

    const-string v0, "Object"

    const-string v1, "Objeto"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, ".vglsl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "VertexGLSL"

    if-eqz v1, :cond_6

    new-instance p0, Lbd/a;

    invoke-direct {p0, v2, v2}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v1, ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p0, Lbd/a;

    const-string v0, "3D Model"

    const-string v1, "Modelo 3D"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v1, ".world"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p0, Lbd/a;

    const-string v0, "World"

    const-string v1, "Mundo"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v1, ".ar"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p0, Lbd/a;

    const-string v0, "Area"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v1, ".lua"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "Lua"

    return-object p0

    :cond_a
    const-string v1, ".mp4|.3gp|.webm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, "Video"

    return-object p0

    :cond_b
    const-string v1, ".imv"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string p0, "ITsMagic Video"

    return-object p0

    :cond_c
    const-string v1, ".ivo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p0, "Video output"

    return-object p0

    :cond_d
    const-string v1, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance p0, Lbd/a;

    const-string v0, "Sound"

    const-string v1, "Som"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v1, ".sound"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance p0, Lbd/a;

    const-string v0, "Imported Audio"

    const-string v1, "Audio importado"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v1, ".imvs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance p0, Lbd/a;

    const-string v0, "Video Sound"

    const-string v1, "Som de video"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string v1, ".pvsc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string p0, "Post processing shader"

    return-object p0

    :cond_11
    const-string v1, ".uipvsc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "UI Post processing shader"

    return-object p0

    :cond_12
    const-string v1, ".svsc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p0, "Skybox shader"

    return-object p0

    :cond_13
    const-string v1, ".avsc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string p0, "Ambient light shader"

    return-object p0

    :cond_14
    const-string v1, ".mvsc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string p0, "Material shader"

    return-object p0

    :cond_15
    const-string v1, ".vfxs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string p0, "VFX shader"

    return-object p0

    :cond_16
    const-string v1, ".vgs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string p0, "Vulkan Graph"

    return-object p0

    :cond_17
    const-string v1, ".ncg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p0, "NoCode Graph"

    return-object p0

    :cond_18
    const-string v1, ".angr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string p0, "Animation Graph"

    return-object p0

    :cond_19
    const-string v1, ".anim"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance p0, Lbd/a;

    const-string v0, "Animation"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string v1, ".amask"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance p0, Lbd/a;

    const-string v0, "Animation Mask"

    const-string v1, "Mascara de animacao"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string v1, ".mat"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Material"

    if-eqz v1, :cond_1c

    new-instance p0, Lbd/a;

    invoke-direct {p0, v3, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string v1, ".hpop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance p0, Lbd/a;

    const-string v0, "HPOP"

    invoke-direct {p0, v3, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string v1, ".tdata"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance p0, Lbd/a;

    const-string v0, "TerrainData"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string v1, ".mtl"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance p0, Lbd/a;

    const-string v0, "MTL"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string v1, ".bin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance p0, Lbd/a;

    const-string v0, "Binary"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string v1, ".java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance p0, Lbd/a;

    const-string v0, "Java"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string v1, ".class"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance p0, Lbd/a;

    const-string v0, "JavaClass"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string v1, ".skedata"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance p0, Lbd/a;

    const-string v0, "SkeletonData"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string v1, ".jks"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance p0, Lbd/a;

    const-string v0, "jks"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance p0, Lbd/a;

    invoke-direct {p0, v2, v2}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-string v0, ".fglsl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance p0, Lbd/a;

    const-string v0, "FragmentGLSL"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const-string v0, ".gglsl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance p0, Lbd/a;

    const-string v0, "GeometryGLSL"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const-string v0, ".itjar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance p0, Lbd/a;

    const-string v0, "ITJar"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const-string v0, ".jar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance p0, Lbd/a;

    const-string v0, "Jar"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    const-string v0, ".txt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance p0, Lbd/a;

    const-string v0, "TXT"

    invoke-direct {p0, v0, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    const-string v0, ".pdf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance p0, Lbd/a;

    const-string v0, "PDF"

    const-string v1, "PDF"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    const-string v0, ".doc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance p0, Lbd/a;

    const-string v0, "DOC"

    const-string v1, "DOC"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const-string v0, ".docx"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance p0, Lbd/a;

    const-string v0, "DOCX"

    const-string v1, "DOCX"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const-string v0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance p0, Lbd/a;

    const-string v0, "XML"

    const-string v1, "XML"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const-string v0, ".json"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance p0, Lbd/a;

    const-string v0, "JSON"

    const-string v1, "JSON"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    const-string v0, ".ttf|.otf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance p0, Lbd/a;

    const-string v0, "Font"

    const-string v1, "Font"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    const-string v0, "|"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formats"
        }
    .end annotation

    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "|"

    if-ge v3, v0, :cond_0

    aget-object v5, p0, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "||"

    invoke-virtual {v1, p0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    invoke-static {}, LN7/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, LN7/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LN7/f;->e(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static f(Ljd/b;)V
    .locals 51
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljd/b;->f()Ljava/lang/String;

    const-string v1, ".ivo"

    sget-object v2, Ljd/b$a;->VideoOutput:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const-string v1, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    sget-object v2, Ljd/b$a;->Texture:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const-string v1, ".texture"

    sget-object v2, Ljd/b$a;->ImportedTexture:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const-string v1, ".nvmb"

    sget-object v2, Ljd/b$a;->NavMeshBake:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const-string v1, ".rte"

    sget-object v2, Ljd/b$a;->RenderTexture:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const-string v1, ".zip"

    sget-object v2, Ljd/b$a;->Zip:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const-string v1, ".go"

    sget-object v2, Ljd/b$a;->Object:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    const-string v1, ".mesh"

    sget-object v2, Ljd/b$a;->Mesh:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const-string v1, ".xml"

    sget-object v2, Ljd/b$a;->XML:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    const-string v1, ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf"

    sget-object v2, Ljd/b$a;->Model3D:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    const-string v1, ".world"

    sget-object v2, Ljd/b$a;->World:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v1, ".ar"

    sget-object v2, Ljd/b$a;->Area:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    const-string v1, ".lua"

    sget-object v2, Ljd/b$a;->Lua:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    const-string v1, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    sget-object v2, Ljd/b$a;->Sound:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    const-string v1, ".sound"

    sget-object v2, Ljd/b$a;->ImportedAudio:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v17

    const-string v1, ".imvs"

    sget-object v2, Ljd/b$a;->VideoSound:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v18

    const-string v1, ".cbm"

    sget-object v2, Ljd/b$a;->Cubemap:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v19

    const-string v1, ".anim"

    sget-object v2, Ljd/b$a;->Animation:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v20

    const-string v1, ".amask"

    sget-object v2, Ljd/b$a;->AnimationMask:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v21

    const-string v1, ".mat"

    sget-object v2, Ljd/b$a;->Material:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v22

    const-string v1, ".hpop"

    sget-object v2, Ljd/b$a;->HPOP:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v23

    const-string v1, ".tdata"

    sget-object v2, Ljd/b$a;->TerrainData:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v24

    const-string v1, ".mtl"

    sget-object v2, Ljd/b$a;->Mtl:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v25

    const-string v1, ".bin"

    sget-object v2, Ljd/b$a;->Binary:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v26

    const-string v1, ".mp4|.3gp|.webm"

    sget-object v2, Ljd/b$a;->Video:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    const-string v1, ".imv"

    sget-object v2, Ljd/b$a;->ImportedVideo:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    const-string v1, ".usy"

    sget-object v2, Ljd/b$a;->UIStyle:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    const-string v1, ".java"

    sget-object v2, Ljd/b$a;->Java:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v30

    const-string v1, ".class"

    sget-object v2, Ljd/b$a;->JavaClass:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v31

    const-string v1, ".skedata"

    sget-object v2, Ljd/b$a;->SkeletonData:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v32

    const-string v1, ".jks"

    sget-object v2, Ljd/b$a;->JKS:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v33

    const-string v1, ".txt"

    sget-object v2, Ljd/b$a;->TXT:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v34

    const-string v1, ".json"

    sget-object v2, Ljd/b$a;->Json:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v35

    const-string v1, ".vglsl"

    sget-object v2, Ljd/b$a;->VGLSL:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v36

    const-string v1, ".fglsl"

    sget-object v2, Ljd/b$a;->FGLSL:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v37

    const-string v1, ".gglsl"

    sget-object v2, Ljd/b$a;->GGLSL:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v38

    const-string v1, ".itjar"

    sget-object v2, Ljd/b$a;->ITJAR:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v39

    const-string v1, ".jar"

    sget-object v2, Ljd/b$a;->JavaJar:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    const-string v1, ".ttf|.otf"

    sget-object v2, Ljd/b$a;->Font:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v41

    const-string v1, ".angr"

    sget-object v2, Ljd/b$a;->AnimGraph:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v42

    const-string v1, ".pvsc"

    sget-object v2, Ljd/b$a;->PostProcessingShader:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v43

    const-string v1, ".uipvsc"

    sget-object v2, Ljd/b$a;->UIPostProcessingShader:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v44

    const-string v1, ".svsc"

    sget-object v2, Ljd/b$a;->SkyboxShader:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v45

    const-string v1, ".avsc"

    sget-object v2, Ljd/b$a;->AmbientLightShader:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v46

    const-string v1, ".mvsc"

    sget-object v2, Ljd/b$a;->MaterialShader:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v47

    const-string v1, ".vfxs"

    sget-object v2, Ljd/b$a;->VFXShader:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v48

    const-string v1, ".vgs"

    sget-object v2, Ljd/b$a;->VulkanGraph:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v49

    const-string v1, ".ncg"

    sget-object v2, Ljd/b$a;->NoCodeGraph:Ljd/b$a;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v50

    filled-new-array/range {v3 .. v50}, [Landroid/util/Pair;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljd/b$a;

    invoke-virtual {v0, v1}, Ljd/b;->q(Ljd/b$a;)V

    return-void

    :cond_2
    sget-object v1, Ljd/b$a;->Unknown:Ljd/b$a;

    invoke-virtual {v0, v1}, Ljd/b;->q(Ljd/b$a;)V

    return-void
.end method

.method public static g(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "file",
            "context"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, LIc/l;->i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static h(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "file",
            "context",
            "dontCreateIcons"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, LIc/l;->j(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public static i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "file",
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LIc/l;->j(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public static j(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "file",
            "context",
            "dontCreateIcons"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lp8/d;->j()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {v1}, Lp8/d;->i(I)Lw5/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw5/f;->c(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0, p0}, Lw5/f;->a(Ljava/io/File;Landroid/widget/ImageView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Lw5/f;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, LVc/e;->O(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljd/b;

    invoke-direct {v0, p1}, Ljd/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LIc/l;->f(Ljd/b;)V

    invoke-static {p0, v0, p2, p3}, LIc/l;->k(Landroid/widget/ImageView;Ljd/b;Landroid/content/Context;Z)V

    return-void
.end method

.method public static k(Landroid/widget/ImageView;Ljd/b;Landroid/content/Context;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "o",
            "context",
            "dontCreateIcons"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, LIc/l$c;->a:[I

    iget-object v4, v0, Ljd/b;->c:Ljd/b$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, ".texture"

    const-string v5, "/storage/emulated/0/"

    const v6, 0x7f070224

    const v7, 0x7f070257

    const v8, 0x7f070258

    const v9, 0x7f070250

    const v10, 0x7f070262

    const-string v11, ""

    const-string v12, "thumb.png"

    const-string v13, ".meta/"

    const v14, 0x7f0700df

    const-string v15, "/"

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f07013f

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_1
    const v0, 0x7f070213

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_2
    const v0, 0x7f070147

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_3
    const v0, 0x7f070132

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_4
    const v0, 0x7f070256

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_5
    const v0, 0x7f070168

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_6
    const v0, 0x7f07024c

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_7
    const v0, 0x7f07017a

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_8
    invoke-static {v1, v10, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_9
    invoke-static {v1, v9, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_a
    const v0, 0x7f070166

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_b
    const v0, 0x7f070098

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_c
    const v0, 0x7f0701a6

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_d
    const v0, 0x7f07019f

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_e
    const v0, 0x7f07026a

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_f
    const v0, 0x7f070276

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_10
    const v0, 0x7f0701cd

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_11
    invoke-static {v1, v8, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LE7/f;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const v5, 0x7f07022d

    if-eqz v3, :cond_0

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->y()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, v5}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v1, v3, v2, v0, v4}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, LD7/e;->e(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {v1, v5, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_2

    :cond_1
    invoke-static {v1, v5, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_2
    return-void

    :pswitch_13
    invoke-static {v1, v7, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_14
    invoke-static {v1, v7, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_15
    invoke-static {v1, v10, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_16
    const v0, 0x7f0701dd

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_17
    invoke-static {v1, v6, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_18
    invoke-static {v1, v6, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LE7/f;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->y()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, v14}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v1, v3, v2, v0, v4}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, LD7/a;->c(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-static {v1, v14, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_4

    :cond_3
    invoke-static {v1, v14, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_4
    return-void

    :pswitch_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LE7/f;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->y()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, v14}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v1, v3, v2, v0, v4}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void

    :cond_4
    if-nez p3, :cond_6

    :try_start_2
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3, v1}, LD7/c;->c(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    invoke-static {v1, v14, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_6

    :cond_6
    invoke-static {v1, v14, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_6
    return-void

    :pswitch_1b
    const v0, 0x7f07006b

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_1c
    const v0, 0x7f070273

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_1d
    const v0, 0x7f07017b

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_1e
    invoke-static {v1, v9, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_1f
    if-eqz p3, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1, v0}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_7

    :cond_8
    const v0, 0x7f070271

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_7

    :cond_9
    new-instance v3, LIc/l$b;

    invoke-direct {v3, v0, v2, v1}, LIc/l$b;-><init>(Ljd/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-static {v3}, LO9/b;->d(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    :pswitch_20
    invoke-virtual/range {p1 .. p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".ivo"

    invoke-static {v3, v6}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v1, v8, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_8

    :cond_a
    if-eqz p3, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1, v0}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_8

    :cond_d
    new-instance v3, LIc/l$a;

    invoke-direct {v3, v0, v2, v1}, LIc/l$a;-><init>(Ljd/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-static {v3}, LO9/b;->d(Ljava/lang/Runnable;)V

    :goto_8
    return-void

    :pswitch_21
    const v0, 0x7f0701f2

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_22
    const v0, 0x7f070279

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0700e0

    if-nez p3, :cond_e

    iget-object v5, v0, Ljd/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LE7/f;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, v3}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-static {v1, v4, v2, v0}, LVc/e;->H(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;LU/h;)V

    return-void

    :cond_e
    if-nez p3, :cond_f

    :try_start_3
    new-instance v4, Ljava/io/File;

    iget-object v0, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, LD7/b;->c(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    invoke-static {v1, v3, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_a

    :cond_f
    invoke-static {v1, v3, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_a
    return-void

    :pswitch_24
    const v0, 0x7f0701b7

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_25
    const v0, 0x7f070261

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_26
    const v0, 0x7f070223

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_27
    const v0, 0x7f07013b

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_28
    const v0, 0x7f0701b3

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_29
    const v0, 0x7f070069

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_2a
    const v0, 0x7f07019b

    invoke-static {v1, v0, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void

    :pswitch_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_10

    iget-object v4, v0, Ljd/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LE7/f;->a(Ljava/lang/String;)V

    :cond_10
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const v5, 0x7f0700de

    if-eqz v3, :cond_11

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0, v5}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-static {v1, v4, v2, v0}, LVc/e;->H(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;LU/h;)V

    return-void

    :cond_11
    if-nez p3, :cond_12

    :try_start_4
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Ljd/b;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, LD7/f;->c(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    invoke-static {v1, v5, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_c

    :cond_12
    invoke-static {v1, v5, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
