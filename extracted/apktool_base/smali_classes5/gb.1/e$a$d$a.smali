.class public Lgb/e$a$d$a;
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

    iput-object p1, p0, Lgb/e$a$d$a;->a:Lgb/e$a$d;

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
            "view"
        }
    .end annotation

    new-instance p1, LIc/z;

    invoke-direct {p1}, LIc/z;-><init>()V

    iget-object v0, p0, Lgb/e$a$d$a;->a:Lgb/e$a$d;

    iget-object v0, v0, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v0, v0, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lgb/e$a$d$a$a;

    invoke-direct {v1, p0}, Lgb/e$a$d$a$a;-><init>(Lgb/e$a$d$a;)V

    invoke-virtual {p1, v0, v1}, LIc/z;->f(Ljava/util/List;LIc/t;)V

    return-void
.end method
