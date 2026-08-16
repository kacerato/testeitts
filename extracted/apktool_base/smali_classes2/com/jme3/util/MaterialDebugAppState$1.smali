.class Lcom/jme3/util/MaterialDebugAppState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/util/MaterialDebugAppState;->bind(Lcom/jme3/util/MaterialDebugAppState$Binding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/util/MaterialDebugAppState;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$binding:Lcom/jme3/util/MaterialDebugAppState$Binding;


# direct methods
.method public constructor <init>(Lcom/jme3/util/MaterialDebugAppState;Ljava/lang/String;Lcom/jme3/util/MaterialDebugAppState$Binding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/jme3/util/MaterialDebugAppState$1;->val$actionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jme3/util/MaterialDebugAppState$1;->val$binding:Lcom/jme3/util/MaterialDebugAppState$Binding;

    iput-object p1, p0, Lcom/jme3/util/MaterialDebugAppState$1;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/String;ZF)V
    .locals 0

    iget-object p3, p0, Lcom/jme3/util/MaterialDebugAppState$1;->val$actionName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/jme3/util/MaterialDebugAppState$1;->val$binding:Lcom/jme3/util/MaterialDebugAppState$Binding;

    invoke-interface {p1}, Lcom/jme3/util/MaterialDebugAppState$Binding;->reload()V

    :cond_0
    return-void
.end method
