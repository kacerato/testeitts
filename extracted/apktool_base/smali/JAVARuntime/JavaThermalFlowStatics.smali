.class public final LJAVARuntime/JavaThermalFlowStatics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "ThermalFlow"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static canCast(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "type"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static concatenate(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate(Ljava/lang/String;D)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate(Ljava/lang/String;F)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate(Ljava/lang/String;S)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static div(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    div-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static div(CD)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-double v0, p0

    div-double/2addr v0, p1

    double-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static div(CF)C
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static div(CI)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_0
    div-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static div(CJ)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p0

    .line 95
    div-long/2addr v0, p1

    long-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static div(CLjava/lang/String;)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 94
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    div-int/2addr p0, p1

    int-to-char p0, p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static div(CS)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_0
    div-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static div(DC)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    int-to-double v0, p2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static div(DD)D
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static div(DF)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    float-to-double v0, p2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static div(DI)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    int-to-double v0, p2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static div(DJ)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    long-to-double p2, p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static div(DLjava/lang/String;)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    .line 33
    :cond_1
    invoke-static {p2}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr p0, v0

    :cond_2
    :goto_0
    return-wide p0
.end method

.method public static div(DS)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    int-to-double v0, p2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static div(FC)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static div(FD)F
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    float-to-double v0, p0

    div-double/2addr v0, p1

    double-to-float p0, v0

    return p0
.end method

.method public static div(FF)F
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    div-float/2addr p0, p1

    return p0
.end method

.method public static div(FI)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 12
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static div(FJ)F
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 13
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    long-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static div(FLjava/lang/String;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 23
    :cond_1
    invoke-static {p1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result p1

    div-float/2addr p0, p1

    :cond_2
    :goto_0
    return p0
.end method

.method public static div(FS)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 14
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static div(IC)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_0
    div-int/2addr p0, p1

    return p0
.end method

.method public static div(ID)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 15
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-double v0, p0

    div-double/2addr v0, p1

    double-to-int p0, v0

    return p0
.end method

.method public static div(IF)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static div(II)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 24
    :cond_0
    div-int/2addr p0, p1

    return p0
.end method

.method public static div(IJ)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p0

    .line 28
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method public static div(ILjava/lang/String;)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_1
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    div-int/2addr p0, p1

    :cond_2
    :goto_0
    return p0
.end method

.method public static div(IS)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_0
    div-int/2addr p0, p1

    return p0
.end method

.method public static div(JC)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    int-to-long v0, p2

    .line 40
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static div(JD)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 17
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    long-to-double p0, p0

    div-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static div(JF)J
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    long-to-float p0, p0

    div-float/2addr p0, p2

    float-to-long p0, p0

    return-wide p0
.end method

.method public static div(JI)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    int-to-long v0, p2

    .line 34
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static div(JJ)J
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 38
    :cond_0
    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static div(JLjava/lang/String;)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    .line 37
    :cond_1
    invoke-static {p2}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    div-long/2addr p0, v0

    :cond_2
    :goto_0
    return-wide p0
.end method

.method public static div(JS)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    int-to-long v0, p2

    .line 39
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static div(LJAVARuntime/Color;LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->div(LJAVARuntime/Color;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Color;LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->div(LJAVARuntime/Vector2;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Color;LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->div(LJAVARuntime/Vector3;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point2;D)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 112
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->div(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point2;F)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 110
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->div(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point2;I)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->div(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point2;J)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 113
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->div(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point2;LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->div(LJAVARuntime/Point2;)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point2;LJAVARuntime/Point3;)LJAVARuntime/Point2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, LJAVARuntime/Point3;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point3;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Point2;->div(II)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point3;D)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 118
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->div(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point3;F)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 116
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->div(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point3;I)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->div(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point3;J)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 119
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->div(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point3;LJAVARuntime/Point2;)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, LJAVARuntime/Point2;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point2;->getY()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, LJAVARuntime/Point3;->div(III)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Point3;LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->div(LJAVARuntime/Point3;)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector2;D)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 100
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->div(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector2;F)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->div(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector2;I)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 99
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->div(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector2;J)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 101
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->div(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector2;LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->div(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector2;LJAVARuntime/Vector3;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->div(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector2;

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector3;D)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 106
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->div(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector3;F)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->div(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector3;I)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 105
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->div(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector3;J)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 107
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->div(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector3;LJAVARuntime/Vector2;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->div(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector3;

    return-object p0
.end method

.method public static div(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->div(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static div(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 79
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long p0, p1

    div-long/2addr v0, p0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static div(Ljava/lang/String;D)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 62
    const-string p0, "0"

    return-object p0

    .line 63
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    double-to-long p0, p1

    div-long/2addr v0, p0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :cond_2
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, p1

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static div(Ljava/lang/String;F)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 50
    const-string p0, "0"

    return-object p0

    .line 51
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    float-to-long p0, p1

    div-long/2addr v0, p0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    float-to-double p0, p1

    div-double/2addr v0, p0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static div(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 56
    const-string p0, "0"

    return-object p0

    .line 57
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long p0, p1

    div-long/2addr v0, p0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_2
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static div(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 68
    const-string p0, "0"

    return-object p0

    .line 69
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    div-long/2addr v0, p1

    .line 71
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_2
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double p0, p1

    div-double/2addr v0, p0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static div(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 41
    const-string v0, "0"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    if-eqz p1, :cond_7

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 44
    :cond_3
    invoke-static {p1}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    return-object v0

    .line 45
    :cond_4
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide p0

    div-long/2addr p0, v1

    .line 46
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_5
    :goto_0
    invoke-static {p1}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_6

    return-object v0

    .line 48
    :cond_6
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide p0

    div-double/2addr p0, v1

    .line 49
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static div(Ljava/lang/String;S)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 74
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long p0, p1

    div-long/2addr v0, p0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static div(SC)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_0
    div-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static div(SD)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 19
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-double v0, p0

    div-double/2addr v0, p1

    double-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static div(SF)S
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static div(SI)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    div-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static div(SJ)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p0

    .line 88
    div-long/2addr v0, p1

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static div(SLjava/lang/String;)S
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 87
    :cond_1
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    div-int/2addr p0, p1

    int-to-short p0, p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static div(SS)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    div-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static divChar(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    div-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static divDouble(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static divFloat(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    div-float/2addr p0, p1

    return p0
.end method

.method public static divInt(II)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    div-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public static divLong(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static divShort(SS)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    div-int/2addr p0, p1

    int-to-double p0, p0

    return-wide p0
.end method

.method public static equals(BB)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(CC)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(DD)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    cmpl-double p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(FD)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    float-to-double v0, p0

    cmpl-double p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(FF)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(FI)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(II)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(IJ)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(IS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(JJ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(SS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(ZZ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 12
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static extractClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static greaterEqualsThan(BB)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(CC)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(DD)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    cmpl-double p0, p0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(FD)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    float-to-double v0, p0

    cmpl-double p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(FF)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(FI)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(II)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(IJ)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(IS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(JJ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    cmp-long p0, p0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterEqualsThan(SS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(BB)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(CC)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(DD)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    cmpl-double p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(FD)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    float-to-double v0, p0

    cmpl-double p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(FF)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(FI)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(II)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(IJ)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(IS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(JJ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static greaterThan(SS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(BB)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(CC)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(DD)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(FD)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    float-to-double v0, p0

    cmpg-double p0, v0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(FF)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(FI)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(II)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(IJ)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(IS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(JJ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    cmp-long p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessEqualThan(SS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(BB)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(CC)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(DD)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(FD)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    float-to-double v0, p0

    cmpg-double p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(FF)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(FI)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(II)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(IJ)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(IS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(JJ)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lessThan(SS)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mul(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    mul-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static mul(CD)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    int-to-double v0, p0

    mul-double/2addr v0, p1

    double-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static mul(CF)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static mul(CI)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    mul-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static mul(CJ)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    int-to-long v0, p0

    mul-long/2addr v0, p1

    long-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static mul(CLjava/lang/String;)C
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    mul-int/2addr p0, p1

    int-to-char p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static mul(CS)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    mul-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static mul(DC)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    int-to-double v0, p2

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static mul(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static mul(DF)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    float-to-double v0, p2

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static mul(DI)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    int-to-double v0, p2

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static mul(DJ)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    long-to-double p2, p2

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static mul(DLjava/lang/String;)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    mul-double/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static mul(DS)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 12
    int-to-double v0, p2

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static mul(FC)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 13
    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public static mul(FD)F
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 14
    float-to-double v0, p0

    mul-double/2addr v0, p1

    double-to-float p0, v0

    return p0
.end method

.method public static mul(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 15
    mul-float/2addr p0, p1

    return p0
.end method

.method public static mul(FI)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 16
    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public static mul(FJ)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 17
    long-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public static mul(FLjava/lang/String;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result p1

    mul-float/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static mul(FS)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 18
    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public static mul(IC)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 19
    mul-int/2addr p0, p1

    return p0
.end method

.method public static mul(ID)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 20
    int-to-double v0, p0

    mul-double/2addr v0, p1

    double-to-int p0, v0

    return p0
.end method

.method public static mul(IF)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 21
    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static mul(II)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 22
    mul-int/2addr p0, p1

    return p0
.end method

.method public static mul(IJ)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 23
    int-to-long v0, p0

    mul-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method public static mul(ILjava/lang/String;)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    mul-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static mul(IS)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 24
    mul-int/2addr p0, p1

    return p0
.end method

.method public static mul(JC)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 25
    int-to-long v0, p2

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static mul(JD)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 26
    long-to-double p0, p0

    mul-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static mul(JF)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 27
    long-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-long p0, p0

    return-wide p0
.end method

.method public static mul(JI)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 28
    int-to-long v0, p2

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static mul(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 29
    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public static mul(JLjava/lang/String;)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p2}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static mul(JS)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 30
    int-to-long v0, p2

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static mul(LJAVARuntime/Color;LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->mul(LJAVARuntime/Color;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Color;LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->mul(LJAVARuntime/Vector2;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Color;LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->mul(LJAVARuntime/Vector3;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Matrix4;LJAVARuntime/Matrix4;)LJAVARuntime/Matrix4;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, LJAVARuntime/Matrix4;->mul(LJAVARuntime/Matrix4;)LJAVARuntime/Matrix4;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point2;D)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 76
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->mul(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point2;F)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 74
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->mul(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point2;I)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->mul(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point2;J)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 77
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->mul(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point2;LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->mul(LJAVARuntime/Point2;)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point2;LJAVARuntime/Point3;)LJAVARuntime/Point2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, LJAVARuntime/Point3;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point3;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Point2;->mul(II)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point3;D)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 82
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->mul(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point3;F)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 80
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->mul(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point3;I)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->mul(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point3;J)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 83
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->mul(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point3;LJAVARuntime/Point2;)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, LJAVARuntime/Point2;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point2;->getY()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, LJAVARuntime/Point3;->mul(III)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Point3;LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->mul(LJAVARuntime/Point3;)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Quaternion;LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, LJAVARuntime/Quaternion;->mul(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector2;D)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 64
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mul(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector2;F)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mul(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector2;I)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 63
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mul(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector2;J)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 65
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mul(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector2;LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mul(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector2;LJAVARuntime/Vector3;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mul(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector2;

    return-object p0
.end method

.method public static mul(LJAVARuntime/Matrix4;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, LJAVARuntime/Matrix4;->mul(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector3;D)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 70
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mul(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector3;F)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mul(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector3;I)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 69
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mul(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector3;J)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 71
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mul(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector3;LJAVARuntime/Vector2;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mul(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector3;

    return-object p0
.end method

.method public static mul(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mul(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Ljava/lang/String;C)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 57
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->mul(CLjava/lang/String;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Ljava/lang/String;D)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 54
    invoke-static {p1, p2, p0}, LJAVARuntime/JavaThermalFlowStatics;->mul(DLjava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Ljava/lang/String;F)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 52
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->mul(FLjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 53
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->mul(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 55
    invoke-static {p1, p2, p0}, LJAVARuntime/JavaThermalFlowStatics;->mul(JLjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 45
    const-string v0, "0"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object p1, v0

    .line 47
    :cond_3
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 48
    :cond_4
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide p0

    mul-long/2addr v0, p0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_5
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide p0

    mul-double/2addr v0, p0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mul(Ljava/lang/String;S)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 56
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->mul(SLjava/lang/String;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mul(SC)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 31
    mul-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static mul(SD)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 32
    int-to-double v0, p0

    mul-double/2addr v0, p1

    double-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static mul(SF)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 33
    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static mul(SI)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 34
    mul-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static mul(SJ)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 35
    int-to-long v0, p0

    mul-long/2addr v0, p1

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static mul(SLjava/lang/String;)S
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    mul-int/2addr p0, p1

    int-to-short p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static mul(SS)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 36
    mul-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static mulChar(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static mulDouble(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static mulFloat(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-float/2addr p0, p1

    return p0
.end method

.method public static mulInt(II)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public static mulLong(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public static mulShort(SS)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-int/2addr p0, p1

    int-to-double p0, p0

    return-wide p0
.end method

.method public static notNull(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sub(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    sub-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static sub(CD)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    int-to-double v0, p0

    sub-double/2addr v0, p1

    double-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static sub(CF)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    int-to-float p0, p0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static sub(CI)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    sub-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static sub(CJ)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    int-to-long v0, p0

    sub-long/2addr v0, p1

    long-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static sub(CLjava/lang/String;)C
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sub-int/2addr p0, p1

    int-to-char p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static sub(CS)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    sub-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static sub(DC)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    int-to-double v0, p2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static sub(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static sub(DF)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    float-to-double v0, p2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static sub(DI)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    int-to-double v0, p2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static sub(DJ)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    long-to-double p2, p2

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static sub(DLjava/lang/String;)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    sub-double/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static sub(DS)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 12
    int-to-double v0, p2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static sub(FC)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 13
    int-to-float p1, p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static sub(FD)F
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 14
    float-to-double v0, p0

    sub-double/2addr v0, p1

    double-to-float p0, v0

    return p0
.end method

.method public static sub(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 15
    sub-float/2addr p0, p1

    return p0
.end method

.method public static sub(FI)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 16
    int-to-float p1, p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static sub(FJ)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 17
    long-to-float p1, p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static sub(FLjava/lang/String;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result p1

    sub-float/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static sub(FS)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 18
    int-to-float p1, p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static sub(IC)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 19
    sub-int/2addr p0, p1

    return p0
.end method

.method public static sub(ID)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 20
    int-to-double v0, p0

    sub-double/2addr v0, p1

    double-to-int p0, v0

    return p0
.end method

.method public static sub(IF)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 21
    int-to-float p0, p0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static sub(II)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 22
    sub-int/2addr p0, p1

    return p0
.end method

.method public static sub(IJ)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 23
    int-to-long v0, p0

    sub-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method public static sub(ILjava/lang/String;)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static sub(IS)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 24
    sub-int/2addr p0, p1

    return p0
.end method

.method public static sub(JC)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 25
    int-to-long v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static sub(JD)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 26
    long-to-double p0, p0

    sub-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static sub(JF)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 27
    long-to-float p0, p0

    sub-float/2addr p0, p2

    float-to-long p0, p0

    return-wide p0
.end method

.method public static sub(JI)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 28
    int-to-long v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static sub(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 29
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static sub(JLjava/lang/String;)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p2}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static sub(JS)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 30
    int-to-long v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static sub(LJAVARuntime/Color;LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sub(LJAVARuntime/Color;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Color;LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sub(LJAVARuntime/Vector2;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Color;LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sub(LJAVARuntime/Vector3;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point2;D)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 100
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sub(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point2;F)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 98
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sub(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point2;I)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sub(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point2;J)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 101
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sub(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point2;LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sub(LJAVARuntime/Point2;)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point2;LJAVARuntime/Point3;)LJAVARuntime/Point2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, LJAVARuntime/Point3;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point3;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Point2;->sub(II)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point3;D)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 106
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sub(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point3;F)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 104
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sub(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point3;I)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sub(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point3;J)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 107
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sub(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point3;LJAVARuntime/Point2;)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, LJAVARuntime/Point2;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point2;->getY()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, LJAVARuntime/Point3;->sub(III)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Point3;LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sub(LJAVARuntime/Point3;)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector2;D)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 88
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sub(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector2;F)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sub(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector2;I)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 87
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sub(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector2;J)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 89
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sub(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector2;LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sub(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector2;LJAVARuntime/Vector3;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sub(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector2;

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector3;D)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 94
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sub(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector3;F)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sub(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector3;I)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 93
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sub(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector3;J)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 95
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sub(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector3;LJAVARuntime/Vector2;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sub(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector3;

    return-object p0
.end method

.method public static sub(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sub(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 77
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double p0, p1

    sub-double/2addr v0, p0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/String;D)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 62
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    double-to-long p0, p1

    sub-long/2addr v0, p0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    sub-double/2addr v0, p1

    .line 66
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/String;F)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 52
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    float-to-long p0, p1

    sub-long/2addr v0, p0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    float-to-double p0, p1

    sub-double/2addr v0, p0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 57
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double p0, p1

    sub-double/2addr v0, p0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 67
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double p0, p1

    sub-double/2addr v0, p0

    .line 71
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 45
    const-string v0, "0"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object p1, v0

    .line 47
    :cond_3
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 48
    :cond_4
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_5
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide p0

    sub-double/2addr v0, p0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/String;S)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 72
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double p0, p1

    sub-double/2addr v0, p0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sub(SC)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 31
    sub-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static sub(SD)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 32
    int-to-double v0, p0

    sub-double/2addr v0, p1

    double-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static sub(SF)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 33
    int-to-float p0, p0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static sub(SI)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 34
    sub-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static sub(SJ)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 35
    int-to-long v0, p0

    sub-long/2addr v0, p1

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static sub(SLjava/lang/String;)S
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p0, p1

    int-to-short p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static sub(SS)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 36
    sub-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static subChar(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static subDouble(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static subFloat(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-float/2addr p0, p1

    return p0
.end method

.method public static subInt(II)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public static subLong(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static subShort(SS)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-int/2addr p0, p1

    int-to-double p0, p0

    return-wide p0
.end method

.method public static sum(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    add-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static sum(CD)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 2
    int-to-double v0, p0

    add-double/2addr v0, p1

    double-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static sum(CF)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 3
    int-to-float p0, p0

    add-float/2addr p0, p1

    float-to-int p0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static sum(CI)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 4
    add-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static sum(CJ)C
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    int-to-long v0, p0

    add-long/2addr v0, p1

    long-to-int p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static sum(CLjava/lang/String;)C
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/2addr p0, p1

    int-to-char p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static sum(CS)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 6
    add-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static sum(DC)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 7
    int-to-double v0, p2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static sum(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 8
    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static sum(DF)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    float-to-double v0, p2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static sum(DI)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 10
    int-to-double v0, p2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static sum(DJ)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 11
    long-to-double p2, p2

    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static sum(DLjava/lang/String;)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p2}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    add-double/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static sum(DS)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 12
    int-to-double v0, p2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static sum(FC)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 13
    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static sum(FD)F
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 14
    float-to-double v0, p0

    add-double/2addr v0, p1

    double-to-float p0, v0

    return p0
.end method

.method public static sum(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 15
    add-float/2addr p0, p1

    return p0
.end method

.method public static sum(FI)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 16
    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static sum(FJ)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 17
    long-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static sum(FLjava/lang/String;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static sum(FS)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 18
    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static sum(IC)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 19
    add-int/2addr p0, p1

    return p0
.end method

.method public static sum(ID)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 20
    int-to-double v0, p0

    add-double/2addr v0, p1

    double-to-int p0, v0

    return p0
.end method

.method public static sum(IF)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 21
    int-to-float p0, p0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static sum(II)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 22
    add-int/2addr p0, p1

    return p0
.end method

.method public static sum(IJ)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 23
    int-to-long v0, p0

    add-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method public static sum(ILjava/lang/String;)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static sum(IS)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 24
    add-int/2addr p0, p1

    return p0
.end method

.method public static sum(JC)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 25
    int-to-long v0, p2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static sum(JD)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 26
    long-to-double p0, p0

    add-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static sum(JF)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 27
    long-to-float p0, p0

    add-float/2addr p0, p2

    float-to-long p0, p0

    return-wide p0
.end method

.method public static sum(JI)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 28
    int-to-long v0, p2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static sum(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 29
    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static sum(JLjava/lang/String;)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p2}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static sum(JS)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 30
    int-to-long v0, p2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static sum(LJAVARuntime/Color;LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sum(LJAVARuntime/Color;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Color;LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sum(LJAVARuntime/Vector2;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Color;LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sum(LJAVARuntime/Vector3;)LJAVARuntime/Color;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point2;D)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 76
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sum(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point2;F)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 74
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sum(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point2;I)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sum(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point2;J)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 77
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sum(I)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point2;LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, LJAVARuntime/Point2;->sum(LJAVARuntime/Point2;)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point2;LJAVARuntime/Point3;)LJAVARuntime/Point2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, LJAVARuntime/Point3;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point3;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Point2;->sum(II)LJAVARuntime/Point2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point3;D)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-int p1, p1

    .line 82
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sum(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point3;F)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    float-to-int p1, p1

    .line 80
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sum(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point3;I)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sum(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point3;J)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-int p1, p1

    .line 83
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sum(I)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point3;LJAVARuntime/Point2;)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, LJAVARuntime/Point2;->getX()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point2;->getY()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, LJAVARuntime/Point3;->sum(III)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Point3;LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, LJAVARuntime/Point3;->sum(LJAVARuntime/Point3;)LJAVARuntime/Point3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector2;D)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 64
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sum(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector2;F)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sum(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector2;I)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 63
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sum(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector2;J)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 65
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sum(F)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector2;LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sum(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector2;LJAVARuntime/Vector3;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector2;

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector3;D)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    double-to-float p1, p1

    .line 70
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sum(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector3;F)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sum(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector3;I)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    int-to-float p1, p1

    .line 69
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sum(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector3;J)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    long-to-float p1, p1

    .line 71
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sum(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector3;LJAVARuntime/Vector2;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vector3;

    return-object p0
.end method

.method public static sum(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sum(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;C)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 57
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->sum(CLjava/lang/String;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;D)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 54
    invoke-static {p1, p2, p0}, LJAVARuntime/JavaThermalFlowStatics;->sum(DLjava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;F)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 52
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->sum(FLjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 53
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->sum(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 55
    invoke-static {p1, p2, p0}, LJAVARuntime/JavaThermalFlowStatics;->sum(JLjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 45
    const-string v0, "0"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object p1, v0

    .line 47
    :cond_3
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 48
    :cond_4
    invoke-static {p0}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_5
    :goto_0
    invoke-static {p0}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;S)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 56
    invoke-static {p1, p0}, LJAVARuntime/JavaThermalFlowStatics;->sum(SLjava/lang/String;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sum(SC)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 31
    add-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static sum(SD)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 32
    int-to-double v0, p0

    add-double/2addr v0, p1

    double-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static sum(SF)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 33
    int-to-float p0, p0

    add-float/2addr p0, p1

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static sum(SI)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 34
    add-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static sum(SJ)S
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 35
    int-to-long v0, p0

    add-long/2addr v0, p1

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static sum(SLjava/lang/String;)S
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p1}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    int-to-short p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static sum(SS)S
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 36
    add-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static sumChar(CC)C
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    add-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static sumDouble(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static sumFloat(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    add-float/2addr p0, p1

    return p0
.end method

.method public static sumInt(II)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public static sumLong(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static sumShort(SS)D
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "valueA",
            "valueB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    add-int/2addr p0, p1

    int-to-double p0, p0

    return-wide p0
.end method

.method public static upCast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the object("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") cant be cast to type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
