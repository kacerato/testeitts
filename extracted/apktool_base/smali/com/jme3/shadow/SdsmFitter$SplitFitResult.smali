.class public Lcom/jme3/shadow/SdsmFitter$SplitFitResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shadow/SdsmFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitFitResult"
.end annotation


# instance fields
.field public final parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

.field public final result:Lcom/jme3/shadow/SdsmFitter$SplitFit;


# direct methods
.method public constructor <init>(Lcom/jme3/shadow/SdsmFitter$FitParameters;Lcom/jme3/shadow/SdsmFitter$SplitFit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    iput-object p2, p0, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->result:Lcom/jme3/shadow/SdsmFitter$SplitFit;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitFitResult{parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->parameters:Lcom/jme3/shadow/SdsmFitter$FitParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/shadow/SdsmFitter$SplitFitResult;->result:Lcom/jme3/shadow/SdsmFitter$SplitFit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
