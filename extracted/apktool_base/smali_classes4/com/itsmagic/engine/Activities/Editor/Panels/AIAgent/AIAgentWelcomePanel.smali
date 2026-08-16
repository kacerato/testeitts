.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation build Lk0/i;
.end annotation


# static fields
.field public static final a0:Ljava/lang/String; = "AIAgentWelcomePanel"

.field public static final b0:Ljava/lang/Class;


# instance fields
.field public X:Landroid/widget/LinearLayout;

.field public Y:Landroid/widget/LinearLayout;

.field public Z:Landroid/widget/TextView;

.field private floatingHubMode:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->b0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingHubMode"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    .line 3
    const-string v0, "AIAgentWelcomePanel"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->serializedComponentType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->isSerializable:Z

    .line 5
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->floatingHubMode:Z

    .line 6
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_WELCOME:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->u1(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    return-void
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->X:Landroid/widget/LinearLayout;

    const v1, 0x7f09041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Y:Landroid/widget/LinearLayout;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Z:Landroid/widget/TextView;

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_WELCOME:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Z:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_WELCOME_DESCRIPTION:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x7f0904a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_AVAILABLE_SPECIALISTS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v1, 0x7f09041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_RUNNING_CHATS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->v1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->w1()V

    return-object v0
.end method

.method public E0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->v1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->w1()V

    return-void
.end method

.method public F0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "jsonObj"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F0(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_WELCOME:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    return-void
.end method

.method public o1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->w1()V

    return-void
.end method

.method public final r1()Lt4/b;
    .locals 2

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    const-class v1, Lt4/b;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->K(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v0

    instance-of v1, v0, Lt4/b;

    if-eqz v1, :cond_0

    check-cast v0, Lt4/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->floatingHubMode:Z

    return v0
.end method

.method public final t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runningChat"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->floatingHubMode:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt4/a;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$f;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {v1, v0}, LN7/c;->d0(ILjava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->r1()Lt4/b;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lt4/b;->M0()Lt4/b;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt4/b;->I0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$g;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {v1, v0}, LN7/c;->d0(ILjava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final u1(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialist"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->floatingHubMode:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-static {p1}, Lt4/a;->h(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$d;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {v1, v0}, LN7/c;->d0(ILjava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->r1()Lt4/b;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lt4/b;->M0()Lt4/b;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lt4/b;->K0(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$e;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {v1, v0}, LN7/c;->d0(ILjava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final v1()V
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->X:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->values()[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->b()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v6, 0x7f0c002b

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0904a7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    instance-of v7, v6, Landroid/widget/Button;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->d()I

    move-result v8

    invoke-virtual {v7, v8, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_3
    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$b;

    invoke-direct {v7, p0, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final w1()V
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Y:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v4, 0x7f0c002a

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090416

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f090419

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090418

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->j()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v7

    if-eqz v4, :cond_3

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->d()I

    move-result v7

    goto :goto_1

    :cond_2
    const v7, 0x7f07005c

    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v4, 0x7f090417

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$c;

    invoke-direct {v5, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0029

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090415

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_NO_RUNNING_CHATS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
