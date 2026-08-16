.class public LF3/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "LF3/b;",
        "LF3/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LF3/a;


# direct methods
.method public constructor <init>(LF3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LF3/a$b;->a:LF3/a;

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

    check-cast p1, LF3/c;

    check-cast p2, LF3/b;

    invoke-virtual {p0, p1, p2, p3}, LF3/a$b;->c(LF3/c;LF3/b;I)V

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

    invoke-virtual {p0, p1, p2}, LF3/a$b;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LF3/c;

    move-result-object p1

    return-object p1
.end method

.method public c(LF3/c;LF3/b;I)V
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

    iget-object p3, p1, LF3/c;->b:Landroid/widget/TextView;

    iget-object v0, p2, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, LF3/b;->a()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_3

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    const-string v0, "Canceled"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    iget-object v0, p0, LF3/a$b;->a:LF3/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0500a9

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_1
    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    const-string v0, "Success"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN_DARK:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    const-string v0, "Waiting.."

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    const-string v0, "Compiling!"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    iget-object p3, p2, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object p3, p3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p2, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object p3, p3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/e;

    iget-object p3, p3, Ld8/e;->b:Ljava/lang/String;

    const-string v0, "Duplicate class name"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    const-string v0, "Duplicate class name!"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    const-string v0, "Sintax errors!"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p3, p1, LF3/c;->c:Landroid/widget/TextView;

    iget-object v0, p0, LF3/a$b;->a:LF3/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05003c

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object p3, p1, LF3/c;->d:Landroid/widget/ImageView;

    iget-object v0, p2, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LF3/a$b;->a:LF3/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v0, v1}, LIc/l;->i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    iget-object p1, p1, LF3/c;->e:Landroid/view/View;

    new-instance p3, LF3/a$b$a;

    invoke-direct {p3, p0, p2}, LF3/a$b$a;-><init>(LF3/a$b;LF3/b;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LF3/c;
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

    const v0, 0x7f0c005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LF3/c;

    invoke-direct {p2, p1}, LF3/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
