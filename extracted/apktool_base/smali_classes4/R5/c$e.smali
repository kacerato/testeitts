.class public LR5/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR5/c;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO5/b;

.field public final synthetic b:LR5/c;


# direct methods
.method public constructor <init>(LR5/c;LO5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LR5/c$e;->b:LR5/c;

    iput-object p2, p0, LR5/c$e;->a:LO5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LR5/c$e;->b:LR5/c;

    invoke-virtual {v0}, Ls7/c;->i()Ls7/a;

    move-result-object v0

    check-cast v0, LO5/b;

    const-string v1, "STAGE_EMAIL"

    iget-object v2, p0, LR5/c$e;->a:LO5/b;

    invoke-virtual {v2}, LO5/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, LO5/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LR5/c$e;->b:LR5/c;

    invoke-virtual {p1}, Ls7/c;->k()Ls7/b;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls7/b;->x1(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, LV5/a;->p1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, LR5/c$e;->b:LR5/c;

    invoke-virtual {v0}, Ls7/c;->t()V

    new-instance v0, LR5/c$e$a;

    invoke-direct {v0, p0}, LR5/c$e$a;-><init>(LR5/c$e;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    return-void
.end method
