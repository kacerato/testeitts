.class public LE5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LE5/i;->a:Z

    return-void
.end method

.method public static synthetic a(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, LE5/i;->d(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(LE5/i;LC5/b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE5/i;->e(LC5/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p0, p0, LC5/b;->b:LD5/h;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->z1(Ljava/lang/String;)J

    move-result-wide v0

    const-string p1, "temp"

    invoke-direct {p2, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    invoke-interface {p0, p2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public c(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 7
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

    iget-object v0, p1, LC5/b;->b:LD5/h;

    if-eqz v0, :cond_1

    const v0, 0x7f09029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->IntNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, LE5/i;->e(LC5/b;Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-instance v0, LE5/i$a;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LE5/i$a;-><init>(LE5/i;[F[FLC5/b;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p3

    new-instance v0, Lv3/k;

    new-instance v1, LE5/i$b;

    invoke-direct {v1, p0, p1, p2}, LE5/i$b;-><init>(LE5/i;LC5/b;Landroid/view/View;)V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    iget v2, v2, LD8/a;->s:I

    sget-object v3, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {v0, v1, v2, v3}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {p3, v0}, Lv3/o;->a(Lv3/k;)V

    new-instance p3, LE5/i$c;

    invoke-direct {p3, p0, p1, p2}, LE5/i$c;-><init>(LE5/i;LC5/b;Landroid/view/View;)V

    iput-object p3, p1, LC5/b;->k:LD5/f;

    :try_start_0
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    iget-boolean v0, p1, LC5/b;->J:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    const v1, -0x12000001

    and-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, LE5/h;

    invoke-direct {v0, p1}, LE5/h;-><init>(LC5/b;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, LE5/i$d;

    invoke-direct {v0, p0, p1}, LE5/i$d;-><init>(LE5/i;LC5/b;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    new-instance v0, LE5/i$e;

    invoke-direct {v0, p0, p1, p2}, LE5/i$e;-><init>(LE5/i;LC5/b;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-void
.end method

.method public final e(LC5/b;Landroid/view/View;)V
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

    iget-boolean v0, p0, LE5/i;->a:Z

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
    iget-object v0, p0, LE5/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    iput-object p1, p0, LE5/i;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method
