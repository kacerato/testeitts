.class public abstract LJAVARuntime/TerminalCLIExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instance:Lp8/f;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lp8/f;)V
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
    invoke-virtual {p0, p1}, LJAVARuntime/TerminalCLIExtension;->setInstance(Lp8/f;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0}, LJ4/e;->a()V

    return-void
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "Custom command"

    return-object v0
.end method

.method public log(B)V
    .locals 1
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

    .line 11
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0, p1}, LJ4/e;->d(B)V

    return-void
.end method

.method public log(C)V
    .locals 1
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

    .line 10
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0, p1}, LJ4/e;->e(C)V

    return-void
.end method

.method public log(D)V
    .locals 1
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

    .line 9
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0, p1, p2}, LJ4/e;->f(D)V

    return-void
.end method

.method public log(F)V
    .locals 1
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

    .line 6
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0, p1}, LJ4/e;->g(F)V

    return-void
.end method

.method public log(I)V
    .locals 1
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
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0, p1}, LJ4/e;->h(I)V

    return-void
.end method

.method public log(J)V
    .locals 1
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

    .line 8
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0, p1, p2}, LJ4/e;->i(J)V

    return-void
.end method

.method public log(LJAVARuntime/Log;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "log"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 15
    iget-object p1, p1, LJAVARuntime/Log;->log:LJ4/b;

    invoke-static {p1}, LJ4/d;->T1(LJ4/b;)V

    return-void
.end method

.method public log(LJAVARuntime/Quaternion;)V
    .locals 1
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

    .line 4
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, LJ4/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public log(LJAVARuntime/Vector2;)V
    .locals 1
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

    .line 5
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, LJ4/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public log(LJAVARuntime/Vector3;)V
    .locals 1
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

    .line 3
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, LJ4/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Error;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 12
    invoke-static {p1}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(Ljava/lang/Exception;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 13
    invoke-static {p1}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(Ljava/lang/Object;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LJ4/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    invoke-virtual {v0, p1}, LJ4/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 14
    invoke-static {p1}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(Ljava/util/List;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, LJAVARuntime/TerminalCLIExtension;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public log([Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 17
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, LJAVARuntime/TerminalCLIExtension;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract run(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation
.end method

.method public setInstance(Lp8/f;)V
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

    iput-object p1, p0, LJAVARuntime/TerminalCLIExtension;->instance:Lp8/f;

    return-void
.end method

.method public abstract start([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation
.end method
