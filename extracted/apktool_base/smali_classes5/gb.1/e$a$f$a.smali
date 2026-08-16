.class public Lgb/e$a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$a$f;


# direct methods
.method public constructor <init>(Lgb/e$a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$f$a;->a:Lgb/e$a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 3
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

    iget-object p2, p0, Lgb/e$a$f$a;->a:Lgb/e$a$f;

    iget-object p2, p2, Lgb/e$a$f;->b:Lgb/e$a;

    iget-object p2, p2, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :cond_0
    iget-object p2, p0, Lgb/e$a$f$a;->a:Lgb/e$a$f;

    iget-object p2, p2, Lgb/e$a$f;->b:Lgb/e$a;

    iget-object p2, p2, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v2, Lgb/e$a$f$a$a;

    invoke-direct {v2, p0, p3}, Lgb/e$a$f$a$a;-><init>(Lgb/e$a$f$a;LM7/c;)V

    invoke-static {p2, p1, v0, v1, v2}, Lt5/f;->L1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;Lr4/a$e;Lt5/f$j;)V

    return-void
.end method
