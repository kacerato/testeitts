.class public LK5/c;
.super LJ5/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJ5/b;-><init>()V

    return-void
.end method

.method public static synthetic m(LK5/c;Ljava/io/File;Ljava/lang/String;ZLjava/io/File;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LK5/c;->n(Ljava/io/File;Ljava/lang/String;ZLjava/io/File;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 4

    invoke-super {p0}, LJ5/b;->g()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOADING_EDITOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ5/b;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CHECKING_ASSETS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ5/b;->j(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gallery/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "manifest.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "outdated"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, LK5/c$a;

    invoke-direct {v3, p0, v0, v2}, LK5/c$a;-><init>(LK5/c;Ljava/io/File;Ljava/io/File;)V

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$b$d;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, LK5/c$b;

    invoke-direct {v0, p0, v1, v2}, LK5/c$b;-><init>(LK5/c;Ljava/io/File;Ljava/io/File;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, LN7/c;->l(FLjava/lang/Runnable;)V

    invoke-virtual {p0}, LJ5/b;->b()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, LK5/c$c;

    invoke-direct {v3, p0, v0, v2}, LK5/c$c;-><init>(LK5/c;Ljava/io/File;Ljava/io/File;)V

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$b$d;)V

    :goto_0
    return-void
.end method

.method public final n(Ljava/io/File;Ljava/lang/String;ZLjava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "destinationFolder",
            "manifestContent",
            "blockUserWhenFail",
            "outdatedFile"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DOWNLOADING_REQUIRED_ASSETS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ5/b;->j(Ljava/lang/String;)V

    invoke-static {p1}, Lid/a;->g(Ljava/io/File;)Z

    new-instance v0, LK5/c$d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, LK5/c$d;-><init>(LK5/c;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$b;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V

    return-void
.end method
