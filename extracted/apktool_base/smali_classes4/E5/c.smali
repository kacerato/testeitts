.class public LE5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LE5/c;->a:Z

    return-void
.end method

.method public static synthetic a(LC5/b;Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LE5/c;->c(LC5/b;Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(LC5/b;Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p4, 0x6

    const/4 v0, 0x0

    if-ne p3, p4, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, LTc/b;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    const-string v1, "temp"

    if-lt p4, p3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    iget-object p0, p0, LC5/b;->b:LD5/h;

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p3, v1, p2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p3}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LC5/b;->b:LD5/h;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p2, v1, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public b(LC5/b;Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 1
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
            "positionInAdapter"
        }
    .end annotation

    iget-object p3, p1, LC5/b;->b:LD5/h;

    if-eqz p3, :cond_2

    const p3, 0x7f09057b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    iget-object v0, p1, LC5/b;->f:LD5/i;

    if-eqz v0, :cond_0

    new-instance v0, LE5/c$a;

    invoke-direct {v0, p0, p1, p4}, LE5/c$a;-><init>(LE5/c;LC5/b;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p3, 0x7f09029b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->SingleLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {p3, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    iget-object p3, p1, LC5/b;->b:LD5/h;

    invoke-interface {p3}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object p3

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-static {p3, p4}, LTc/b;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    new-instance p3, LE5/c$b;

    invoke-direct {p3, p0, p1, p2}, LE5/c$b;-><init>(LE5/c;LC5/b;Landroid/view/View;)V

    iput-object p3, p1, LC5/b;->k:LD5/f;

    :try_start_0
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    iget-boolean p4, p1, LC5/b;->J:Z

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/TextView;->getImeOptions()I

    move-result p4

    const v0, -0x12000001

    and-int/2addr p4, v0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p4, LE5/b;

    invoke-direct {p4, p1, p2}, LE5/b;-><init>(LC5/b;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance p4, LE5/c$c;

    invoke-direct {p4, p0, p1, p2}, LE5/c$c;-><init>(LE5/c;LC5/b;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    new-instance p4, LE5/c$d;

    invoke-direct {p4, p0, p1, p2}, LE5/c$d;-><init>(LE5/c;LC5/b;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    return-void
.end method
