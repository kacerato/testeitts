.class public Lw6/b$e$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$e;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lw6/b$e;


# direct methods
.method public constructor <init>(Lw6/b$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$e$a;->b:Lw6/b$e;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Ldd/b;

    new-instance v1, Lw6/b$e$a$a;

    invoke-direct {v1, p0}, Lw6/b$e$a$a;-><init>(Lw6/b$e$a;)V

    const v2, 0x7f0701d3

    const-string v3, "Duplicate"

    invoke-direct {v0, v2, v3, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROJECTS_MENU_EXPORT_BACKUP:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw6/b$e$a$b;

    invoke-direct {v2, p0}, Lw6/b$e$a$b;-><init>(Lw6/b$e$a;)V

    const v3, 0x7f07021e

    invoke-direct {v0, v3, v1, v2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lw6/b$e;->b:Lw6/b;

    invoke-static {v0}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object v0

    iget-object v0, v0, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    const v1, 0x7f07022a

    if-eqz v0, :cond_0

    iget-object p1, p1, Lw6/b$e;->b:Lw6/b;

    invoke-static {p1}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object p1

    iget-object p1, p1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ldd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_UPDATE_MENU:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw6/b$e$a$c;

    invoke-direct {v2, p0}, Lw6/b$e$a$c;-><init>(Lw6/b$e$a;)V

    invoke-direct {p1, v1, v0, v2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ldd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_SHARE_MENU:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw6/b$e$a$d;

    invoke-direct {v2, p0}, Lw6/b$e$a$d;-><init>(Lw6/b$e$a;)V

    invoke-direct {p1, v1, v0, v2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
