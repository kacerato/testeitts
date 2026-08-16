.class public LE5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE5/g$i;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:LC5/b;

.field public c:LH5/b;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LE5/g;->a:Z

    return-void
.end method

.method public static synthetic a(LE5/g;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, LE5/g;->f(LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V

    return-void
.end method

.method public static synthetic b(LE5/g;LC5/b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE5/g;->g(LC5/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(LE5/g;)LH5/b;
    .locals 0

    iget-object p0, p0, LE5/g;->c:LH5/b;

    return-object p0
.end method


# virtual methods
.method public d(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "input",
            "tittle"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, LE5/g;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V

    return-void
.end method

.method public e(LC5/b;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "input",
            "tittle",
            "listener"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    iput-object p1, p0, LE5/g;->b:LC5/b;

    iput-object p2, p0, LE5/g;->d:Landroid/view/View;

    iget-object v0, p1, LC5/b;->b:LD5/h;

    if-eqz v0, :cond_2

    const v0, 0x7f09029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LE5/g;->e:Landroid/view/View;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->IntNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, LE5/g;->g(LC5/b;Landroid/view/View;)V

    if-eqz p3, :cond_0

    new-instance v8, LE5/g$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LE5/g$a;-><init>(LE5/g;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, LE5/g$b;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, LE5/g$b;-><init>(LE5/g;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p3

    new-instance v0, Lv3/k;

    new-instance v1, LE5/g$c;

    invoke-direct {v1, p0, p1, p2}, LE5/g$c;-><init>(LE5/g;LC5/b;Landroid/view/View;)V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    iget v2, v2, LD8/a;->s:I

    sget-object v3, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {v0, v1, v2, v3}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {p3, v0}, Lv3/o;->a(Lv3/k;)V

    new-instance p3, LE5/g$d;

    invoke-direct {p3, p0, p1, p2}, LE5/g$d;-><init>(LE5/g;LC5/b;Landroid/view/View;)V

    iput-object p3, p1, LC5/b;->k:LD5/f;

    :try_start_0
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    iget-boolean v0, p1, LC5/b;->J:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    const v1, -0x12000001

    and-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, LE5/g$e;

    invoke-direct {v0, p0, p4, p1, p3}, LE5/g$e;-><init>(LE5/g;LE5/g$i;LC5/b;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, LE5/g$f;

    invoke-direct {v0, p0, p1, p4}, LE5/g$f;-><init>(LE5/g;LC5/b;LE5/g$i;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    new-instance v0, LE5/g$g;

    invoke-direct {v0, p0, p1, p2, p4}, LE5/g$g;-><init>(LE5/g;LC5/b;Landroid/view/View;LE5/g$i;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    return-void
.end method

.method public final f(LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "context",
            "inputField",
            "tittle",
            "listener"
        }
    .end annotation

    iget-object v0, p0, LE5/g;->c:LH5/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    iget-object v0, p1, LC5/b;->l:Ljava/lang/String;

    new-instance v1, LE5/g$h;

    invoke-direct {v1, p0, p1, p5, p3}, LE5/g$h;-><init>(LE5/g;LC5/b;LE5/g$i;Landroid/view/View;)V

    invoke-static {p4, v0, p2, v1}, LH5/b;->z1(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;LH5/b$g;)LH5/b;

    move-result-object p1

    iput-object p1, p0, LE5/g;->c:LH5/b;

    return-void
.end method

.method public final g(LC5/b;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "inputField"
        }
    .end annotation

    iget-boolean v0, p0, LE5/g;->a:Z

    if-nez v0, :cond_1

    iget-object p1, p1, LC5/b;->b:LD5/h;

    invoke-interface {p1}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, LE5/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    iput-object p1, p0, LE5/g;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LE5/g;->b:LC5/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, LE5/g;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, LE5/g;->g(LC5/b;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
