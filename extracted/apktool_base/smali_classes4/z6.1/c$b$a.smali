.class public Lz6/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/c$b;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz6/c$b;


# direct methods
.method public constructor <init>(Lz6/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lz6/c$b$a;->a:Lz6/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lz6/c$b$a;->a:Lz6/c$b;

    iget-object v0, v0, Lz6/c$b;->b:Landroid/content/Context;

    const-string v1, "Ops! something went wrong."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    new-instance v1, Ln4/c;

    invoke-direct {v1, p1}, Ln4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    return-void
.end method
