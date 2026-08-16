.class LJAVARuntime/Matcap$2$1$1;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Matcap$2$1;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/Matcap$2$1;

.field final synthetic val$colorImage:Landroid/widget/ImageView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(LJAVARuntime/Matcap$2$1;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$colorImage",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Matcap$2$1$1;->this$1:LJAVARuntime/Matcap$2$1;

    iput-object p2, p0, LJAVARuntime/Matcap$2$1$1;->val$colorImage:Landroid/widget/ImageView;

    iput-object p3, p0, LJAVARuntime/Matcap$2$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v1, LJAVARuntime/Matcap$2$1$1$1;

    invoke-direct {v1, p0}, LJAVARuntime/Matcap$2$1$1$1;-><init>(LJAVARuntime/Matcap$2$1$1;)V

    invoke-static {p1, v0, v1}, LH3/f;->H1(Landroid/view/View;Lr4/a$e;LH3/e;)V

    return-void
.end method
