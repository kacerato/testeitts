.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->G2(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

.field public final synthetic c:[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;ZLcom/itsmagic/engine/Engines/Engine/Animation/Frame;[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$eventsTimeline",
            "val$frame",
            "val$tempFrame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->a:Z

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->c:[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->d()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->c:[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->c:[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->d()F

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->c:[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->t(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->t(F)V

    :cond_2
    return-void
.end method
