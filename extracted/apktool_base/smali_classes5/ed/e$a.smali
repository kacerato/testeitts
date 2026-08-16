.class public Led/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Led/e;->b(Lhd/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lhd/e;

.field public final synthetic c:Led/e;


# direct methods
.method public constructor <init>(Led/e;Lhd/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Led/e$a;->c:Led/e;

    iput-object p2, p0, Led/e$a;->b:Lhd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Led/e$a;->b:Lhd/e;

    iget-object v1, v0, Lhd/e;->c:Landroid/content/Context;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Activities/App;->c:Lu3/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lu3/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcd/a;->a(Landroid/app/Application;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/e$a;->b:Lhd/e;

    iget-object v1, v0, Lhd/e;->a:Ljava/lang/String;

    iget-object v2, v0, Lhd/e;->b:Ljava/util/Map;

    iget-boolean v0, v0, Lhd/e;->d:Z

    invoke-static {v1, v2, v0}, Lgd/a;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "@no_ethernet@"

    goto :goto_0

    :cond_1
    const-string v0, "@errorcheckingconnection@"

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lhd/e;->a:Ljava/lang/String;

    iget-object v2, v0, Lhd/e;->b:Ljava/util/Map;

    iget-boolean v0, v0, Lhd/e;->d:Z

    invoke-static {v1, v2, v0}, Lgd/a;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Led/e$a$a;

    invoke-direct {v1, p0, v0}, Led/e$a$a;-><init>(Led/e$a;Ljava/lang/String;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
