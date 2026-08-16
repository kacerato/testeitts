.class public Lcom/jme3/renderer/opengl/GLTimingState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final callTiming:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field lastPrintOutTime:J

.field sampleCount:I

.field timeSpentInGL:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jme3/renderer/opengl/GLTimingState;->timeSpentInGL:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/renderer/opengl/GLTimingState;->sampleCount:I

    iput-wide v0, p0, Lcom/jme3/renderer/opengl/GLTimingState;->lastPrintOutTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/opengl/GLTimingState;->callTiming:Ljava/util/HashMap;

    return-void
.end method
