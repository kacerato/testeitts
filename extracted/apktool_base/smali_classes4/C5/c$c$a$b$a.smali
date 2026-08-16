.class public LC5/c$c$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/c$c$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/c$c$a$b;


# direct methods
.method public constructor <init>(LC5/c$c$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a$b$a;->a:LC5/c$c$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 1
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
    iget-object p1, p0, LC5/c$c$a$b$a;->a:LC5/c$c$a$b;

    iget-object p1, p1, LC5/c$c$a$b;->b:LC5/c$c$a;

    iget-object p1, p1, LC5/c$c$a;->d:LC5/c$c;

    iget-object p1, p1, LC5/c$c;->b:LC5/d;

    iget-object p1, p1, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result p1

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, LC5/c$c$a$b$a;->a:LC5/c$c$a$b;

    iget-object p3, p3, LC5/c$c$a$b;->b:LC5/c$c$a;

    iget-object p3, p3, LC5/c$c$a;->d:LC5/c$c;

    iget-object p3, p3, LC5/c$c;->b:LC5/d;

    iget-object p3, p3, LC5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result p3

    if-ge p2, p3, :cond_0

    iget-object p3, p0, LC5/c$c$a$b$a;->a:LC5/c$c$a$b;

    iget-object p3, p3, LC5/c$c$a$b;->b:LC5/c$c$a;

    iget-object p3, p3, LC5/c$c$a;->d:LC5/c$c;

    iget-object p3, p3, LC5/c$c;->b:LC5/d;

    iget-object p3, p3, LC5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p3

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {}, LA5/a;->y1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
