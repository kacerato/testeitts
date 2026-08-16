.class Lcom/jme3/animation/EffectTrack$OnEndListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/animation/AnimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/animation/EffectTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/animation/EffectTrack;


# direct methods
.method private constructor <init>(Lcom/jme3/animation/EffectTrack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jme3/animation/EffectTrack$OnEndListener;->this$0:Lcom/jme3/animation/EffectTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/animation/EffectTrack;Lcom/jme3/animation/EffectTrack$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/animation/EffectTrack$OnEndListener;-><init>(Lcom/jme3/animation/EffectTrack;)V

    return-void
.end method


# virtual methods
.method public onAnimChange(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAnimCycleDone(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/animation/EffectTrack$OnEndListener;->this$0:Lcom/jme3/animation/EffectTrack;

    invoke-static {p1}, Lcom/jme3/animation/EffectTrack;->access$000(Lcom/jme3/animation/EffectTrack;)V

    return-void
.end method
