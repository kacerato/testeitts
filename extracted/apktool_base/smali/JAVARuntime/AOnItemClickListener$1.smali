.class LJAVARuntime/AOnItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnItemClickListener;

.field final synthetic val$id:J

.field final synthetic val$parent:Landroid/widget/AdapterView;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnItemClickListener;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
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

    iput-object p1, p0, LJAVARuntime/AOnItemClickListener$1;->this$0:LJAVARuntime/AOnItemClickListener;

    iput-object p2, p0, LJAVARuntime/AOnItemClickListener$1;->val$parent:Landroid/widget/AdapterView;

    iput-object p3, p0, LJAVARuntime/AOnItemClickListener$1;->val$view:Landroid/view/View;

    iput p4, p0, LJAVARuntime/AOnItemClickListener$1;->val$position:I

    iput-wide p5, p0, LJAVARuntime/AOnItemClickListener$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LJAVARuntime/AOnItemClickListener$1;->this$0:LJAVARuntime/AOnItemClickListener;

    iget-object v1, p0, LJAVARuntime/AOnItemClickListener$1;->val$parent:Landroid/widget/AdapterView;

    iget-object v2, p0, LJAVARuntime/AOnItemClickListener$1;->val$view:Landroid/view/View;

    iget v3, p0, LJAVARuntime/AOnItemClickListener$1;->val$position:I

    iget-wide v4, p0, LJAVARuntime/AOnItemClickListener$1;->val$id:J

    invoke-virtual/range {v0 .. v5}, LJAVARuntime/AOnItemClickListener;->onItemClickEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
