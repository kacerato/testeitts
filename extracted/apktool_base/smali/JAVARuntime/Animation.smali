.class public final LJAVARuntime/Animation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Animations"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Animation$EntryType;,
        LJAVARuntime/Animation$TimeLine;,
        LJAVARuntime/Animation$Frame;
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "animation"
        }
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
    iput-object p1, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LJAVARuntime/Animation$EntryType;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Animation$EntryType;->valueOf(Ljava/lang/String;)LJAVARuntime/Animation$EntryType;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/Animation$EntryType;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LJAVARuntime/Animation$EntryType;
    .locals 0

    invoke-static {p0}, LJAVARuntime/Animation;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LJAVARuntime/Animation$EntryType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(LJAVARuntime/Animation$EntryType;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .locals 0

    invoke-static {p0}, LJAVARuntime/Animation;->ENUMCONVERT(LJAVARuntime/Animation$EntryType;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p0

    return-object p0
.end method

.method public static loadFile(LJAVARuntime/AnimationFile;)LJAVARuntime/Animation;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Load an AnimationFile."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Carrega um AnimationFile."
    .end annotation

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

    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LJAVARuntime/Animation;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;)V

    invoke-direct {v1, v2}, LJAVARuntime/Animation;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addTimeLine(LJAVARuntime/Animation$TimeLine;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds a timeline to the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona uma timeline na anima????o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "timeline"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeline"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Timeline can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFps()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the fps of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o fps da anima\u00e7\u00e3o."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->getFps()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getFrameTime()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current frame of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o quadro atual da anima\u00e7\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    return v0
.end method

.method public getLength()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the length of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dura\u00e7\u00e3o da anima\u00e7\u00e3o."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->h()I

    move-result v0

    return v0
.end method

.method public getMask()LJAVARuntime/AnimationMask;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the animation mask."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a mask da animacao."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->n()LJAVARuntime/AnimationMask;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the speed of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade da anima\u00e7\u00e3o."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    return v0
.end method

.method public getTimeLineAt(I)LJAVARuntime/Animation$TimeLine;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the animation timeline at the specified index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a timeline da anima????o do ??ndice especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Animation$TimeLine;

    iget-object v1, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->j(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LJAVARuntime/Animation$TimeLine;-><init>(LJAVARuntime/Animation;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)V

    return-object v0
.end method

.method public getTimeLineCount()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the timeline count of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a quantidade de timelines da anima????o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->k()I

    move-result v0

    return v0
.end method

.method public getWeight()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the speed of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade da anima\u00e7\u00e3o."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getWeight()F

    move-result v0

    return v0
.end method

.method public isLoop()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the animation is looping."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a anima\u00e7\u00e3o est\u00e1 em loop."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->isLoop()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the animation is playing."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a anima\u00e7\u00e3o est\u00e1 sendo reproduzida."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public play()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Plays the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Reproduz a anima\u00e7\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->play()V

    return-void
.end method

.method public playInLoop()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Plays the animation in a loop."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Reproduz a anima\u00e7\u00e3o em loop."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->playInLoop()V

    return-void
.end method

.method public removeTimeLine(LJAVARuntime/Animation$TimeLine;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Removes a timeline from the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Remove uma timeline da anima????o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "timeline"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeline"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Timeline can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFps(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines the fps of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o fps da anima\u00e7\u00e3o."
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->setFps(I)V

    return-void
.end method

.method public setFrameTime(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current frame of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o quadro atual da anima\u00e7\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "frameTime"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    return-void
.end method

.method public setMask(LJAVARuntime/AnimationMask;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines the animation mask."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a mask da animacao."
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/AnimationMask;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->m(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines the speed of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade da anima\u00e7\u00e3o."
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    return-void
.end method

.method public setWeight(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines the speed of the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade da anima\u00e7\u00e3o."
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->setWeight(F)V

    return-void
.end method

.method public sortFrames()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sorts animation frames. Call after modifying an animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Reorganiza os frames da anima\u00e7\u00e3o. Chame ap\u00f3s modificar uma anima\u00e7\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Stops the animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Para a anima\u00e7\u00e3o."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->stop()V

    return-void
.end method

.method public stopLoop()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Stops the looping animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Para a anima\u00e7\u00e3o em loop."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n()V

    return-void
.end method
