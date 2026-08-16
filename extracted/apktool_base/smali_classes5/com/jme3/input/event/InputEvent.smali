.class public abstract Lcom/jme3/input/event/InputEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected consumed:Z

.field protected time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/input/event/InputEvent;->consumed:Z

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/input/event/InputEvent;->time:J

    return-wide v0
.end method

.method public isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/InputEvent;->consumed:Z

    return v0
.end method

.method public setConsumed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/event/InputEvent;->consumed:Z

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/input/event/InputEvent;->time:J

    return-void
.end method
