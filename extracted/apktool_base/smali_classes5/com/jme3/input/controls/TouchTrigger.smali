.class public Lcom/jme3/input/controls/TouchTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# instance fields
.field private final keyCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jme3/input/controls/TouchTrigger;->keyCode:I

    return-void
.end method

.method public static touchHash(I)I
    .locals 1

    const v0, -0x1234568

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/TouchTrigger;->keyCode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/jme3/input/controls/TouchTrigger;->keyCode:I

    if-eqz v0, :cond_0

    const-string v0, "TouchInput"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchInput KeyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/controls/TouchTrigger;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerHashCode()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/TouchTrigger;->keyCode:I

    invoke-static {v0}, Lcom/jme3/input/controls/TouchTrigger;->touchHash(I)I

    move-result v0

    return v0
.end method
