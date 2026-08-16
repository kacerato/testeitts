.class LJAVARuntime/AListView$2;
.super LJAVARuntime/AOnItemLongClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AListView;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AListView$2;->this$0:LJAVARuntime/AListView;

    iput-object p2, p0, LJAVARuntime/AListView$2;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, LJAVARuntime/AOnItemLongClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClickEvent(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AListView$2;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
