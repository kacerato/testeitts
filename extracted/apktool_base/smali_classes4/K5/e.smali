.class public LK5/e;
.super LJ5/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJ5/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LJ5/b;->e:Z

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    invoke-super {p0}, LJ5/b;->g()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOADING_EDITOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ5/b;->k(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, LJ5/b;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, LJ5/b;->b()V

    return-void
.end method
