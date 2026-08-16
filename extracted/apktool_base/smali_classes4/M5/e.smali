.class public LM5/e;
.super LL5/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LL5/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LL5/b;->h:Z

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    invoke-super {p0}, LL5/b;->k()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DONE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LL5/b;->o(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, LL5/b;->n(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, LL5/b;->m(F)V

    invoke-virtual {p0}, LL5/b;->b()V

    new-instance v0, LM5/e$a;

    invoke-direct {v0, p0}, LM5/e$a;-><init>(LM5/e;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
