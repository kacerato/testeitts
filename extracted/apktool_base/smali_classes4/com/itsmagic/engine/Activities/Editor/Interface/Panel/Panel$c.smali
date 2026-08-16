.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->y(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp4/c;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Lp4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$panelToPanelArea"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;->b:Lp4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->r(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->r(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLOSE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ARE_YOU_SURE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;)V

    invoke-static {p1, v0, v1, v2, v3}, LZ6/c;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$c;->b:Lp4/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lp4/c;->close()V

    :cond_1
    :goto_0
    return-void
.end method
