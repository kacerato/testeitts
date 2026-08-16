.class public Lgb/e$a$d$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a$d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$a$d$g;


# direct methods
.method public constructor <init>(Lgb/e$a$d$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d$g$a;->a:Lgb/e$a$d$g;

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

    iget-object v0, p0, Lgb/e$a$d$g$a;->a:Lgb/e$a$d$g;

    iget-object v0, v0, Lgb/e$a$d$g;->b:Lgb/e$a$d;

    iget-object v0, v0, Lgb/e$a$d;->b:Lgb/e$a;

    iget-object v0, v0, Lgb/e$a;->d:Landroid/content/Context;

    new-instance v1, Lgb/e$a$d$g$a$a;

    invoke-direct {v1, p0}, Lgb/e$a$d$g$a$a;-><init>(Lgb/e$a$d$g$a;)V

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/A;->c(Landroid/content/Context;Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V

    return-void
.end method
