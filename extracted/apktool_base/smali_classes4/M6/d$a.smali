.class public LM6/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM6/d;-><init>(Landroid/content/Context;Ljava/util/List;LM6/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "LM6/b;",
        "LM6/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:LM6/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LM6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$adapterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM6/d$a;->a:Landroid/content/Context;

    iput-object p2, p0, LM6/d$a;->b:LM6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le7/b;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "element",
            "position"
        }
    .end annotation

    check-cast p1, LM6/c;

    check-cast p2, LM6/b;

    invoke-virtual {p0, p1, p2, p3}, LM6/d$a;->c(LM6/c;LM6/b;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LM6/d$a;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LM6/c;

    move-result-object p1

    return-object p1
.end method

.method public c(LM6/c;LM6/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "element",
            "position"
        }
    .end annotation

    iget-object v0, p1, LM6/c;->b:Landroid/widget/TextView;

    iget-object v1, p2, LM6/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, LM6/c;->c:Landroid/widget/ImageView;

    iget v1, p2, LM6/b;->i:I

    invoke-static {v0, v1}, LVc/e;->U(Landroid/widget/ImageView;I)V

    iget-object v0, p1, LM6/c;->d:Landroid/view/View;

    iget-object v1, p0, LM6/d$a;->a:Landroid/content/Context;

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_0

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LAc/b;

    :goto_0
    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p3

    goto :goto_1

    :cond_0
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    goto :goto_0

    :goto_1
    invoke-static {v0, v1, p3}, LVc/e;->u(Landroid/view/View;Landroid/content/Context;I)V

    iget-object p3, p2, LM6/b;->h:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p1, LM6/c;->e:Landroid/widget/ImageView;

    const v0, 0x7f070165

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p1, LM6/c;->e:Landroid/widget/ImageView;

    new-instance v0, LM6/d$a$a;

    invoke-direct {v0, p0, p2}, LM6/d$a$a;-><init>(LM6/d$a;LM6/b;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_1
    iget-object p3, p1, LM6/c;->e:Landroid/widget/ImageView;

    const v0, 0x7f0701da

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p1, LM6/c;->e:Landroid/widget/ImageView;

    new-instance v0, LM6/d$a$b;

    invoke-direct {v0, p0, p2}, LM6/d$a$b;-><init>(LM6/d$a;LM6/b;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-virtual {p1}, Le7/b;->a()Landroid/view/View;

    move-result-object p1

    new-instance p3, LM6/d$a$c;

    invoke-direct {p3, p0, p2}, LM6/d$a$c;-><init>(LM6/d$a;LM6/b;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LM6/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    const v0, 0x7f0c01af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LM6/c;

    invoke-direct {p2, p1}, LM6/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
