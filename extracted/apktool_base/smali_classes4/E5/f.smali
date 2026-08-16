.class public LE5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE5/f$i;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:LH5/a;

.field public d:LC5/b;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LE5/f;->a:Z

    return-void
.end method

.method public static synthetic a(LE5/f;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/f$i;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, LE5/f;->f(LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/f$i;)V

    return-void
.end method

.method public static synthetic b(LE5/f;LC5/b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE5/f;->h(LC5/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(LE5/f;)LH5/a;
    .locals 0

    iget-object p0, p0, LE5/f;->c:LH5/a;

    return-object p0
.end method


# virtual methods
.method public d(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 6
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
            "context"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LE5/f;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LE5/f$i;)V

    return-void
.end method

.method public e(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LE5/f$i;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

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
            "input",
            "tittle",
            "context",
            "listener"
        }
    .end annotation

    iput-object p4, p0, LE5/f;->b:Landroid/content/Context;

    iput-object p1, p0, LE5/f;->d:LC5/b;

    iput-object p2, p0, LE5/f;->e:Landroid/view/View;

    iget-object v0, p1, LC5/b;->b:LD5/h;

    if-eqz v0, :cond_3

    const v0, 0x7f09029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LE5/f;->f:Landroid/view/View;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->FloatNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p0, p1, p2}, LE5/f;->h(LC5/b;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const v0, 0x7f0900ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget v1, p1, LC5/b;->E:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v0, p4, v1}, LVc/e;->z(Landroid/widget/LinearLayout;Landroid/content/Context;I)V

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {v0, p4, v1}, LVc/e;->A(Landroid/widget/LinearLayout;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_1
    :goto_1
    new-instance v0, LE5/f$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LE5/f$a;-><init>(LE5/f;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/f$i;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LE5/f$b;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, LE5/f$b;-><init>(LE5/f;LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/f$i;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p3

    new-instance p4, Lv3/k;

    new-instance v0, LE5/f$c;

    invoke-direct {v0, p0, p1, p2}, LE5/f$c;-><init>(LE5/f;LC5/b;Landroid/view/View;)V

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    iget v1, v1, LD8/a;->s:I

    sget-object v2, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {p4, v0, v1, v2}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {p3, p4}, Lv3/o;->a(Lv3/k;)V

    new-instance p3, LE5/f$d;

    invoke-direct {p3, p0, p1, p2}, LE5/f$d;-><init>(LE5/f;LC5/b;Landroid/view/View;)V

    iput-object p3, p1, LC5/b;->k:LD5/f;

    :try_start_1
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    iget-boolean p4, p1, LC5/b;->J:Z

    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/TextView;->getImeOptions()I

    move-result p4

    const v0, -0x12000001

    and-int/2addr p4, v0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_2

    :catch_1
    move-exception p3

    goto :goto_3

    :cond_2
    :goto_2
    new-instance p4, LE5/f$e;

    invoke-direct {p4, p0, p5, p1, p3}, LE5/f$e;-><init>(LE5/f;LE5/f$i;LC5/b;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance p4, LE5/f$f;

    invoke-direct {p4, p0, p1, p5}, LE5/f$f;-><init>(LE5/f;LC5/b;LE5/f$i;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    new-instance p4, LE5/f$g;

    invoke-direct {p4, p0, p1, p2, p5}, LE5/f$g;-><init>(LE5/f;LC5/b;Landroid/view/View;LE5/f$i;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p1, p2}, LE5/f;->g(LC5/b;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final f(LC5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LE5/f$i;)V
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

    iget-object v0, p0, LE5/f;->c:LH5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    iget-object v0, p1, LC5/b;->l:Ljava/lang/String;

    new-instance v1, LE5/f$h;

    invoke-direct {v1, p0, p1, p5, p3}, LE5/f$h;-><init>(LE5/f;LC5/b;LE5/f$i;Landroid/view/View;)V

    invoke-static {p4, v0, p2, v1}, LH5/a;->w1(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;LH5/a$i;)LH5/a;

    move-result-object p1

    iput-object p1, p0, LE5/f;->c:LH5/a;

    return-void
.end method

.method public final g(LC5/b;Landroid/view/View;)V
    .locals 2
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

    const v0, 0x7f0900ca

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    iget-object p1, p1, LC5/b;->F:LD5/l;

    const v0, 0x7f0700f8

    if-eqz p1, :cond_1

    invoke-interface {p1}, LD5/l;->a()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v0, p0, LE5/f;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LE5/f;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LE5/f;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LE5/f;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, LE5/f;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LE5/f;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final h(LC5/b;Landroid/view/View;)V
    .locals 2
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

    iget-boolean v0, p0, LE5/f;->a:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p1, LC5/b;->b:LD5/h;

    invoke-interface {v0}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LE5/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, LE5/f;->g:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, LE5/f;->g(LC5/b;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LE5/f;->d:LC5/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, LE5/f;->f:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, LE5/f;->h(LC5/b;Landroid/view/View;)V
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
