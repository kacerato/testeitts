.class public final LJAVARuntime/Animation$TimeLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeLine"
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field final synthetic this$0:LJAVARuntime/Animation;


# direct methods
.method public constructor <init>(LJAVARuntime/Animation;)V
    .locals 0
    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 3
    iput-object p1, p0, LJAVARuntime/Animation$TimeLine;->this$0:LJAVARuntime/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    iput-object p1, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Animation;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "timeline"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "instance"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LJAVARuntime/Animation$TimeLine;->this$0:LJAVARuntime/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    return-void
.end method


# virtual methods
.method public addFrame(LJAVARuntime/Animation$Frame;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds a frame to the timeline."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona um frame na timeline."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "frame"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LJAVARuntime/Animation$TimeLine;->this$0:LJAVARuntime/Animation;

    iget-object p1, p1, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Frame can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getComponentUID()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the timeline component UID."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o UID do componente da timeline."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v0

    invoke-virtual {v0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the timeline entry name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome da entrada da timeline."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAt(I)LJAVARuntime/Animation$Frame;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the frame at the specified index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o frame do ??ndice especificado."
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

    new-instance v0, LJAVARuntime/Animation$Frame;

    iget-object v1, p0, LJAVARuntime/Animation$TimeLine;->this$0:LJAVARuntime/Animation;

    iget-object v2, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v0, v1, p1}, LJAVARuntime/Animation$Frame;-><init>(LJAVARuntime/Animation;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the timeline frame count."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a quantidade de frames da timeline."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the timeline length."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tamanho da timeline."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->h()I

    move-result v0

    return v0
.end method

.method public getObjectUID()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the timeline object UID."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o UID do objeto da timeline."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v0

    invoke-virtual {v0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()LJAVARuntime/Animation$EntryType;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the timeline entry type."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tipo da entrada da timeline."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/Animation;->access$000(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LJAVARuntime/Animation$EntryType;

    move-result-object v0

    return-object v0
.end method

.method public removeFrame(LJAVARuntime/Animation$Frame;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Removes the frame from the timeline."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Remove o frame da timeline."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "frame"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, LJAVARuntime/Animation$Frame;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LJAVARuntime/Animation$TimeLine;->this$0:LJAVARuntime/Animation;

    iget-object p1, p1, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Frame can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEntryName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the timeline entry name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o nome da entrada da timeline."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setType(LJAVARuntime/Animation$EntryType;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the timeline entry type."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o tipo da entrada da timeline."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Animation$TimeLine;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-static {p1}, LJAVARuntime/Animation;->access$100(LJAVARuntime/Animation$EntryType;)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    return-void
.end method
