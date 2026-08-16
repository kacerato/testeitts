.class public LN5/a;
.super Ls7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls7/b<",
        "LO5/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final o0:Ljava/lang/String; = "AccountItsmagicPanel"


# instance fields
.field public final l0:LP5/a;

.field public final m0:F

.field public n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedHeight"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ACCOUNT_ITSMAGIC:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ls7/b;-><init>(Ljava/lang/String;)V

    new-instance v0, LP5/a;

    invoke-direct {v0}, LP5/a;-><init>()V

    iput-object v0, p0, LN5/a;->l0:LP5/a;

    iput p1, p0, LN5/a;->m0:F

    invoke-super {p0, v0}, Ls7/b;->C1(Ls7/c;)V

    new-instance p1, LO5/b;

    invoke-direct {p1}, LO5/b;-><init>()V

    invoke-super {p0, p1}, Ls7/b;->B1(Ls7/a;)V

    iget-object p1, p0, LN5/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-object p1, p0, LN5/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static E1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3

    const/16 v0, 0x1c2

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x13b

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LN5/a;

    invoke-direct {v2, v1}, LN5/a;-><init>(F)V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object v0, v2, LN5/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 2

    invoke-super {p0}, Ls7/b;->C0()Landroid/view/View;

    move-result-object v0

    new-instance v1, LN5/a$a;

    invoke-direct {v1, p0}, LN5/a$a;-><init>(LN5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Ls7/b;->n1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    invoke-static {}, Lrc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN5/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->J1(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN5/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v1, p0, LN5/a;->m0:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->J1(F)V

    :goto_0
    return-void
.end method
