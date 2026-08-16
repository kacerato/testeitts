.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getAEAL(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:I

.field public e:I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->d:I

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->e:I

    return-void
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->g()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->h()V

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->e:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->e:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->d:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->d:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->e:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->e:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->e:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->d:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->e:I

    invoke-static {v0, v1, v2}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    return-void
.end method

.method public onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
    .locals 3
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

    iget-object p2, p3, LC5/b;->h:Ljava/lang/Object;

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const p3, 0x7f09033b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p3, 0x7f0900ad

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->a:Landroid/widget/ImageView;

    const v1, 0x7f0900ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->b:Landroid/widget/ImageView;

    const v2, 0x7f0900ac

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->c:Landroid/widget/ImageView;

    iget-boolean v0, p2, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->g()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;->h()V

    :goto_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i$a;

    invoke-direct {v0, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i$b;

    invoke-direct {p3, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i$c;

    invoke-direct {p3, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$i;Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
