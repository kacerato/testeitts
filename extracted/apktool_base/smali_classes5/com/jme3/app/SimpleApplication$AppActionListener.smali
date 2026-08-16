.class Lcom/jme3/app/SimpleApplication$AppActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/app/SimpleApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/app/SimpleApplication;


# direct methods
.method private constructor <init>(Lcom/jme3/app/SimpleApplication;)V
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
    iput-object p1, p0, Lcom/jme3/app/SimpleApplication$AppActionListener;->this$0:Lcom/jme3/app/SimpleApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/app/SimpleApplication;Lcom/jme3/app/SimpleApplication$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/app/SimpleApplication$AppActionListener;-><init>(Lcom/jme3/app/SimpleApplication;)V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/String;ZF)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "SIMPLEAPP_Exit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/jme3/app/SimpleApplication$AppActionListener;->this$0:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {p1}, Lcom/jme3/app/LegacyApplication;->stop()V

    goto :goto_0

    :cond_1
    const-string p2, "SIMPLEAPP_HideStats"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/app/SimpleApplication$AppActionListener;->this$0:Lcom/jme3/app/SimpleApplication;

    iget-object p1, p1, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    const-class p2, Lcom/jme3/app/StatsAppState;

    invoke-virtual {p1, p2}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/StatsAppState;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/app/StatsAppState;->toggleStats()V

    :cond_2
    :goto_0
    return-void
.end method
