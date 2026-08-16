.class public LM4/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM4/a$c;
    }
.end annotation


# static fields
.field public static final b0:Ljava/lang/String; = "EditText"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:Ljava/lang/String;

.field public final Z:Z

.field public a0:LM4/a$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLM4/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "currentText",
            "allowEmpty",
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_EDIT_TEXT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, LM4/a;->X:Ljava/lang/String;

    iput-boolean p3, p0, LM4/a;->Z:Z

    iput-object p4, p0, LM4/a;->a0:LM4/a$c;

    iput-object p1, p0, LM4/a;->Y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p1(LM4/a;)LM4/a$c;
    .locals 0

    iget-object p0, p0, LM4/a;->a0:LM4/a$c;

    return-object p0
.end method

.method public static synthetic q1(LM4/a;LM4/a$c;)LM4/a$c;
    .locals 0

    iput-object p1, p0, LM4/a;->a0:LM4/a$c;

    return-object p1
.end method

.method public static synthetic r1(LM4/a;)Z
    .locals 0

    iget-boolean p0, p0, LM4/a;->Z:Z

    return p0
.end method

.method public static s1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;ZLM4/a$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "tittle",
            "currentText",
            "allowEmpty",
            "listener"
        }
    .end annotation

    if-eqz p5, :cond_0

    new-instance v0, LM4/a;

    invoke-direct {v0, p2, p3, p4, p5}, LM4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZLM4/a$c;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->W0(Z)V

    const p3, 0x3f4ccccd    # 0.8f

    const p4, 0x3ecccccd    # 0.4f

    invoke-static {p0, v0, p1, p4, p3}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D1(Z)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;ZLM4/a$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "currentText",
            "allowEmpty",
            "listener"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, LM4/a;->s1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;ZLM4/a$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, LM4/a;->Y:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LM4/a;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, LM4/a;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090151

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, LM4/a$a;

    invoke-direct {v3, p0, v1}, LM4/a$a;-><init>(LM4/a;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, LM4/a$b;

    invoke-direct {v2, p0}, LM4/a$b;-><init>(LM4/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LM4/a;->a0:LM4/a$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LM4/a$c;->onCancel()V

    :cond_0
    return-void
.end method
