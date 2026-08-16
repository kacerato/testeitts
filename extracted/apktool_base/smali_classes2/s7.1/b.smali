.class public Ls7/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ls7/a;",
        ">",
        "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;"
    }
.end annotation


# static fields
.field public static final k0:Ljava/lang/String; = "MultiLevelStagePanel"


# instance fields
.field public final X:Lpf/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/m<",
            "Ls7/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public Y:Ls7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public Z:Ls7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public a0:Z

.field public b0:Landroid/widget/Button;

.field public c0:Landroid/widget/Button;

.field public d0:Landroid/widget/LinearLayout;

.field public e0:Landroid/widget/ScrollView;

.field public f0:Landroid/view/View;

.field public g0:Landroid/view/View;

.field public h0:Landroid/widget/TextView;

.field public i0:Ljava/lang/String;

.field public j0:Ls7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleText"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lpf/m;

    invoke-direct {v1}, Lpf/m;-><init>()V

    iput-object v1, p0, Ls7/b;->X:Lpf/m;

    .line 3
    iput-object v0, p0, Ls7/b;->Z:Ls7/c;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ls7/b;->a0:Z

    .line 5
    iput-object v0, p0, Ls7/b;->j0:Ls7/a;

    .line 6
    iput-object p1, p0, Ls7/b;->i0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ls7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "titleText",
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls7/c<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lpf/m;

    invoke-direct {v1}, Lpf/m;-><init>()V

    iput-object v1, p0, Ls7/b;->X:Lpf/m;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Ls7/b;->a0:Z

    .line 10
    iput-object v0, p0, Ls7/b;->j0:Ls7/a;

    .line 11
    iput-object p1, p0, Ls7/b;->i0:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Ls7/b;->Z:Ls7/c;

    return-void
.end method

.method public static synthetic p1(Ls7/b;)Lpf/m;
    .locals 0

    iget-object p0, p0, Ls7/b;->X:Lpf/m;

    return-object p0
.end method

.method public static synthetic q1(Ls7/b;Ls7/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Ls7/b;->y1(Ls7/c;)V

    return-void
.end method

.method public static synthetic r1(Ls7/b;)Ls7/c;
    .locals 0

    iget-object p0, p0, Ls7/b;->Y:Ls7/c;

    return-object p0
.end method

.method public static synthetic s1(Ls7/b;Ls7/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Ls7/b;->z1(Ls7/c;)V

    return-void
.end method

.method public static synthetic t1(Ls7/b;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Ls7/b;->e0:Landroid/widget/ScrollView;

    return-object p0
.end method


# virtual methods
.method public final A1()V
    .locals 2

    iget-object v0, p0, Ls7/b;->e0:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ls7/b$e;

    invoke-direct {v1, p0}, Ls7/b$e;-><init>(Ls7/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public B1(Ls7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Ls7/b;->j0:Ls7/a;

    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ls7/b;->d0:Landroid/widget/LinearLayout;

    const v1, 0x7f09042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Ls7/b;->e0:Landroid/widget/ScrollView;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ls7/b;->h0:Landroid/widget/TextView;

    iget-object v3, p0, Ls7/b;->i0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090548

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ls7/b;->f0:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ls7/b;->g0:Landroid/view/View;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ls7/b;->b0:Landroid/widget/Button;

    new-instance v3, Ls7/b$a;

    invoke-direct {v3, p0}, Ls7/b$a;-><init>(Ls7/b;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ls7/b;->b0:Landroid/widget/Button;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_BACK:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ls7/b;->c0:Landroid/widget/Button;

    new-instance v3, Ls7/b$b;

    invoke-direct {v3, p0}, Ls7/b$b;-><init>(Ls7/b;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ls7/b;->c0:Landroid/widget/Button;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_NEXT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Ls7/b$c;

    invoke-direct {v3, p0}, Ls7/b$c;-><init>(Ls7/b;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ls7/b;->Z:Ls7/c;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ls7/b;->z1(Ls7/c;)V

    iput-object v2, p0, Ls7/b;->Z:Ls7/c;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ls7/b;->a0:Z

    return-object v0
.end method

.method public C1(Ls7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/c<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ls7/b;->Z:Ls7/c;

    iget-boolean v0, p0, Ls7/b;->a0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ls7/b;->z1(Ls7/c;)V

    :cond_0
    return-void
.end method

.method public D1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleText"
        }
    .end annotation

    iput-object p1, p0, Ls7/b;->i0:Ljava/lang/String;

    iget-object v0, p0, Ls7/b;->h0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Ls7/b;->Y:Ls7/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ls7/c;->y()V

    invoke-static {}, Lrc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    iget-object v0, p0, Ls7/b;->f0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ls7/b;->g0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v0, p0, Ls7/b;->f0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ls7/b;->g0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v0, p0, Ls7/b;->f0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ls7/b;->g0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final u1(Ls7/c;)Ls7/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/c<",
            "TT;>;)",
            "Ls7/c$a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ls7/b$d;

    invoke-direct {v0, p0, p1}, Ls7/b$d;-><init>(Ls7/b;Ls7/c;)V

    return-object v0
.end method

.method public v1()Ls7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ls7/b;->j0:Ls7/a;

    return-object v0
.end method

.method public w1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls7/b;->i0:Ljava/lang/String;

    return-object v0
.end method

.method public x1(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Ls7/b;->X:Lpf/m;

    invoke-virtual {v1}, Lpf/m;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ls7/b;->X:Lpf/m;

    invoke-virtual {v1}, Lpf/h;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lpf/h;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls7/c;

    invoke-virtual {p0, v1}, Ls7/b;->y1(Ls7/c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final y1(Ls7/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newStage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ls7/b;->Y:Ls7/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls7/c;->q()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v0, p0, Ls7/b;->Y:Ls7/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls7/c;->u(Ls7/c$a;)V

    iput-object v1, p0, Ls7/b;->Y:Ls7/c;

    :cond_0
    iget-object v0, p0, Ls7/b;->d0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Ls7/b;->u1(Ls7/c;)Ls7/c$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls7/c;->u(Ls7/c$a;)V

    invoke-virtual {p1}, Ls7/c;->r()V

    invoke-virtual {p1}, Ls7/c;->p()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ls7/b;->d0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Ls7/b;->A1()V

    iput-object p1, p0, Ls7/b;->Y:Ls7/c;

    invoke-virtual {p1}, Ls7/c;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ls7/b;->D1(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ls7/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Ls7/b;->c0:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ls7/b;->c0:Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_NEXT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Ls7/c;->o()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ls7/c;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ls7/b;->c0:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ls7/b;->c0:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Ls7/b;->X:Lpf/m;

    invoke-virtual {p1}, Lpf/m;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ls7/b;->b0:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Ls7/b;->b0:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final z1(Ls7/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newStage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ls7/b;->Y:Ls7/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls7/c;->q()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v0, p0, Ls7/b;->X:Lpf/m;

    iget-object v1, p0, Ls7/b;->Y:Ls7/c;

    invoke-virtual {v0, v1}, Lpf/m;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls7/b;->Y:Ls7/c;

    :cond_0
    iget-object v0, p0, Ls7/b;->d0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Ls7/b;->u1(Ls7/c;)Ls7/c$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls7/c;->u(Ls7/c$a;)V

    invoke-virtual {p1}, Ls7/c;->r()V

    invoke-virtual {p1}, Ls7/c;->p()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ls7/b;->d0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Ls7/b;->A1()V

    iput-object p1, p0, Ls7/b;->Y:Ls7/c;

    invoke-virtual {p1}, Ls7/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ls7/b;->c0:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ls7/b;->c0:Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_NEXT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Ls7/b;->Y:Ls7/c;

    invoke-virtual {v0}, Ls7/c;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ls7/b;->D1(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Ls7/c;->o()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ls7/c;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ls7/b;->c0:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ls7/b;->c0:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Ls7/b;->X:Lpf/m;

    invoke-virtual {p1}, Lpf/m;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ls7/b;->b0:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Ls7/b;->b0:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method
