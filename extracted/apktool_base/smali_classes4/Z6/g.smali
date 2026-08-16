.class public LZ6/g;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ6/g$c;
    }
.end annotation


# static fields
.field public static final c0:Ljava/lang/String; = "FloatingProgressPopup"


# instance fields
.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Landroid/widget/TextView;

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public b0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, LZ6/g;->X:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p1(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, LZ6/g;->b0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static r1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LZ6/g;->s1(Ljava/lang/String;LZ6/g$c;)V

    return-void
.end method

.method public static s1(Ljava/lang/String;LZ6/g$c;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "showListener"
        }
    .end annotation

    const/16 v0, 0xdc

    const/16 v1, 0xfa

    const/16 v2, 0x60

    invoke-static {v2, v0, v1}, LNc/b;->F(III)I

    move-result v8

    invoke-static {v8}, LN7/c;->g(I)F

    move-result v6

    const/16 v9, 0x50

    invoke-static {v9}, LN7/c;->f(I)F

    move-result v7

    new-instance v0, LZ6/g$a;

    const/4 v5, 0x1

    move-object v3, v0

    move-object v4, p0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, LZ6/g$a;-><init>(Ljava/lang/String;ZFFIILZ6/g$c;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0185

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ6/g$b;

    invoke-direct {v1, p0}, LZ6/g$b;-><init>(LZ6/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LZ6/g;->Z:Landroid/widget/TextView;

    iget-object v2, p0, LZ6/g;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, LZ6/g;->b0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ6/g;->b0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    return-void
.end method

.method public f1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, LZ6/g;->X:Ljava/lang/String;

    iget-object v0, p0, LZ6/g;->Z:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LZ6/g;->Y:Ljava/lang/String;

    iget-object v0, p0, LZ6/g;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LZ6/g;->Z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ6/g;->Y:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LZ6/g;->Y:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, LZ6/g;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, LZ6/g;->X:Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, p0, LZ6/g;->Y:Ljava/lang/String;

    iget-object v1, p0, LZ6/g;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public q1()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
