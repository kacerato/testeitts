.class public LC5/c$c$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/c$c$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/c$c$a$a;


# direct methods
.method public constructor <init>(LC5/c$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a$a$c;->a:LC5/c$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    :try_start_0
    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    iget-object p1, p0, LC5/c$c$a$a$c;->a:LC5/c$c$a$a;

    iget-object p1, p1, LC5/c$c$a$a;->b:LC5/c$c$a;

    iget-object p1, p1, LC5/c$c$a;->c:Landroid/view/View;

    sget-object p2, Lr4/a$e;->Left:Lr4/a$e;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTENTION:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC5/c$c$a$a$c;->a:LC5/c$c$a$a;

    iget-object v1, v1, LC5/c$c$a$a;->b:LC5/c$c$a;

    iget-object v1, v1, LC5/c$c$a;->d:LC5/c$c;

    iget-object v1, v1, LC5/c$c;->b:LC5/d;

    iget-object v1, v1, LC5/d;->d:LC5/a;

    iget-object v1, v1, LC5/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LC5/c$c$a$a$c$a;

    invoke-direct {v1, p0}, LC5/c$c$a$a$c$a;-><init>(LC5/c$c$a$a$c;)V

    invoke-static {p1, p2, p3, v0, v1}, LZ6/c;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V
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
