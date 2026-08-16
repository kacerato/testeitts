.class public Lw5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw5/c$H0;,
        Lw5/c$I0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lw5/j$m0;ZZZLw5/c$I0;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "name",
            "type",
            "hidePackage",
            "hideImports",
            "hideClass",
            "listener"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v1

    const-string v0, ".java"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lw5/c$G;

    move-object v0, v11

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lw5/c$G;-><init>(Lq7/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lw5/j$m0;ZZZLw5/c$I0;)V

    const/4 v0, 0x0

    invoke-static {v0, v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static B(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$H;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$H;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static C(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$p;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$p;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static D(Landroid/content/Context;Ljava/lang/String;ZLw5/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "createExample",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setInputType(I)V

    const-string v1, "MyModule"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lw5/c$a0;

    move-object v2, v8

    move-object v4, p1

    move-object v5, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lw5/c$a0;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;ZLw5/l;)V

    invoke-virtual {v0, v1, v8}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$b0;

    invoke-direct {p1}, Lw5/c$b0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static E(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "CustomObjectMenu"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$n;

    invoke-direct {v3, v1, p1, p0, p2}, Lw5/c$n;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$o;

    invoke-direct {p1}, Lw5/c$o;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    return-void
.end method

.method public static F(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$e;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$e;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$z0;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$z0;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Ljava/lang/String;Lw5/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "primitive",
            "defaultText",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New vertex name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f11006d

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lw5/c$k;

    move-object v2, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lw5/c$k;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Lw5/l;)V

    invoke-virtual {v0, p3, v1}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$v;

    invoke-direct {p1}, Lw5/c$v;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$G0;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$G0;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    new-instance v1, Lw5/c$q;

    invoke-direct {v1, v0, p0, p1, p2}, Lw5/c$q;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    const-string p1, ".world"

    invoke-static {p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static K(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$f;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$f;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static L(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$a;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$a;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static M(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New NoCode Graph name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Graph"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$W;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$W;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$X;

    invoke-direct {p1}, Lw5/c$X;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static N(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbd/a;

    const-string v2, "Name the new noise"

    const-string v3, "Nome do novo noise"

    invoke-direct {v1, v2, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Noise"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$j0;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$j0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$k0;

    invoke-direct {p1}, Lw5/c$k0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static O(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p2, 0x43e10000    # 450.0f

    const-string v0, "https://itsmagic.com.br/index.html"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New post processing name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "MyEffect"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$F;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$F;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$I;

    invoke-direct {p1}, Lw5/c$I;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_1
    return-void
.end method

.method public static P(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New render texture name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Render texture"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$l0;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$l0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$m0;

    invoke-direct {p1}, Lw5/c$m0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static Q(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p2, 0x43e10000    # 450.0f

    const-string v0, "https://itsmagic.com.br/index.html"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New skybox shader name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "MySky"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$J;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$J;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$K;

    invoke-direct {p1}, Lw5/c$K;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_1
    return-void
.end method

.method public static R(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbd/a;

    const-string v2, "Name the new TerrainData"

    const-string v3, "Nome do novo TerrainData"

    invoke-direct {v1, v2, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Terrain1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$c0;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$c0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$e0;

    invoke-direct {p1}, Lw5/c$e0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static S(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New text name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "File"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$D;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$D;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$E;

    invoke-direct {p1}, Lw5/c$E;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static T(Landroid/content/Context;Ljava/lang/String;Lw5/l;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks",
            "grid"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbd/a;

    const-string v2, "Name the new PNG Texture"

    const-string v3, "Nome da nova Textura PNG"

    invoke-direct {v1, v2, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setInputType(I)V

    const-string v1, "Texture"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lw5/c$h0;

    move-object v2, v8

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lw5/c$h0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;ZLw5/l;)V

    invoke-virtual {v0, v1, v8}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$i0;

    invoke-direct {p1}, Lw5/c$i0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static U(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p2, 0x43e10000    # 450.0f

    const-string v0, "https://itsmagic.com.br/index.html"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New post processing name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "MyEffect"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$N;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$N;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$O;

    invoke-direct {p1}, Lw5/c$O;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_1
    return-void
.end method

.method public static V(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New style name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Style"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$z;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$z;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$A;

    invoke-direct {p1}, Lw5/c$A;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static W(Landroid/content/Context;Ljava/lang/String;Lw5/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks",
            "templateFile",
            "defaultName",
            "templateTitle"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p2, 0x43e10000    # 450.0f

    const-string p3, "https://itsmagic.com.br/index.html"

    const/4 p4, 0x0

    invoke-static {p3, p4, p0, p1, p2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New VFX shader name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 p5, 0x40

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f11006d

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lw5/c$R;

    move-object v1, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lw5/c$R;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, p4, p5}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$T;

    invoke-direct {p1}, Lw5/c$T;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_1
    return-void
.end method

.method public static X(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbd/a;

    const-string v2, "Name the new output file"

    const-string v3, "Nome do novo arquivo de saida de video"

    invoke-direct {v1, v2, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "VideoOutput"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$t0;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$t0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$u0;

    invoke-direct {p1}, Lw5/c$u0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static Y(Landroid/content/Context;Ljava/lang/String;ZLw5/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "isPostProcessing",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p2, 0x43e10000    # 450.0f

    const-string p3, "https://itsmagic.com.br/index.html"

    const/4 v0, 0x0

    invoke-static {p3, v0, p0, p1, p2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New Vulkan Graph name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setInputType(I)V

    const-string v1, "Graph"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lw5/c$U;

    move-object v2, v8

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lw5/c$U;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;ZLw5/l;)V

    invoke-virtual {v0, v1, v8}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$V;

    invoke-direct {p1}, Lw5/c$V;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_1
    return-void
.end method

.method public static Z(Landroid/app/Activity;Ljava/lang/String;ZLw5/l;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "includeSourceFolder",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_5

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ZIP_FOLDER:LAc/b;

    :goto_0
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ZIP_FILES:LAc/b;

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    if-nez p1, :cond_1

    const-string v1, ""

    goto :goto_2

    :cond_1
    move-object v1, p1

    :goto_2
    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    invoke-static {v1}, LTc/b;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    move-object v4, v1

    goto :goto_6

    :cond_4
    :goto_5
    const-string v1, "archive"

    goto :goto_4

    :goto_6
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lw5/c$x0;

    move-object v2, v9

    move-object v5, p1

    move-object v6, p0

    move-object v7, p3

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lw5/c$x0;-><init>(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lw5/l;Z)V

    invoke-virtual {v0, v1, v9}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$y0;

    invoke-direct {p1}, Lw5/c$y0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_5
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ZLw5/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "searchDependency",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_2

    sget-object v0, LW7/b;->j:Ld8/j;

    sget-boolean v0, Ld8/j;->B:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Please install Java runtime libraries"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Please fix all script erros before creating a ITJar"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "Create a itjar file"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-static {p1}, LTc/b;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lw5/c$v0;

    move-object v2, v8

    move-object v4, p1

    move-object v5, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lw5/c$v0;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/app/Activity;ZLw5/l;)V

    invoke-virtual {v0, v1, v8}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$w0;

    invoke-direct {p1}, Lw5/c$w0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_2
    return-void
.end method

.method public static a0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "pluginFile",
            "pluginName"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2, p0}, LD8/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lw5/c$E0;

    invoke-direct {v1, p0, p2}, Lw5/c$E0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Ly8/a;->c(Ljava/io/File;Ljava/io/File;Ly8/b;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p2, 0x43e10000    # 450.0f

    const-string v0, "https://itsmagic.com.br/index.html"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New ambient light shader name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "MyAmbient"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$L;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$L;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$M;

    invoke-direct {p1}, Lw5/c$M;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New graph name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "AnimGraph"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$x;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$x;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$y;

    invoke-direct {p1}, Lw5/c$y;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Animation"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$Y;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$Y;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$Z;

    invoke-direct {p1}, Lw5/c$Z;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$q0;

    invoke-direct {v0, p0, p1, p2}, Lw5/c$q0;-><init>(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const-string p0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {p0, v0}, Lv5/a;->x1(Ljava/lang/String;Lv5/a$i;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "panoramaIPP",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New cubemap name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-static {p1, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_cb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$n0;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$n0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$p0;

    invoke-direct {p1}, Lw5/c$p0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New cubemap name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Cubemap"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$r0;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$r0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$s0;

    invoke-direct {p1}, Lw5/c$s0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "inProjectPath",
            "callbacks"
        }
    .end annotation

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-static {p1, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " copy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$C0;

    invoke-direct {v3, v1, p1, p2, p0}, Lw5/c$C0;-><init>(Landroid/widget/EditText;Ljava/lang/String;Lw5/l;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$D0;

    invoke-direct {p1}, Lw5/c$D0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;ZLw5/l;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "searchDependency",
            "callbacks"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p3

    if-eqz v6, :cond_4

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->a:LD8/a;

    invoke-virtual {v0, p0}, LD8/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_3

    array-length v11, v10

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".itsmpack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lw5/c$B0;

    invoke-direct {v4, p0, v2}, Lw5/c$B0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lnd/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLy8/b;Landroid/content/Context;)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lw5/l;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;ZLw5/l;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "searchDependency",
            "callbacks"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p3

    if-eqz v6, :cond_4

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->a:LD8/a;

    invoke-virtual {v0, p0}, LD8/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_3

    array-length v11, v10

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".itsmpack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lw5/c$A0;

    invoke-direct {v4, p0, v2}, Lw5/c$A0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lnd/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLy8/b;Landroid/content/Context;)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lw5/l;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static k(Landroid/app/Activity;Ljava/lang/String;Lw5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New json name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "File"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$B;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$B;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$C;

    invoke-direct {p1}, Lw5/c$C;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New material name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Material"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$u;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$u;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$w;

    invoke-direct {p1}, Lw5/c$w;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p2, 0x43e10000    # 450.0f

    const-string v0, "https://itsmagic.com.br/index.html"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New shader name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "MyShader"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$P;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$P;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$Q;

    invoke-direct {p1}, Lw5/c$Q;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_1
    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbd/a;

    const-string v2, "Name the new navmesh file"

    const-string v3, "Nome do novo navmesh bake"

    invoke-direct {v1, v2, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "NavMesh"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$f0;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$f0;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$g0;

    invoke-direct {p1}, Lw5/c$g0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    new-instance v1, Lw5/c$r;

    invoke-direct {v1, v0, p0, p1, p2}, Lw5/c$r;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    const-string p1, ".ar"

    invoke-static {p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$b;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$b;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$c;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$c;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "CustomDirectoryMenu"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$l;

    invoke-direct {v3, v1, p1, p0, p2}, Lw5/c$l;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$m;

    invoke-direct {p1}, Lw5/c$m;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$d;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$d;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$o0;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$o0;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "CustomFileIcon"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$i;

    invoke-direct {v3, v1, p1, p0, p2}, Lw5/c$i;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$j;

    invoke-direct {p1}, Lw5/c$j;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "CustomFileMenu"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$g;

    invoke-direct {v3, v1, p1, p0, p2}, Lw5/c$g;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$h;

    invoke-direct {p1}, Lw5/c$h;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lw5/c$H0;

    invoke-direct {v0, p0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "Folder"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw5/c$s;

    invoke-direct {v3, v1, p0, p1, p2}, Lw5/c$s;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    invoke-virtual {v0, v2, v3}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110037

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw5/c$t;

    invoke-direct {p1}, Lw5/c$t;-><init>()V

    invoke-virtual {v0, p0, p1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$d0;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$d0;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "insideProjectFullPath",
            "callbacks"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$S;

    invoke-direct {v2, v0, p0, p1, p2}, Lw5/c$S;-><init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    const/4 p0, 0x0

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->e(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$i;)V

    return-void
.end method
