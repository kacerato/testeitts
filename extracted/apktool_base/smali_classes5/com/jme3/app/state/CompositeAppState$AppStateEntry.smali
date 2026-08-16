.class Lcom/jme3/app/state/CompositeAppState$AppStateEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/app/state/CompositeAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppStateEntry"
.end annotation


# instance fields
.field enabled:Z

.field override:Z

.field state:Lcom/jme3/app/state/AppState;

.field final synthetic this$0:Lcom/jme3/app/state/CompositeAppState;


# direct methods
.method public constructor <init>(Lcom/jme3/app/state/CompositeAppState;Lcom/jme3/app/state/AppState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->this$0:Lcom/jme3/app/state/CompositeAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    iput-boolean p3, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->override:Z

    invoke-interface {p2}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->enabled:Z

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->override:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    iget-boolean v0, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->enabled:Z

    invoke-interface {p1, v0}, Lcom/jme3/app/state/AppState;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->enabled:Z

    iget-object p1, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/jme3/app/state/AppState;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-interface {v0, p1}, Lcom/jme3/app/state/AppState;->setEnabled(Z)V

    :goto_0
    return-void
.end method
