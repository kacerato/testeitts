.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->W(Landroid/content/Context;Landroid/view/LayoutInflater;Lq4/c;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lq4/c;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Landroid/widget/ImageView;Lq4/c;Landroid/content/Context;)V
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
            "val$icon",
            "val$rightOption",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->b:Lq4/c;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->b:Lq4/c;

    invoke-virtual {v1}, Lq4/c;->b()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, LVc/e;->Y(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->b:Lq4/c;

    iget-object v0, v0, Lq4/c;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$c;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method
