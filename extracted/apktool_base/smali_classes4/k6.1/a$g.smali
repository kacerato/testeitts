.class public Lk6/a$g;
.super LH7/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public final synthetic e:Lk6/a;


# direct methods
.method public constructor <init>(Lk6/a;Landroid/view/View;)V
    .locals 0
    .param p1    # Lk6/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$g;->e:Lk6/a;

    invoke-direct {p0, p1, p2}, LH7/d$a;-><init>(LH7/d;Landroid/view/View;)V

    iput-object p2, p0, Lk6/a$g;->b:Landroid/view/View;

    const p1, 0x7f09025a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lk6/a$g;->c:Landroid/widget/ImageView;

    const p1, 0x7f09022f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lk6/a$g;->d:Landroid/view/View;

    return-void
.end method

.method public static synthetic b(Lk6/a$g;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk6/a$g;->f(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    return-void
.end method

.method public static synthetic c(Lk6/a$g;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk6/a$g;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    return-void
.end method


# virtual methods
.method public a(LH7/a;LH7/d$c;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "ll"
        }
    .end annotation

    invoke-virtual {p1}, LH7/a;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->images:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->images:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, LT5/b;->I(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0701ce

    if-eqz v0, :cond_1

    iget-object v2, p0, Lk6/a$g;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lk6/a$g;->e:Lk6/a;

    iget-object v3, v3, LH7/d;->d:Landroid/content/Context;

    invoke-static {v2, v0, v1, v1, v3}, LVc/e;->a0(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lk6/a$g;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, LVc/e;->U(Landroid/widget/ImageView;I)V

    :goto_1
    iget-object v0, p0, Lk6/a$g;->d:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lk6/a$g;->b:Landroid/view/View;

    new-instance v0, Lk6/a$g$a;

    invoke-direct {v0, p0, p1}, Lk6/a$g$a;-><init>(Lk6/a$g;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final d(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->n()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->l(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->h(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk6/a$g;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->d(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".go"

    invoke-static {v2, v3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lk6/a$g$c;

    invoke-direct {v0, p0}, Lk6/a$g$c;-><init>(Lk6/a$g;)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->i(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/b$g;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lk6/a$g;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Theres no open project!"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    iget-object v1, p0, Lk6/a$g;->e:Lk6/a;

    invoke-static {v1}, Lk6/a;->p(Lk6/a;)Lk6/a$e;

    move-result-object v1

    invoke-interface {v1}, Lk6/a$e;->b()V

    new-instance v1, Lk6/a$g$b;

    invoke-direct {v1, p0, p1, v0}, Lk6/a$g$b;-><init>(Lk6/a$g;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lq7/a;)V

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->U1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
