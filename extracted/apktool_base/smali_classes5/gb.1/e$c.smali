.class public Lgb/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIc/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$type",
            "val$toObject",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    iput-object p2, p0, Lgb/e$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p3, p0, Lgb/e$c;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oo",
            "index"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-result-object v1

    iget-object v2, p0, Lgb/e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    iget-object v2, p0, Lgb/e$c;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, LIc/z;

    invoke-direct {p2}, LIc/z;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lgb/e$c$a;

    invoke-direct {v0, p0}, Lgb/e$c$a;-><init>(Lgb/e$c;)V

    invoke-virtual {p2, p1, v0}, LIc/z;->f(Ljava/util/List;LIc/t;)V

    return-void
.end method
