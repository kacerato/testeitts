.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$f;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$f;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$f;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;)LN6/H;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel$f;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->k0()V

    :cond_0
    return-void
.end method
