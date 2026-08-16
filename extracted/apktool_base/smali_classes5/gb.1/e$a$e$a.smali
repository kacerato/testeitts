.class public Lgb/e$a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$a$e;


# direct methods
.method public constructor <init>(Lgb/e$a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$e$a;->a:Lgb/e$a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lgb/e$a$e$a;->a:Lgb/e$a$e;

    iget-object v0, v0, Lgb/e$a$e;->b:Lgb/e$a;

    iget-object v0, v0, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :cond_0
    iget-object v0, p0, Lgb/e$a$e$a;->a:Lgb/e$a$e;

    iget-object v0, v0, Lgb/e$a$e;->b:Lgb/e$a;

    iget-object v0, v0, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v3, Lgb/e$a$e$a$a;

    invoke-direct {v3, p0}, Lgb/e$a$e$a$a;-><init>(Lgb/e$a$e$a;)V

    invoke-static {v0, p1, v1, v2, v3}, Lt5/f;->L1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;Lr4/a$e;Lt5/f$j;)V

    return-void
.end method
