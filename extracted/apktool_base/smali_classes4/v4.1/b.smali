.class public Lv4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;


# direct methods
.method public constructor <init>(ILcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameTime",
            "frame",
            "timeline",
            "animation"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv4/b;->a:I

    iput-object p2, p0, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    iput-object p3, p0, Lv4/b;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iput-object p4, p0, Lv4/b;->d:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    return-void
.end method
