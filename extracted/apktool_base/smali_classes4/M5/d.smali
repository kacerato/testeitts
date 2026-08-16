.class public LM5/d;
.super LL5/b;
.source "SourceFile"


# instance fields
.field public i:Ljava/lang/String;

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productId"
        }
    .end annotation

    invoke-direct {p0}, LL5/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LM5/d;->j:I

    iput-boolean v0, p0, LM5/d;->k:Z

    iput-object p1, p0, LM5/d;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic q(LM5/d;)Z
    .locals 0

    iget-boolean p0, p0, LM5/d;->k:Z

    return p0
.end method

.method public static synthetic r(LM5/d;Z)Z
    .locals 0

    iput-boolean p1, p0, LM5/d;->k:Z

    return p1
.end method

.method public static synthetic s(LM5/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, LM5/d;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(LM5/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LM5/d;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(LM5/d;)V
    .locals 0

    invoke-virtual {p0}, LM5/d;->w()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    invoke-super {p0}, LL5/b;->k()V

    sget-object v0, LI5/d;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CREATING_PROJECT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LL5/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LL5/b;->o(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, LL5/b;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, LM5/d;->w()V

    return-void
.end method

.method public final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_SOMETHING_WENT_WRONG:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_PREFIX:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_SOMETHING_WENT_WRONG:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, LL5/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PREPARING_PROJECT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LL5/b;->n(Ljava/lang/String;)V

    iget-object v0, p0, LM5/d;->i:Ljava/lang/String;

    new-instance v1, LM5/d$a;

    invoke-direct {v1, p0}, LM5/d$a;-><init>(LM5/d;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->Y1(Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    iget-boolean v0, p0, LM5/d;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LM5/d;->j:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DOWNLOAD_TEMPLATE_RETRY_FAILED:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LL5/b;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LM5/d;->j:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DOWNLOAD_TEMPLATE_RETRYING:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/3) - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LL5/b;->n(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LM5/d$b;

    invoke-direct {v0, p0, v1}, LM5/d$b;-><init>(LM5/d;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
