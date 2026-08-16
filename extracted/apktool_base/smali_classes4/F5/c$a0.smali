.class public LF5/c$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c;->n(Landroid/content/Context;Ljava/lang/String;LF5/f;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LF5/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;LF5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$tittle",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LF5/c$a0;->a:Ljava/lang/String;

    iput-object p2, p0, LF5/c$a0;->b:LF5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
    .locals 16
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7f090544

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, LF5/c$a0;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, LF5/c$a0;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v3, 0x7f09021d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayout;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v4

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v5

    iget-object v0, v1, LF5/c$a0;->b:LF5/f;

    invoke-interface {v0}, LF5/f;->count()I

    move-result v6

    iget-object v0, v1, LF5/c$a0;->b:LF5/f;

    invoke-interface {v0}, LF5/f;->getSelected()I

    move-result v0

    const/4 v7, 0x0

    if-ge v0, v6, :cond_2

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v8, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v7

    :goto_2
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    aput-object v0, v9, v7

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v10

    move v11, v7

    :goto_3
    if-ge v11, v6, :cond_5

    iget-object v0, v1, LF5/c$a0;->b:LF5/f;

    invoke-interface {v0, v11}, LF5/f;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iput v10, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v10, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v12, 0x7f070202

    invoke-static {v2, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v12

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-ne v11, v8, :cond_3

    sget-object v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v12

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    aput-object v13, v9, v7

    goto :goto_4

    :cond_3
    sget-object v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    invoke-static {v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v12

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_4
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    const/4 v14, -0x1

    iput v14, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v14, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v13, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iput v14, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v14, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".meta/thumb.png"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v12, v14}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_6

    :cond_4
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v12}, LD7/b;->c(Ljava/io/File;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    const v0, 0x7f0700de

    invoke-static {v12, v0}, LVc/e;->U(Landroid/widget/ImageView;I)V

    :goto_6
    new-instance v0, LF5/c$a0$a;

    invoke-direct {v0, v1, v9, v13, v11}, LF5/c$a0$a;-><init>(LF5/c$a0;[Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_5
    return-void
.end method
