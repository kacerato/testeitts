.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->v1(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;)LN6/H;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;)LN6/H;

    move-result-object p2

    invoke-virtual {p2, p1}, LN6/H;->m0(Landroid/view/View;)V

    :cond_0
    return-void
.end method
