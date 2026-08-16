.class public final LJAVARuntime/Terminal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(B)V
    .locals 0
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
    invoke-static {p0}, LJ4/d;->f2(B)V

    return-void
.end method

.method public static log(C)V
    .locals 0
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
    invoke-static {p0}, LJ4/d;->g2(C)V

    return-void
.end method

.method public static log(D)V
    .locals 0
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
    invoke-static {p0, p1}, LJ4/d;->h2(D)V

    return-void
.end method

.method public static log(F)V
    .locals 0
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
    invoke-static {p0}, LJ4/d;->i2(F)V

    return-void
.end method

.method public static log(I)V
    .locals 0
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
    invoke-static {p0}, LJ4/d;->j2(I)V

    return-void
.end method

.method public static log(J)V
    .locals 0
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
    invoke-static {p0, p1}, LJ4/d;->k2(J)V

    return-void
.end method

.method public static log(LJAVARuntime/Log;)V
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
    iget-object p0, p0, LJAVARuntime/Log;->log:LJ4/b;

    invoke-static {p0}, LJ4/d;->T1(LJ4/b;)V

    return-void
.end method

.method public static log(LJAVARuntime/Quaternion;)V
    .locals 0
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

    if-nez p0, :cond_0

    .line 4
    const-string p0, "null"

    goto :goto_0

    :cond_0
    iget-object p0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, LJ4/d;->l2(Ljava/lang/String;)V

    return-void
.end method

.method public static log(LJAVARuntime/Vector2;)V
    .locals 0
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

    if-nez p0, :cond_0

    .line 5
    const-string p0, "null"

    goto :goto_0

    :cond_0
    iget-object p0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, LJ4/d;->l2(Ljava/lang/String;)V

    return-void
.end method

.method public static log(LJAVARuntime/Vector3;)V
    .locals 0
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

    if-nez p0, :cond_0

    .line 3
    const-string p0, "null"

    goto :goto_0

    :cond_0
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, LJ4/d;->l2(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/Error;)V
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
    invoke-static {p0}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static log(Ljava/lang/Exception;)V
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
    invoke-static {p0}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 0
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
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/d;->l2(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
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
    invoke-static {p0}, LJ4/d;->l2(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
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
    invoke-static {p0}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static log(Ljava/util/List;)V
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
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static log([Ljava/lang/String;)V
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
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 17
    aget-object v1, p0, v0

    invoke-static {v1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
