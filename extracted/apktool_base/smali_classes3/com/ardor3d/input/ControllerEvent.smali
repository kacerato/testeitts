.class public Lcom/ardor3d/input/ControllerEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final componentName:Ljava/lang/String;

.field private final controllerName:Ljava/lang/String;

.field private final nanos:J

.field private final value:F


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ardor3d/input/ControllerEvent;->nanos:J

    iput-object p3, p0, Lcom/ardor3d/input/ControllerEvent;->controllerName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ardor3d/input/ControllerEvent;->componentName:Ljava/lang/String;

    iput p5, p0, Lcom/ardor3d/input/ControllerEvent;->value:F

    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/ControllerEvent;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/ControllerEvent;->controllerName:Ljava/lang/String;

    return-object v0
.end method

.method public getNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/input/ControllerEvent;->nanos:J

    return-wide v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/ControllerEvent;->value:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/ControllerEvent;->controllerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ardor3d/input/ControllerEvent;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ardor3d/input/ControllerEvent;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ardor3d/input/ControllerEvent;->nanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
