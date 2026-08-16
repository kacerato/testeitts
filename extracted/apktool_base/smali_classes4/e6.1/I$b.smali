.class public Le6/I$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/I;->t1()Le7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "Le6/I$c;",
        "Le6/I$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le6/I;


# direct methods
.method public constructor <init>(Le6/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Le6/I$b;->a:Le6/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Le6/I$b;Le6/I$c;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/I$b;->e(Le6/I$c;Landroid/view/View;)V

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
            "entry",
            "position"
        }
    .end annotation

    check-cast p1, Le6/I$d;

    check-cast p2, Le6/I$c;

    invoke-virtual {p0, p1, p2, p3}, Le6/I$b;->d(Le6/I$d;Le6/I$c;I)V

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

    invoke-virtual {p0, p1, p2}, Le6/I$b;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le6/I$d;

    move-result-object p1

    return-object p1
.end method

.method public d(Le6/I$d;Le6/I$c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "entry",
            "position"
        }
    .end annotation

    invoke-static {p1}, Le6/I$d;->c(Le6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_1

    invoke-static {p1}, Le6/I$d;->c(Le6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p2}, Le6/I$c;->c(Le6/I$c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Le6/I$c;->c(Le6/I$c;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {p1}, Le6/I$d;->d(Le6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p1}, Le6/I$d;->d(Le6/I$d;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p2}, Le6/I$c;->d(Le6/I$c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Le6/I$c;->d(Le6/I$c;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Le7/b;->a()Landroid/view/View;

    move-result-object p1

    new-instance p3, Le6/J;

    invoke-direct {p3, p0, p2}, Le6/J;-><init>(Le6/I$b;Le6/I$c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic e(Le6/I$c;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Le6/I$b;->a:Le6/I;

    invoke-static {p2}, Le6/I;->s1(Le6/I;)Le6/X;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Le6/I$c;->e(Le6/I$c;)Lga/p;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Le6/I$b;->a:Le6/I;

    invoke-static {p2}, Le6/I;->s1(Le6/I;)Le6/X;

    move-result-object p2

    invoke-static {p1}, Le6/I$c;->e(Le6/I$c;)Lga/p;

    move-result-object p1

    invoke-virtual {p2, p1}, Le6/X;->r(Lga/p;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Le6/I$c;->a(Le6/I$c;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Le6/I$b;->a:Le6/I;

    invoke-static {p2}, Le6/I;->s1(Le6/I;)Le6/X;

    move-result-object p2

    invoke-static {p1}, Le6/I$c;->a(Le6/I$c;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    invoke-virtual {p2, p1}, Le6/X;->q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Le6/I$b;->a:Le6/I;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le6/I$d;
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

    const v0, 0x7f0c0154

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Le6/I$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Le6/I$d;-><init>(Landroid/view/View;Le6/I$a;)V

    return-object p2
.end method
