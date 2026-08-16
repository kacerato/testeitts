.class LJAVARuntime/ASeekBar$6;
.super LJAVARuntime/AOnDragListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ASeekBar;->setOnDragListener(Landroid/view/View$OnDragListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/ASeekBar;

.field final synthetic val$l:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>(LJAVARuntime/ASeekBar;Landroid/view/View$OnDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$l"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ASeekBar$6;->this$0:LJAVARuntime/ASeekBar;

    iput-object p2, p0, LJAVARuntime/ASeekBar$6;->val$l:Landroid/view/View$OnDragListener;

    invoke-direct {p0}, LJAVARuntime/AOnDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/ASeekBar$6;->val$l:Landroid/view/View$OnDragListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method
