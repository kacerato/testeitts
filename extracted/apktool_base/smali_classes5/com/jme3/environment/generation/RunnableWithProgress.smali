.class public abstract Lcom/jme3/environment/generation/RunnableWithProgress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private end:I

.field protected listener:Lcom/jme3/environment/generation/JobProgressListener;

.field private progress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/environment/generation/JobProgressListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->listener:Lcom/jme3/environment/generation/JobProgressListener;

    return-void
.end method


# virtual methods
.method public getProgress()D
    .locals 4

    iget v0, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->progress:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->end:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public progress()V
    .locals 3

    iget v0, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->progress:I

    iget-object v0, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->listener:Lcom/jme3/environment/generation/JobProgressListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/environment/generation/RunnableWithProgress;->getProgress()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/jme3/environment/generation/JobProgressListener;->progress(D)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->progress:I

    return-void
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/environment/generation/RunnableWithProgress;->end:I

    return-void
.end method
