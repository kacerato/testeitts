.class public Lcom/jme3/input/controls/JoyButtonTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buttonId:I

.field private final joyId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->joyId:I

    iput p2, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->buttonId:I

    return-void
.end method

.method public static joyButtonHash(II)I
    .locals 0

    mul-int/lit16 p0, p0, 0x800

    or-int/lit16 p0, p0, 0x600

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getAxisId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->buttonId:I

    return v0
.end method

.method public getJoyId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->joyId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoyButton[joyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->joyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", axisId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->buttonId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerHashCode()I
    .locals 2

    iget v0, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->joyId:I

    iget v1, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->buttonId:I

    invoke-static {v0, v1}, Lcom/jme3/input/controls/JoyButtonTrigger;->joyButtonHash(II)I

    move-result v0

    return v0
.end method
