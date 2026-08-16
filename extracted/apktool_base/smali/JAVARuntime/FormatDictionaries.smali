.class public final LJAVARuntime/FormatDictionaries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Files"
    }
.end annotation


# static fields
.field public static final AMBIENT_LIGHT_SHADER:Ljava/lang/String; = ".avsc"

.field public static final ANIMATION:Ljava/lang/String; = ".anim"

.field public static final ANIMATION_MASK:Ljava/lang/String; = ".amask"

.field public static final ANIM_GRAPH:Ljava/lang/String; = ".angr"

.field public static final AREA:Ljava/lang/String; = ".ar"

.field public static final BACKUP:Ljava/lang/String; = ".itsmbp"

.field public static final BINARY:Ljava/lang/String; = ".bin"

.field public static final Brush:Ljava/lang/String; = ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm"

.field public static final CONFIG:Ljava/lang/String; = ".config"

.field public static final CUBEMAP:Ljava/lang/String; = ".cbm"

.field public static final CUBEMAP_BUILDED:Ljava/lang/String; = ".cubet"

.field public static final DOC:Ljava/lang/String; = ".doc"

.field public static final DOCX:Ljava/lang/String; = ".docx"

.field public static final EDITOR_WIREFRAME_MODEL:Ljava/lang/String; = ".mwf"

.field public static final FONT:Ljava/lang/String; = ".ttf|.otf"

.field public static final FRAGMENT_GLSL:Ljava/lang/String; = ".fglsl"

.field public static final GENERATED_NORMAL_MAP:Ljava/lang/String; = ".nm"

.field public static final GEOMETRY_GLSL:Ljava/lang/String; = ".gglsl"

.field public static final HPOP:Ljava/lang/String; = ".hpop"

.field public static final IMPORTED_AUDIO:Ljava/lang/String; = ".sound"

.field public static final IMPORTED_TEXTURE:Ljava/lang/String; = ".texture"

.field public static final IMPORTED_VIDEO:Ljava/lang/String; = ".imv"

.field public static final IMPORTED_VIDEO_SOUND:Ljava/lang/String; = ".imvs"

.field public static final ITJAR:Ljava/lang/String; = ".itjar"

.field public static final JAVA:Ljava/lang/String; = ".java"

.field public static final JAVAC:Ljava/lang/String; = ".javac"

.field public static final JAVACLASS:Ljava/lang/String; = ".class"

.field public static final JAVADEX:Ljava/lang/String; = ".dex"

.field public static final JAVA_JAR:Ljava/lang/String; = ".jar"

.field public static final JKS:Ljava/lang/String; = ".jks"

.field public static final JSON:Ljava/lang/String; = ".json"

.field public static final LUA:Ljava/lang/String; = ".lua"

.field public static final MATERIAL:Ljava/lang/String; = ".mat"

.field public static final MATERIAL_SHADER:Ljava/lang/String; = ".mvsc"

.field public static final MESH:Ljava/lang/String; = ".mesh"

.field public static final MODEL_3D:Ljava/lang/String; = ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf"

.field public static final MTL:Ljava/lang/String; = ".mtl"

.field public static final NAVMESH_BAKE:Ljava/lang/String; = ".nvmb"

.field public static final NOCODE_GRAPH:Ljava/lang/String; = ".ncg"

.field public static final NOISE:Ljava/lang/String; = ".nse"

.field public static final OBJECT:Ljava/lang/String; = ".go"

.field public static final PDF:Ljava/lang/String; = ".pdf"

.field public static final POST_PROCESSING_SHADER:Ljava/lang/String; = ".pvsc"

.field public static final RENDER_TEXTURE:Ljava/lang/String; = ".rte"

.field public static final SCRIPT:Ljava/lang/String; = ".java|.lua"

.field public static final SKELETONDATA:Ljava/lang/String; = ".skedata"

.field public static final SKYBOX_SHADER:Ljava/lang/String; = ".svsc"

.field public static final SOUND:Ljava/lang/String; = ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

.field public static final STORE_PACK_MANIFEST:Ljava/lang/String; = ".ipm"

.field public static final STORE_PAPCK:Ljava/lang/String; = ".impack"

.field public static final TERRAINDATA:Ljava/lang/String; = ".tdata"

.field public static final TEXTURE:Ljava/lang/String; = ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

.field public static final TGA:Ljava/lang/String; = ".tga"

.field public static final TIF:Ljava/lang/String; = ".tif"

.field public static final TXT:Ljava/lang/String; = ".txt"

.field public static final UI_POST_PROCESSING_SHADER:Ljava/lang/String; = ".uipvsc"

.field public static final UI_STYLE:Ljava/lang/String; = ".usy"

.field public static final VERTEX_GLSL:Ljava/lang/String; = ".vglsl"

.field public static final VFX_SHADER:Ljava/lang/String; = ".vfxs"

.field public static final VIDEO:Ljava/lang/String; = ".mp4|.3gp|.webm"

.field public static final VIDEO_OUTPUT:Ljava/lang/String; = ".ivo"

.field public static final VULKAN_GRAPH:Ljava/lang/String; = ".vgs"

.field public static final WORLD:Ljava/lang/String; = ".world"

.field public static final XML:Ljava/lang/String; = ".xml"

.field public static final ZIP:Ljava/lang/String; = ".zip"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static createFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
