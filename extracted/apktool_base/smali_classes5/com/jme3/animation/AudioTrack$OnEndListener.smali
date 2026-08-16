.class Lcom/jme3/animation/AudioTrack$OnEndListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/animation/AnimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/animation/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/animation/AudioTrack;


# direct methods
.method private constructor <init>(Lcom/jme3/animation/AudioTrack;)V
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
    iput-object p1, p0, Lcom/jme3/animation/AudioTrack$OnEndListener;->this$0:Lcom/jme3/animation/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/animation/AudioTrack;Lcom/jme3/animation/AudioTrack$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/animation/AudioTrack$OnEndListener;-><init>(Lcom/jme3/animation/AudioTrack;)V

    return-void
.end method


# virtual methods
.method public onAnimChange(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAnimCycleDone(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/animation/AudioTrack$OnEndListener;->this$0:Lcom/jme3/animation/AudioTrack;

    invoke-static {p1}, Lcom/jme3/animation/AudioTrack;->access$000(Lcom/jme3/animation/AudioTrack;)V

    return-void
.end method
