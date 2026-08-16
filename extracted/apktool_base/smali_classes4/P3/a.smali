.class public LP3/a;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Cache"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic D(LP3/a;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, LP3/a;->J(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(LP3/a;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, LP3/a;->K(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic F(LP3/a;)V
    .locals 0

    invoke-virtual {p0}, LP3/a;->H()V

    return-void
.end method

.method public static synthetic G(LP3/a;)Z
    .locals 0

    invoke-virtual {p0}, LP3/a;->I()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final H()V
    .locals 2

    new-instance v0, LP3/a$f;

    invoke-direct {v0, p0}, LP3/a$f;-><init>(LP3/a;)V

    const-string v1, "Clearing cache..."

    invoke-static {v1, v0}, LZ6/g;->s1(Ljava/lang/String;LZ6/g$c;)V

    return-void
.end method

.method public final I()Z
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    invoke-virtual {v1}, LD8/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const-string v2, "/ITsMagic/cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    aget-object v5, v1, v4

    invoke-static {v5}, Lid/a;->g(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v3, v2

    :cond_7
    :goto_1
    return v3
.end method

.method public final J(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p1}, Lid/a;->j(Ljava/io/File;)J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x49800000    # 1048576.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x44800000    # 1024.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    div-float/2addr p1, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.2f GB"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.2f MB"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final K(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "Cache"

    const-string v0, "Failed to open the clear cache dialog."

    invoke-static {p1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "Clear cache"

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string p1, "Do you want to remove all cached files from the editor? The app will be closed right after the cache is cleared."

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string p1, "Clear"

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string p1, "Cancel"

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p1, LP3/a$d;

    invoke-direct {p1, p0}, LP3/a$d;-><init>(LP3/a;)V

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p1, LP3/a$e;

    invoke-direct {p1, p0}, LP3/a$e;-><init>(LP3/a;)V

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, LP3/a$a;

    invoke-direct {v3, p0, v2, v1}, LP3/a$a;-><init>(LP3/a;[Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v3}, LO9/b;->d(Ljava/lang/Runnable;)V

    new-instance v1, LC5/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total cache size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, LP3/a$b;

    invoke-direct {v4, p0, v2}, LP3/a$b;-><init>(LP3/a;[Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-direct {v1, v3, v2, v4}, LC5/b;-><init>(Ljava/lang/String;ILD5/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LP3/a$c;

    invoke-direct {v2, p0, p1}, LP3/a$c;-><init>(LP3/a;Landroid/content/Context;)V

    const-string p1, "Clear cache"

    invoke-direct {v1, v2, p1}, LC5/b;-><init>(LD5/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
