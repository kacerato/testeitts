.class Lcom/jme3/environment/LightProbeFactory$JobState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/environment/LightProbeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobState"
.end annotation


# instance fields
.field done:[Z

.field executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field progress:[D

.field started:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/jme3/environment/LightProbeFactory$JobState;->progress:[D

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobState;->done:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/environment/LightProbeFactory$JobState;->started:Z

    iput-object p1, p0, Lcom/jme3/environment/LightProbeFactory$JobState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 8

    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobState;->progress:[D

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    float-to-double v6, v2

    add-double/2addr v6, v4

    double-to-float v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr v2, v0

    return v2
.end method

.method public isDone()Z
    .locals 5

    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$JobState;->done:[Z

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-boolean v4, v0, v3

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
