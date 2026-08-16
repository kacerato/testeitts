.class LJAVARuntime/AOnItemLongClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnItemLongClickListener;

.field final synthetic val$id:J

.field final synthetic val$parent:Landroid/widget/AdapterView;

.field final synthetic val$position:I

.field final synthetic val$r:[Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnItemLongClickListener;[ZLandroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$r",
            "val$parent",
            "val$view",
            "val$position",
            "val$id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnItemLongClickListener$1;->this$0:LJAVARuntime/AOnItemLongClickListener;

    iput-object p2, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$r:[Z

    iput-object p3, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$parent:Landroid/widget/AdapterView;

    iput-object p4, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$view:Landroid/view/View;

    iput p5, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$position:I

    iput-wide p6, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$r:[Z

    iget-object v1, p0, LJAVARuntime/AOnItemLongClickListener$1;->this$0:LJAVARuntime/AOnItemLongClickListener;

    iget-object v2, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$parent:Landroid/widget/AdapterView;

    iget-object v3, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$view:Landroid/view/View;

    iget v4, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$position:I

    iget-wide v5, p0, LJAVARuntime/AOnItemLongClickListener$1;->val$id:J

    invoke-virtual/range {v1 .. v6}, LJAVARuntime/AOnItemLongClickListener;->onItemLongClickEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
