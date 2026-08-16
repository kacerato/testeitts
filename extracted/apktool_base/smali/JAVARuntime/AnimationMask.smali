.class public final LJAVARuntime/AnimationMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Animations"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;-><init>()V

    iput-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

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

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    return-void
.end method

.method public static loadFile(LJAVARuntime/AnimationMaskFile;)LJAVARuntime/AnimationMask;
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
            "file"
        }
    .end annotation

    if-eqz p0, :cond_2

    iget-object v0, p0, LJAVARuntime/AnimationMaskFile;->cache:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->n()LJAVARuntime/AnimationMask;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, LJAVARuntime/AnimationMaskFile;->cache:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->n()LJAVARuntime/AnimationMask;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "AnimationMaskFile can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->a()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "objectID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectID"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "objectID can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromJson(Ljava/lang/String;)LJAVARuntime/AnimationMask;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->n()LJAVARuntime/AnimationMask;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "objectID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectID"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->g(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "objectID can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "objectID",
            "weight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectID",
            "weight"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->l(Ljava/lang/String;F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "objectID can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "objectID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectID"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->j(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "objectID can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->m()I

    move-result v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
