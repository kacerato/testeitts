.class public LH3/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH3/g;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "Ljava/lang/String;",
        "LH3/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LH3/g;


# direct methods
.method public constructor <init>(LH3/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH3/g$d;->a:LH3/g;

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

    check-cast p1, LH3/i;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, LH3/g$d;->c(LH3/i;Ljava/lang/String;I)V

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

    invoke-virtual {p0, p1, p2}, LH3/g$d;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LH3/i;

    move-result-object p1

    return-object p1
.end method

.method public c(LH3/i;Ljava/lang/String;I)V
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

    iget-object p3, p1, LH3/i;->b:Landroid/widget/ImageView;

    invoke-static {p2}, LH3/g;->z1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, LH3/g$d;->a:LH3/g;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LVc/c;

    invoke-direct {v2}, LVc/c;-><init>()V

    invoke-static {p3, v0, v1, v2}, LVc/e;->K(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;Lcom/bumptech/glide/load/resource/bitmap/h;)V

    iget-object p3, p1, LH3/i;->b:Landroid/widget/ImageView;

    new-instance v0, LH3/g$d$a;

    invoke-direct {v0, p0, p1, p2}, LH3/g$d$a;-><init>(LH3/g$d;LH3/i;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p1, LH3/i;->c:Landroid/widget/ImageView;

    const v0, 0x7f0701d8

    invoke-static {p3, v0}, LVc/e;->U(Landroid/widget/ImageView;I)V

    iget-object p3, p0, LH3/g$d;->a:LH3/g;

    invoke-static {p3}, LH3/g;->r1(LH3/g;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, LH3/i;->c:Landroid/widget/ImageView;

    iget-object p3, p0, LH3/g$d;->a:LH3/g;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f05003e

    invoke-static {p2, p3, v0}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object p2, p0, LH3/g$d;->a:LH3/g;

    invoke-static {p2}, LH3/g;->p1(LH3/g;)[Landroid/widget/ImageView;

    move-result-object p2

    const/4 p3, 0x0

    iget-object p1, p1, LH3/i;->c:Landroid/widget/ImageView;

    aput-object p1, p2, p3

    goto :goto_0

    :cond_0
    iget-object p1, p1, LH3/i;->c:Landroid/widget/ImageView;

    iget-object p2, p0, LH3/g$d;->a:LH3/g;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-direct {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p1, p2, p3}, LVc/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LH3/i;
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

    const v0, 0x7f0c00c2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LH3/i;

    invoke-direct {p2, p1}, LH3/i;-><init>(Landroid/view/View;)V

    return-object p2
.end method
