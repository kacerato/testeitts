.class public Llb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    long-to-float p0, p0

    const/high16 p1, 0x49800000    # 1048576.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static b(F)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.1f MB"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LM9/d;->FRAME_BUFFER:LM9/d;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countGPUConsumptionBytes(LM9/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LM9/d;->MODEL:LM9/d;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countGPUConsumptionBytes(LM9/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LM9/d;->TEXTURE:LM9/d;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countGPUConsumptionBytes(LM9/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countGPUConsumptionBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LM9/f;->BUFFER:LM9/f;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countNativeConsumptionBytes(LM9/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LM9/f;->TEXTURE:LM9/f;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countNativeConsumptionBytes(LM9/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->countNativeConsumptionBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Llb/c;->a(J)F

    move-result p0

    return p0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1f MB"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(J)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kb"
        }
    .end annotation

    long-to-float p0, p0

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public n(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p1, v1

    div-float/2addr p1, v1

    iput p1, p0, Llb/c;->a:F

    iget p1, p0, Llb/c;->b:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float p1, v2

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    div-float/2addr p1, v1

    iput p1, p0, Llb/c;->b:F

    :cond_0
    return-void
.end method
