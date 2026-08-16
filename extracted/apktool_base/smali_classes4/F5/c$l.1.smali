.class public LF5/c$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/ImageView;

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:LF5/c$o0;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(LF5/c$o0;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$tittleText",
            "val$inspectorMemory",
            "val$context",
            "val$layoutInflater"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LF5/c$l;->e:LF5/c$o0;

    iput-object p2, p0, LF5/c$l;->f:Ljava/lang/String;

    iput-object p3, p0, LF5/c$l;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    iput-object p4, p0, LF5/c$l;->h:Landroid/content/Context;

    iput-object p5, p0, LF5/c$l;->i:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LF5/c$l;->c:Z

    return-void
.end method

.method public static synthetic c(LF5/c$l;)V
    .locals 0

    invoke-virtual {p0}, LF5/c$l;->g()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 9

    iget-boolean v0, p0, LF5/c$l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LF5/c$l;->b:Landroid/widget/ImageView;

    const v1, 0x7f07024a

    iget-object v2, p0, LF5/c$l;->h:Landroid/content/Context;

    invoke-static {v0, v1, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v0, p0, LF5/c$l;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LF5/c$l;->b:Landroid/widget/ImageView;

    const v1, 0x7f070249

    iget-object v2, p0, LF5/c$l;->h:Landroid/content/Context;

    invoke-static {v0, v1, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object v0, p0, LF5/c$l;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, LF5/c$l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v0, p0, LF5/c$l;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LF5/c$l;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LF5/c$l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LC5/b;

    iget-object v2, v5, LC5/b;->n:LC5/b$a;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, LF5/c$l;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, LF5/c$l;->i:Landroid/view/LayoutInflater;

    iget-object v4, p0, LF5/c$l;->h:Landroid/content/Context;

    invoke-static {v2, v3, v5, v1, v4}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_1

    :cond_1
    sget-object v3, LC5/b$a;->Component:LC5/b$a;

    if-ne v2, v3, :cond_2

    iget-object v3, p0, LF5/c$l;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, LF5/c$l;->i:Landroid/view/LayoutInflater;

    iget-object v7, p0, LF5/c$l;->h:Landroid/content/Context;

    new-instance v8, LF5/c$l$b;

    invoke-direct {v8, p0}, LF5/c$l$b;-><init>(LF5/c$l;)V

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, LF5/c$l;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, LF5/c$l;->i:Landroid/view/LayoutInflater;

    const/4 v7, 0x1

    iget-object v8, p0, LF5/c$l;->h:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object v0, p0, LF5/c$l;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, LF5/c$l;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LF5/c$l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LF5/c$l;->c:Z

    :cond_1
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LF5/c$l;->e:LF5/c$o0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF5/c$l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, LF5/c$l;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LF5/c$l;->f()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, LF5/c$l;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
    .locals 0
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

    const p2, 0x7f0901ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, LF5/c$l;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f090372

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, LF5/c$l;->b:Landroid/widget/ImageView;

    const p2, 0x7f090544

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, LF5/c$l;->e()V

    const p3, 0x7f0903e3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, LF5/c$l$a;

    invoke-direct {p3, p0}, LF5/c$l$a;-><init>(LF5/c$l;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LF5/c$l;->f:Ljava/lang/String;

    invoke-static {p1}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LF5/c$l;->e:LF5/c$o0;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p1, p2}, LF5/c$o0;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LF5/c$l;->d:Ljava/util/List;

    invoke-virtual {p0}, LF5/c$l;->d()V

    return-void
.end method
