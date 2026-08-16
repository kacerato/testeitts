.class public Lcom/jme3/input/controls/MouseButtonTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mouseButton:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButton:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mouse Button cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static mouseButtonHash(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    or-int/lit16 p0, p0, 0x100

    return p0
.end method


# virtual methods
.method public getMouseButton()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButton:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mouse Button "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButton:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerHashCode()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButton:I

    invoke-static {v0}, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButtonHash(I)I

    move-result v0

    return v0
.end method
