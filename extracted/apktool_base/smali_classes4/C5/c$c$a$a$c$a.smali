.class public LC5/c$c$a$a$c$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/c$c$a$a$c;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/c$c$a$a$c;


# direct methods
.method public constructor <init>(LC5/c$c$a$a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a$a$c$a;->a:LC5/c$c$a$a$c;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, Ln4/a;

    invoke-direct {v0}, Ln4/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    iget-object p1, p0, LC5/c$c$a$a$c$a;->a:LC5/c$c$a$a$c;

    iget-object p1, p1, LC5/c$c$a$a$c;->a:LC5/c$c$a$a;

    iget-object p1, p1, LC5/c$c$a$a;->b:LC5/c$c$a;

    iget-object p1, p1, LC5/c$c$a;->d:LC5/c$c;

    iget-object p1, p1, LC5/c$c;->b:LC5/d;

    iget-object v0, p1, LC5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
