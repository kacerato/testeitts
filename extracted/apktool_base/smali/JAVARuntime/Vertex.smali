.class public final LJAVARuntime/Vertex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vertex"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Vertex$RayMode;,
        LJAVARuntime/Vertex$PrimitiveExpose;
    }
.end annotation


# static fields
.field public static final CAPSULE:I = 0x8
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final CIRCLE:I = 0x4
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final CONE:I = 0x2
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final CUBE:I = 0x0
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final CYLINDER:I = 0x3
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final HALF_CAPSULE:I = 0x9
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final RENDER_TARGET:I = 0xb
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final SPHERE:I = 0x1
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final SPHERE_LOWPOLY:I = 0xa
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final SQUARE:I = 0x6
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final SQUARE90:I = 0x7
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field

.field public static final TORUS:I = 0x5
    .annotation runtime LJAVARuntime/Vertex$PrimitiveExpose;
    .end annotation
.end field


# instance fields
.field private final transient setJointsBlock:Ljava/lang/Object;

.field private transient setJointsRunnable:LJAVARuntime/Runnable;

.field private final transient setNormalsBlock:Ljava/lang/Object;

.field private transient setNormalsRunnable:LJAVARuntime/Runnable;

.field private final transient setTrianglesBlock:Ljava/lang/Object;

.field private transient setTrianglesRunnable:LJAVARuntime/Runnable;

.field private final transient setUVsBlock:Ljava/lang/Object;

.field private transient setUVsRunnable:LJAVARuntime/Runnable;

.field private transient setVerticesRunnable:LJAVARuntime/Runnable;

.field private final transient setVertiesBlock:Ljava/lang/Object;

.field private final transient setWeightsBlock:Ljava/lang/Object;

.field private transient setWeightsRunnable:LJAVARuntime/Runnable;

.field public transient vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setVertiesBlock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setTrianglesBlock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setNormalsBlock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setUVsBlock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setJointsBlock:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setWeightsBlock:Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 27
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v1}, LFb/c;->d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/Vertex;->setVertiesBlock:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/Vertex;->setTrianglesBlock:Ljava/lang/Object;

    .line 14
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/Vertex;->setNormalsBlock:Ljava/lang/Object;

    .line 15
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/Vertex;->setUVsBlock:Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/Vertex;->setJointsBlock:Ljava/lang/Object;

    .line 17
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/Vertex;->setWeightsBlock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setVertiesBlock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setTrianglesBlock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setNormalsBlock:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setUVsBlock:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setJointsBlock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vertex;->setWeightsBlock:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public static synthetic access$002(LJAVARuntime/Vertex;LJAVARuntime/Runnable;)LJAVARuntime/Runnable;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    return-object p1
.end method

.method public static synthetic access$102(LJAVARuntime/Vertex;LJAVARuntime/Runnable;)LJAVARuntime/Runnable;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    return-object p1
.end method

.method public static synthetic access$202(LJAVARuntime/Vertex;LJAVARuntime/Runnable;)LJAVARuntime/Runnable;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    return-object p1
.end method

.method public static synthetic access$302(LJAVARuntime/Vertex;LJAVARuntime/Runnable;)LJAVARuntime/Runnable;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    return-object p1
.end method

.method public static synthetic access$402(LJAVARuntime/Vertex;LJAVARuntime/Runnable;)LJAVARuntime/Runnable;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    return-object p1
.end method

.method public static synthetic access$502(LJAVARuntime/Vertex;LJAVARuntime/Runnable;)LJAVARuntime/Runnable;
    .locals 0

    iput-object p1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    return-object p1
.end method

.method public static loadFile(LJAVARuntime/File;)LJAVARuntime/Vertex;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 4
    const-string v0, "Loading vertex from project files without using a concrete TextureFile created by itsmagic properties panel, will broken in exported APK!"

    .line 5
    invoke-static {v0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Make sure to use this method for loading game data files that are present in device storage, not in PROJECT"

    .line 6
    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, LJ4/d;->Y1([Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, LJAVARuntime/Vertex$27;

    invoke-direct {p0}, LJAVARuntime/Vertex$27;-><init>()V

    invoke-static {v0, p0}, LFb/c;->l(Ljava/io/File;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadFile(LJAVARuntime/VertexFile;)LJAVARuntime/Vertex;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->A1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "VertexFile can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadFile(Ljava/io/InputStream;)LJAVARuntime/Vertex;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 11
    const-string v0, "Loading vertex from project files without using a concrete TextureFile created by itsmagic properties panel, will broken in exported APK!"

    .line 12
    invoke-static {v0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Make sure to use this method for loading game data files that are present in device storage, not in PROJECT"

    .line 13
    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, LJ4/d;->Y1([Ljava/lang/String;)V

    .line 15
    new-instance v0, LJAVARuntime/Vertex$28;

    invoke-direct {v0}, LJAVARuntime/Vertex$28;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, LFb/c;->q(Ljava/io/InputStream;LFb/a;LFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "inputStream can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadPrimitive(I)LJAVARuntime/Vertex;
    .locals 11
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "primitive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitive"
        }
    .end annotation

    const-class v0, LJAVARuntime/Vertex;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_0
    const-class v7, LJAVARuntime/Vertex$PrimitiveExpose;

    if-ge v5, v2, :cond_1

    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_0

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p0, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    move-result-object v7

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v4, v1, :cond_4

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_3

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "(Vertex."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid primitive, available options: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-void
.end method

.method public applyAsync()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G()V

    return-void
.end method

.method public getBoundingBox()LJAVARuntime/AABB;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Z()LJAVARuntime/AABB;

    move-result-object v0

    return-object v0
.end method

.method public getJoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getJointsArray()[F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)[F

    move-result-object v0

    return-object v0
.end method

.method public getJointsBuffer()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toJAVARuntime()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNormals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNormalsArray()[F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)[F

    move-result-object v0

    return-object v0
.end method

.method public getNormalsBuffer()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toJAVARuntime()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTriangles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->m(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrianglesArray()[I
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->f(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTrianglesBuffer()LJAVARuntime/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->toJAVARuntime()LJAVARuntime/NativeIntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getUVs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Vector2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->o(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUVsArray()[F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->n(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)[F

    move-result-object v0

    return-object v0
.end method

.method public getUVsBuffer()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toJAVARuntime()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getVertices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->r(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerticesArray()[F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->q(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)[F

    move-result-object v0

    return-object v0
.end method

.method public getVerticesBuffer()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toJAVARuntime()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getWeights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->t(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWeightsArray()[F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, LIb/h;->s(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)[F

    move-result-object v0

    return-object v0
.end method

.method public getWeightsBuffer()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toJAVARuntime()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public recalculateBoundingBox()LJAVARuntime/AABB;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->H1()V

    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Z()LJAVARuntime/AABB;

    move-result-object v0

    return-object v0
.end method

.method public setJoints(LJAVARuntime/NativeFloatBuffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "joints"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, LJAVARuntime/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 22
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setJointsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 26
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$19;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$19;-><init>(LJAVARuntime/Vertex;LJAVARuntime/NativeFloatBuffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    .line 29
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 30
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid joints buffer, the last vertice is not complete, every vertice should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJoints(LJAVARuntime/Vector3Buffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 32
    iget-object v0, p1, LJAVARuntime/Vector3Buffer;->buffer:Lvc/q;

    invoke-virtual {v0}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid joints buffer, the last vertice is not complete, every vertice should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->getFloatBuffer()LJAVARuntime/NativeFloatBuffer;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_2

    .line 36
    :cond_2
    iget-object v0, p0, LJAVARuntime/Vertex;->setJointsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 40
    :cond_3
    :goto_1
    new-instance v1, LJAVARuntime/Vertex$20;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$20;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3Buffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    .line 41
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 42
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setJoints(Ljava/util/List;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->w(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setJointsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$17;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$17;-><init>(LJAVARuntime/Vertex;Ljava/util/List;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    .line 8
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setJoints([F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 10
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->v([FLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setJointsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$18;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$18;-><init>(LJAVARuntime/Vertex;[F)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setJointsRunnable:LJAVARuntime/Runnable;

    .line 18
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 19
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid joints array, the last vertice is not complete, every vertice should add 3 elements to array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNormals(LJAVARuntime/NativeFloatBuffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normals"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, LJAVARuntime/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 22
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setNormalsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 26
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$11;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$11;-><init>(LJAVARuntime/Vertex;LJAVARuntime/NativeFloatBuffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    .line 29
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 30
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid normals buffer, the last normal is not complete, every normal should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNormals(LJAVARuntime/Vector3Buffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 32
    iget-object v0, p1, LJAVARuntime/Vector3Buffer;->buffer:Lvc/q;

    invoke-virtual {v0}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid normals buffer, the last normal is not complete, every normal should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->getFloatBuffer()LJAVARuntime/NativeFloatBuffer;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_2

    .line 36
    :cond_2
    iget-object v0, p0, LJAVARuntime/Vertex;->setNormalsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 40
    :cond_3
    :goto_1
    new-instance v1, LJAVARuntime/Vertex$12;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$12;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3Buffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    .line 41
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 42
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNormals(Ljava/util/List;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->y(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setNormalsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$9;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$9;-><init>(LJAVARuntime/Vertex;Ljava/util/List;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    .line 8
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNormals([F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 10
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->x([FLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setNormalsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$10;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$10;-><init>(LJAVARuntime/Vertex;[F)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setNormalsRunnable:LJAVARuntime/Runnable;

    .line 18
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 19
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid normals array, the last normal is not complete, every normal should add 3 elements to array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTriangles(LJAVARuntime/NativeIntBuffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "triangles"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, LJAVARuntime/NativeIntBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 22
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/NativeIntBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setTrianglesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 26
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$7;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$7;-><init>(LJAVARuntime/Vertex;LJAVARuntime/NativeIntBuffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    .line 29
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 30
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid triangles buffer, the last triangle is not complete, every triangle should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTriangles(LJAVARuntime/Point3Buffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 32
    iget-object v0, p1, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    iget-object v0, v0, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LJAVARuntime/Point3Buffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid triangles buffer, the last triangle is not complete, every triangle should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/Point3Buffer;->buffer:Lvc/n;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j2(Lvc/n;)V

    goto :goto_2

    .line 36
    :cond_2
    iget-object v0, p0, LJAVARuntime/Vertex;->setTrianglesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 40
    :cond_3
    :goto_1
    new-instance v1, LJAVARuntime/Vertex$8;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$8;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Point3Buffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    .line 41
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 42
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTriangles(Ljava/util/List;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->B(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setTrianglesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$5;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$5;-><init>(LJAVARuntime/Vertex;Ljava/util/List;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    .line 8
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTriangles([I)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 10
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->A([ILcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setTrianglesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$6;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$6;-><init>(LJAVARuntime/Vertex;[I)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setTrianglesRunnable:LJAVARuntime/Runnable;

    .line 18
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 19
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid triangles array, the last triangle is not complete, every triangle should add 3 elements to array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUVs(LJAVARuntime/NativeFloatBuffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uvs"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, LJAVARuntime/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 22
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setUVsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 26
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$15;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$15;-><init>(LJAVARuntime/Vertex;LJAVARuntime/NativeFloatBuffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    .line 29
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 30
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid UVs buffer, the last UV vector2 is not complete, every UV should add 2 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUVs(LJAVARuntime/Vector2Buffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 32
    iget-object v0, p1, LJAVARuntime/Vector2Buffer;->buffer:Lvc/p;

    invoke-virtual {v0}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LJAVARuntime/Vector2Buffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid UVs buffer, the last UV vector2 is not complete, every UV should add 2 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, LJAVARuntime/Vector2Buffer;->getFloatBuffer()LJAVARuntime/NativeFloatBuffer;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_2

    .line 36
    :cond_2
    iget-object v0, p0, LJAVARuntime/Vertex;->setUVsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 40
    :cond_3
    :goto_1
    new-instance v1, LJAVARuntime/Vertex$16;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$16;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Vector2Buffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    .line 41
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 42
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUVs(Ljava/util/List;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/Vector2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->G(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setUVsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$13;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$13;-><init>(LJAVARuntime/Vertex;Ljava/util/List;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    .line 8
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUVs([F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 10
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->F([FLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setUVsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$14;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$14;-><init>(LJAVARuntime/Vertex;[F)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setUVsRunnable:LJAVARuntime/Runnable;

    .line 18
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 19
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid UVs array, the last UV vector2 is not complete, every UV should add 2 elements to array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVertices(LJAVARuntime/NativeFloatBuffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertices"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, LJAVARuntime/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 22
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setVertiesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 26
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$3;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$3;-><init>(LJAVARuntime/Vertex;LJAVARuntime/NativeFloatBuffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    .line 29
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 30
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid vertices buffer, the last vertice is not complete, every vertice should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVertices(LJAVARuntime/Vector3Buffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 32
    iget-object v0, p1, LJAVARuntime/Vector3Buffer;->buffer:Lvc/q;

    invoke-virtual {v0}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid vertices buffer, the last vertice is not complete, every vertice should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->getFloatBuffer()LJAVARuntime/NativeFloatBuffer;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_2

    .line 36
    :cond_2
    iget-object v0, p0, LJAVARuntime/Vertex;->setVertiesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 40
    :cond_3
    :goto_1
    new-instance v1, LJAVARuntime/Vertex$4;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$4;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3Buffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    .line 41
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 42
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVertices(Ljava/util/List;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->J(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setVertiesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$1;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$1;-><init>(LJAVARuntime/Vertex;Ljava/util/List;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    .line 8
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVertices([F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 10
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->I([FLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setVertiesBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$2;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$2;-><init>(LJAVARuntime/Vertex;[F)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setVerticesRunnable:LJAVARuntime/Runnable;

    .line 18
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 19
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid vertices array, the last vertice is not complete, every vertice should add 3 elements to array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWeights(LJAVARuntime/NativeFloatBuffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weights"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, LJAVARuntime/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 22
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setWeightsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 26
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$23;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$23;-><init>(LJAVARuntime/Vertex;LJAVARuntime/NativeFloatBuffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    .line 29
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 30
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid weights buffer, the last vertice is not complete, every vertice should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWeights(LJAVARuntime/Vector3Buffer;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 32
    iget-object v0, p1, LJAVARuntime/Vector3Buffer;->buffer:Lvc/q;

    invoke-virtual {v0}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid weights buffer, the last vertice is not complete, every vertice should add 3 elements to buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, LJAVARuntime/Vector3Buffer;->getFloatBuffer()LJAVARuntime/NativeFloatBuffer;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_2

    .line 36
    :cond_2
    iget-object v0, p0, LJAVARuntime/Vertex;->setWeightsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 40
    :cond_3
    :goto_1
    new-instance v1, LJAVARuntime/Vertex$24;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$24;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3Buffer;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    .line 41
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 42
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWeights(Ljava/util/List;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/Vector3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->N(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setWeightsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$21;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$21;-><init>(LJAVARuntime/Vertex;Ljava/util/List;)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    .line 8
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWeights([F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 10
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, v0}, LIb/h;->M([FLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vertex;->setWeightsBlock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v1}, LK8/a;->o(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    new-instance v1, LJAVARuntime/Vertex$22;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Vertex$22;-><init>(LJAVARuntime/Vertex;[F)V

    iput-object v1, p0, LJAVARuntime/Vertex;->setWeightsRunnable:LJAVARuntime/Runnable;

    .line 18
    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    .line 19
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid weights array, the last vertice is not complete, every vertice should add 3 elements to array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public traceLaser(LJAVARuntime/Transform;LJAVARuntime/Ray;)LJAVARuntime/LaserHit;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform",
            "ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray"
        }
    .end annotation

    .line 1
    sget-object v0, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p0, p1, p2, v0}, LJAVARuntime/Vertex;->traceLaser(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/Vertex$RayMode;)LJAVARuntime/LaserHit;

    move-result-object p1

    return-object p1
.end method

.method public traceLaser(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/Vertex$RayMode;)LJAVARuntime/LaserHit;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform",
            "ray",
            "rayMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray",
            "rayMode"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p2, LJAVARuntime/Ray;->ray:Laa/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Laa/a;->E()LJAVARuntime/LaserHit;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public traceLaser(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/Vertex$RayMode;Z)LJAVARuntime/LaserHit;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform",
            "ray",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p1, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p2, LJAVARuntime/Ray;->ray:Laa/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Laa/a;->E()LJAVARuntime/LaserHit;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public traceLaserAsync(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/AsyncLaserListener;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform",
            "ray",
            "asyncLaserListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray",
            "asyncLaserListener"
        }
    .end annotation

    .line 1
    sget-object v0, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p0, p1, p2, p3, v0}, LJAVARuntime/Vertex;->traceLaserAsync(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/AsyncLaserListener;LJAVARuntime/Vertex$RayMode;)V

    return-void
.end method

.method public traceLaserAsync(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/AsyncLaserListener;LJAVARuntime/Vertex$RayMode;)V
    .locals 8
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform",
            "ray",
            "asyncLaserListener",
            "rayMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray",
            "asyncLaserListener",
            "rayMode"
        }
    .end annotation

    .line 2
    new-instance v0, LJAVARuntime/AsyncTask;

    new-instance v7, LJAVARuntime/Vertex$25;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Vertex$25;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/Vertex$RayMode;LJAVARuntime/AsyncLaserListener;)V

    invoke-direct {v0, v7}, LJAVARuntime/AsyncTask;-><init>(LJAVARuntime/AsyncRunnable;)V

    return-void
.end method

.method public traceLaserAsync(LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/AsyncLaserListener;LJAVARuntime/Vertex$RayMode;Z)V
    .locals 9
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "transform",
            "ray",
            "asyncLaserListener",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray",
            "asyncLaserListener",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    .line 3
    new-instance v0, LJAVARuntime/AsyncTask;

    new-instance v8, LJAVARuntime/Vertex$26;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, LJAVARuntime/Vertex$26;-><init>(LJAVARuntime/Vertex;LJAVARuntime/Transform;LJAVARuntime/Ray;LJAVARuntime/Vertex$RayMode;ZLJAVARuntime/AsyncLaserListener;)V

    invoke-direct {v0, v8}, LJAVARuntime/AsyncTask;-><init>(LJAVARuntime/AsyncRunnable;)V

    return-void
.end method
