.class public Lj7/g;
.super Lj7/e;
.source "SourceFile"


# instance fields
.field public r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "path",
            "folder"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lj7/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lj7/d;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj7/g;->r:Z

    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;Ll7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "viewHolder"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lj7/e;->A(Landroid/content/Context;Ll7/a;)V

    iget-object p1, p0, LF7/i;->a:Ljava/lang/String;

    const-string p2, ".java"

    invoke-static {p1, p2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LF7/i;->a:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld8/j;->J(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lj7/g;->r:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lj7/g;->r:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)LF7/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, LF7/m;

    const v0, 0x7f0c01c5

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, LF7/m;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public w()I
    .locals 1

    iget-boolean v0, p0, Lj7/g;->r:Z

    if-eqz v0, :cond_0

    const v0, 0x7f05003c

    return v0

    :cond_0
    invoke-super {p0}, Lj7/e;->w()I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    iget-boolean v0, p0, Lj7/g;->r:Z

    if-eqz v0, :cond_0

    const v0, 0x7f05003c

    return v0

    :cond_0
    invoke-super {p0}, Lj7/e;->y()I

    move-result v0

    return v0
.end method

.method public z(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Ll7/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, Ll7/a;

    const v0, 0x7f0c007c

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ll7/a;-><init>(Landroid/view/View;)V

    return-object p1
.end method
