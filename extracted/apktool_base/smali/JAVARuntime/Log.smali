.class public final LJAVARuntime/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation


# instance fields
.field public transient log:LJ4/b;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, LJ4/b;

    invoke-direct {v0}, LJ4/b;-><init>()V

    iput-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    return-void
.end method

.method public constructor <init>(LJ4/b;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Log;->log:LJ4/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, LJ4/b;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, v1}, LJ4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "title",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "message"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, LJ4/b;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2, v1}, LJ4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "tag",
            "title",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "title",
            "message"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 15
    new-instance v0, LJ4/b;

    const-string v1, ""

    invoke-direct {v0, p1, p2, p3, v1}, LJ4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/Color;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "tag",
            "title",
            "message",
            "color"
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
            "tag",
            "title",
            "message",
            "color"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 18
    new-instance v6, LJ4/b;

    const-string v4, ""

    iget-object v5, p4, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, LJ4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iput-object v6, p0, LJAVARuntime/Log;->log:LJ4/b;

    return-void
.end method


# virtual methods
.method public getColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v0, v0, LJ4/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v0, v0, LJ4/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v0, v0, LJ4/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget v0, v0, LJ4/b;->e:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v0, v0, LJ4/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the title of the log."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o t\u00edtulo do log."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v0, v0, LJ4/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTittle()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "Incorrect grammar or spelling"
        }
    .end annotation

    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the title of the log."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o t\u00edtulo do log."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/Log;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
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

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object p1, v0, LJ4/b;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
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

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iput-object p1, v0, LJ4/b;->d:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
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

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v1, v0, LJ4/b;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, v0, LJ4/b;->c:Ljava/lang/String;

    :cond_0
    iput-object p1, v0, LJ4/b;->c:Ljava/lang/String;

    return-void
.end method

.method public setQuantity(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
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

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iput p1, v0, LJ4/b;->e:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
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

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v1, v0, LJ4/b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, v0, LJ4/b;->a:Ljava/lang/String;

    :cond_0
    iput-object p1, v0, LJ4/b;->a:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the title of the log."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o t\u00edtulo do log."
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

    iget-object v0, p0, LJAVARuntime/Log;->log:LJ4/b;

    iget-object v1, v0, LJ4/b;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, v0, LJ4/b;->b:Ljava/lang/String;

    :cond_0
    iput-object p1, v0, LJ4/b;->b:Ljava/lang/String;

    return-void
.end method

.method public setTittle(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "Incorrect grammar or spelling"
        }
    .end annotation

    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the title of the log."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o t\u00edtulo do log."
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/Log;->setTitle(Ljava/lang/String;)V

    return-void
.end method
