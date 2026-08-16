.class public LH3/g$d$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH3/g$d;->c(LH3/i;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH3/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LH3/g$d;


# direct methods
.method public constructor <init>(LH3/g$d;LH3/i;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$holder",
            "val$path"
        }
    .end annotation

    iput-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iput-object p2, p0, LH3/g$d$a;->b:LH3/i;

    iput-object p3, p0, LH3/g$d$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x43e10000    # 450.0f

    const-string v3, "https://itsmagic.com.br/index.html"

    invoke-static {v3, p1, v0, v1, v2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    invoke-static {p1}, LH3/g;->p1(LH3/g;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    invoke-static {p1}, LH3/g;->p1(LH3/g;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object v1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object v1, v1, LH3/g$d;->a:LH3/g;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p1, v1, v2}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    invoke-static {p1}, LH3/g;->p1(LH3/g;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    iget-object p1, p0, LH3/g$d$a;->b:LH3/i;

    iget-object p1, p1, LH3/i;->c:Landroid/widget/ImageView;

    iget-object v1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object v1, v1, LH3/g$d;->a:LH3/g;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05003e

    invoke-static {p1, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    invoke-static {p1}, LH3/g;->p1(LH3/g;)[Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, LH3/g$d$a;->b:LH3/i;

    iget-object v1, v1, LH3/i;->c:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    invoke-static {p1}, LH3/g;->q1(LH3/g;)LH3/e;

    move-result-object p1

    iget-object v0, p0, LH3/g$d$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, LH3/e;->onSelected(Ljava/lang/String;)V

    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    iget-object v0, p0, LH3/g$d$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, LH3/g;->s1(LH3/g;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    invoke-static {p1}, LH3/g;->t1(LH3/g;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LH3/g$d$a;->d:LH3/g$d;

    iget-object p1, p1, LH3/g$d;->a:LH3/g;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_2
    return-void
.end method
