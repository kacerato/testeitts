.class LJAVARuntime/AOnDragListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnDragListener;

.field final synthetic val$event:Landroid/view/DragEvent;

.field final synthetic val$r:[Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnDragListener;[ZLandroid/view/View;Landroid/view/DragEvent;)V
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
            "val$r",
            "val$v",
            "val$event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnDragListener$1;->this$0:LJAVARuntime/AOnDragListener;

    iput-object p2, p0, LJAVARuntime/AOnDragListener$1;->val$r:[Z

    iput-object p3, p0, LJAVARuntime/AOnDragListener$1;->val$v:Landroid/view/View;

    iput-object p4, p0, LJAVARuntime/AOnDragListener$1;->val$event:Landroid/view/DragEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LJAVARuntime/AOnDragListener$1;->val$r:[Z

    iget-object v1, p0, LJAVARuntime/AOnDragListener$1;->this$0:LJAVARuntime/AOnDragListener;

    iget-object v2, p0, LJAVARuntime/AOnDragListener$1;->val$v:Landroid/view/View;

    iget-object v3, p0, LJAVARuntime/AOnDragListener$1;->val$event:Landroid/view/DragEvent;

    invoke-virtual {v1, v2, v3}, LJAVARuntime/AOnDragListener;->onDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
