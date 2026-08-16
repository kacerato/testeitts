.class public LK5/b;
.super LJ5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK5/b$b;
    }
.end annotation


# instance fields
.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJ5/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LK5/b;->f:I

    iput v0, p0, LK5/b;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, LJ5/b;->a()V

    new-instance v0, LK5/b$a;

    invoke-direct {v0, p0}, LK5/b$a;-><init>(LK5/b;)V

    invoke-static {v0}, Lmc/f;->d(Lmc/f$c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LJ5/b;->b()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-super {p0}, LJ5/b;->g()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COMPILING_SHADERS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ5/b;->j(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {p0, v0}, LJ5/b;->k(Ljava/lang/String;)V

    return-void
.end method
