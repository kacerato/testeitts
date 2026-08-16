.class public LM4/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM4/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:LM4/a;


# direct methods
.method public constructor <init>(LM4/a;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$editText"
        }
    .end annotation

    iput-object p1, p0, LM4/a$a;->c:LM4/a;

    iput-object p2, p0, LM4/a$a;->b:Landroid/widget/EditText;

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

    iget-object p1, p0, LM4/a$a;->c:LM4/a;

    invoke-static {p1}, LM4/a;->p1(LM4/a;)LM4/a$c;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOMETHING_WENT_WRONG:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, LM4/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LM4/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, LM4/a$a;->c:LM4/a;

    invoke-static {v0}, LM4/a;->p1(LM4/a;)LM4/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, LM4/a$c;->onFinish(Ljava/lang/String;)V

    iget-object p1, p0, LM4/a$a;->c:LM4/a;

    invoke-static {p1, v1}, LM4/a;->q1(LM4/a;LM4/a$c;)LM4/a$c;

    iget-object p1, p0, LM4/a$a;->c:LM4/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, LM4/a$a;->c:LM4/a;

    invoke-static {v0}, LM4/a;->r1(LM4/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LM4/a$a;->c:LM4/a;

    invoke-static {v0}, LM4/a;->p1(LM4/a;)LM4/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, LM4/a$c;->onFinish(Ljava/lang/String;)V

    iget-object p1, p0, LM4/a$a;->c:LM4/a;

    invoke-static {p1, v1}, LM4/a;->q1(LM4/a;LM4/a$c;)LM4/a$c;

    iget-object p1, p0, LM4/a$a;->c:LM4/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    goto :goto_1

    :cond_3
    const-string p1, "Text can\'t be empty"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
