.class public LF5/c$Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c;->b(Landroid/content/Context;Ljava/lang/String;LF5/a;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LF5/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;LF5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$tittle",
            "val$brushListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LF5/c$Z;->a:Ljava/lang/String;

    iput-object p2, p0, LF5/c$Z;->b:LF5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "entry"
        }
    .end annotation

    const p3, 0x7f090544

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, LF5/c$Z;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LF5/c$Z;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p3, 0x7f09021d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p3, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p3

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v0

    sget-object v1, LK8/a;->r:LO8/b;

    invoke-virtual {v1}, LO8/b;->b()I

    move-result v1

    iget-object v2, p0, LF5/c$Z;->b:LF5/a;

    invoke-interface {v2}, LF5/a;->getSelected()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    if-gez v2, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_4

    sget-object v7, LK8/a;->r:LO8/b;

    invoke-virtual {v7, v6}, LO8/b;->c(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v5, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v8, 0x7f070202

    invoke-static {p2, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-ne v6, v2, :cond_3

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    aput-object v9, v4, v3

    goto :goto_2

    :cond_3
    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v10, -0x1

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v8, v7, p2}, LVc/e;->D(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v7, LF5/c$Z$a;

    invoke-direct {v7, p0, v4, v9, v6}, LF5/c$Z$a;-><init>(LF5/c$Z;[Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method
