.class public Lcom/jme3/input/controls/JoyAxisTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final axisId:I

.field private final joyId:I

.field private final negative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->joyId:I

    iput p2, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->axisId:I

    iput-boolean p3, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->negative:Z

    return-void
.end method

.method public static joyAxisHash(IIZ)I
    .locals 0

    mul-int/lit16 p0, p0, 0x800

    if-eqz p2, :cond_0

    const/16 p2, 0x500

    goto :goto_0

    :cond_0
    const/16 p2, 0x400

    :goto_0
    or-int/2addr p0, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getAxisId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->axisId:I

    return v0
.end method

.method public getJoyId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->joyId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoyAxis[joyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->joyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", axisId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->axisId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", neg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->negative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNegative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->negative:Z

    return v0
.end method

.method public triggerHashCode()I
    .locals 3

    iget v0, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->joyId:I

    iget v1, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->axisId:I

    iget-boolean v2, p0, Lcom/jme3/input/controls/JoyAxisTrigger;->negative:Z

    invoke-static {v0, v1, v2}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v0

    return v0
.end method
