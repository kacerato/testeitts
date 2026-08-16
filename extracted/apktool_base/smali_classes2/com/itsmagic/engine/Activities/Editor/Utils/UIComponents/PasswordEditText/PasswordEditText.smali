.class public Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/ImageView;

.field public d:Z


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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/TextWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textWatcher"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForColorStateLists"
        }
    .end annotation

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

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    const v0, 0x7f070260

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v0, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x35

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d:Z

    return v0
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getTextLength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    const v1, 0x7f070260

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d:Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getTextLength()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->c:Landroid/widget/ImageView;

    const v2, 0x7f07025e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->e()V

    :goto_0
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
