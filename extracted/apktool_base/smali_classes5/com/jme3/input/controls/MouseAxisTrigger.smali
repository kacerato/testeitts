.class public Lcom/jme3/input/controls/MouseAxisTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mouseAxis:I

.field private negative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxis:I

    iput-boolean p2, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->negative:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mouse Axis must be between 0 and 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static mouseAxisHash(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x300

    goto :goto_0

    :cond_0
    const/16 p1, 0x200

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getMouseAxis()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxis:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->negative:Z

    if-eqz v0, :cond_0

    const-string v0, "Negative"

    goto :goto_0

    :cond_0
    const-string v0, "Positive"

    :goto_0
    iget v1, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxis:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mouse Wheel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mouse Y Axis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mouse X Axis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNegative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->negative:Z

    return v0
.end method

.method public triggerHashCode()I
    .locals 2

    iget v0, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxis:I

    iget-boolean v1, p0, Lcom/jme3/input/controls/MouseAxisTrigger;->negative:Z

    invoke-static {v0, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result v0

    return v0
.end method
