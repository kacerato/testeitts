.class public LZ5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Z

.field public c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LZ5/b;->b:Z

    iput-object p1, p0, LZ5/b;->a:Landroid/widget/LinearLayout;

    new-instance v1, LZ5/b$a;

    invoke-direct {v1, p0}, LZ5/b$a;-><init>(LZ5/b;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, LZ5/b;->d(Z)V

    return-void
.end method

.method public static synthetic a(LZ5/b;)Z
    .locals 0

    iget-boolean p0, p0, LZ5/b;->b:Z

    return p0
.end method

.method public static synthetic b(LZ5/b;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, LZ5/b;->c:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, LZ5/b;->b:Z

    return v0
.end method

.method public d(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    iput-boolean p1, p0, LZ5/b;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LZ5/b;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f070103

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, LZ5/b;->a:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LZ5/b;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f070104

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, LZ5/b;->a:Landroid/widget/LinearLayout;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickListener"
        }
    .end annotation

    iput-object p1, p0, LZ5/b;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
