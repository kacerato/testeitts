.class public La7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "La7/b;",
        "La7/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La7/a;


# direct methods
.method public constructor <init>(La7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, La7/a$c;->a:La7/a;

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

    check-cast p1, La7/c;

    check-cast p2, La7/b;

    invoke-virtual {p0, p1, p2, p3}, La7/a$c;->c(La7/c;La7/b;I)V

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

    invoke-virtual {p0, p1, p2}, La7/a$c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)La7/c;

    move-result-object p1

    return-object p1
.end method

.method public c(La7/c;La7/b;I)V
    .locals 3
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

    iget-object v0, p1, La7/c;->b:Landroid/widget/TextView;

    iget-object v1, p2, La7/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, La7/c;->d:Landroid/view/View;

    new-instance v1, La7/a$c$a;

    invoke-direct {v1, p0, p2}, La7/a$c$a;-><init>(La7/a$c;La7/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, La7/a$c;->a:La7/a;

    invoke-static {v0}, La7/a;->p1(La7/a;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, La7/c;->e:Landroid/view/View;

    iget-object v1, p0, La7/a$c;->a:La7/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-static {v0, v1, v2}, LVc/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p1, La7/c;->e:Landroid/view/View;

    new-instance v1, La7/a$c$b;

    invoke-direct {v1, p0, p1, p3, p2}, La7/a$c$b;-><init>(La7/a$c;La7/c;ILa7/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)La7/c;
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

    const v0, 0x7f0c0190

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, La7/c;

    invoke-direct {p2, p1}, La7/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
