.class public Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;
    }
.end annotation


# instance fields
.field public final b:Landroid/view/LayoutInflater;

.field public final c:Z

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroidx/appcompat/widget/AppCompatEditText;

.field public g:Z

.field public h:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;

.field public i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->b:Landroid/view/LayoutInflater;

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->k(Landroid/content/Context;Landroid/util/AttributeSet;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->c:Z

    .line 8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->j(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->i:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/text/TextWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-static {}, LIc/i;->b()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->h:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->h:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)V

    :cond_1
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public getSearchButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f09042f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->d:Landroid/widget/ImageView;

    const v0, 0x7f090433

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    const v0, 0x7f090432

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "theme:projects_panel_button"

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g:Z

    return v0
.end method

.method public final synthetic j(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->h:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {}, LIc/i;->b()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f()V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final k(Landroid/content/Context;Landroid/util/AttributeSet;I)Z
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    sget-object v0, Lt3/b$s;->Yl:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public l()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g()V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->e()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->d()V

    :goto_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hint"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnSearchActionListener(Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->h:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView$b;

    return-void
.end method

.method public setOnSearchButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->f:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
