.class public LG5/a$g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG5/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG5/a$g;


# direct methods
.method public constructor <init>(LG5/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LG5/a$g$e;->a:LG5/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, LG5/a$g$e;->a:LG5/a$g;

    iget-object v0, v0, LG5/a$g;->b:LG5/a;

    invoke-static {v0}, LG5/a;->x(LG5/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, LW7/b;->h:Lb8/f;

    new-instance v1, LG5/a$g$e$a;

    invoke-direct {v1, p0}, LG5/a$g$e$a;-><init>(LG5/a$g$e;)V

    invoke-virtual {v0, p1, v1}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOMETHING_WENT_WRONG:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
