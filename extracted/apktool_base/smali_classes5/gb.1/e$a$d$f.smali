.class public Lgb/e$a$d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$a$d;


# direct methods
.method public constructor <init>(Lgb/e$a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d$f;->a:Lgb/e$a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lgb/e$a$d$f;->a:Lgb/e$a$d;

    iget-object p1, p1, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object p1, p1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-static {p1, v0}, Lgb/e;->L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    return-void
.end method
