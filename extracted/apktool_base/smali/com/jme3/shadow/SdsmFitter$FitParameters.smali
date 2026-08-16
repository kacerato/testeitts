.class public Lcom/jme3/shadow/SdsmFitter$FitParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shadow/SdsmFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FitParameters"
.end annotation


# instance fields
.field public final cameraFar:F

.field public final cameraNear:F

.field public final cameraToLight:Lcom/jme3/math/Matrix4f;

.field public final splitCount:I


# direct methods
.method public constructor <init>(Lcom/jme3/math/Matrix4f;IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraToLight:Lcom/jme3/math/Matrix4f;

    iput p2, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->splitCount:I

    iput p3, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraNear:F

    iput p4, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraFar:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FitParameters{cameraToLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraToLight:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", splitCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->splitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraNear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraNear:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cameraFar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/shadow/SdsmFitter$FitParameters;->cameraFar:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
