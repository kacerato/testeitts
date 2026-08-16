.class public LE5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LE5/e;->a:Z

    return-void
.end method

.method public static synthetic a(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, LE5/e;->d(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(LE5/e;LC5/b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE5/e;->f(LC5/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    :try_start_0
    iget-object p0, p0, LC5/b;->b:LD5/h;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string p3, "temp"

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->s1(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p2, p3, v0, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    invoke-interface {p0, p2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public c(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 11
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
            0x0
        }
        names = {
            "entry",
            "input",
            "tittle",
            "context"
        }
    .end annotation

    iput-object p4, p0, LE5/e;->b:Landroid/content/Context;

    iget-object v0, p1, LC5/b;->b:LD5/h;

    if-eqz v0, :cond_3

    const v0, 0x7f09029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->FloatNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p0, p1, p2}, LE5/e;->f(LC5/b;Landroid/view/View;)V
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
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, LE5/e$a;

    invoke-direct {v6, p0, p1, p3, p4}, LE5/e$a;-><init>(LE5/e;LC5/b;Landroid/widget/TextView;Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0, p4}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v8

    new-instance p4, LE5/e$b;

    move-object v1, p4

    move-object v2, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, LE5/e$b;-><init>(LE5/e;[F[FLandroid/os/Handler;Ljava/lang/Runnable;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;ILC5/b;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p3

    new-instance p4, Lv3/k;

    new-instance v0, LE5/e$c;

    invoke-direct {v0, p0, p1, p2}, LE5/e$c;-><init>(LE5/e;LC5/b;Landroid/view/View;)V

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    iget v1, v1, LD8/a;->s:I

    sget-object v2, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {p4, v0, v1, v2}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {p3, p4}, Lv3/o;->a(Lv3/k;)V

    new-instance p3, LE5/e$d;

    invoke-direct {p3, p0, p1, p2}, LE5/e$d;-><init>(LE5/e;LC5/b;Landroid/view/View;)V

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
    new-instance p4, LE5/d;

    invoke-direct {p4, p1}, LE5/d;-><init>(LC5/b;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance p4, LE5/e$e;

    invoke-direct {p4, p0, p1}, LE5/e$e;-><init>(LE5/e;LC5/b;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p3

    new-instance p4, LE5/e$f;

    invoke-direct {p4, p0, p1, p2}, LE5/e$f;-><init>(LE5/e;LC5/b;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p1, p2}, LE5/e;->e(LC5/b;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final e(LC5/b;Landroid/view/View;)V
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

    iget-object v0, p0, LE5/e;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LE5/e;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LE5/e;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LE5/e;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, LE5/e;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LE5/e;->b:Landroid/content/Context;

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

.method public final f(LC5/b;Landroid/view/View;)V
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

    iget-boolean v0, p0, LE5/e;->a:Z

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
    iget-object v1, p0, LE5/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, LE5/e;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, LE5/e;->e(LC5/b;Landroid/view/View;)V

    :cond_2
    return-void
.end method
