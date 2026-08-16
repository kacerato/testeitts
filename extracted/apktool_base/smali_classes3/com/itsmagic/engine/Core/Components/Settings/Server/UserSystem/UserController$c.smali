.class public Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->k0(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$updateListener",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;

    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error_code"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "error_message"

    invoke-static {v0, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tokenProibited"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->l(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$L;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Led/f;->a(Ljava/lang/String;Landroid/content/Context;LZ6/d;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;->a()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "UserController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "coins"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->b(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "premium"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->k(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "adm"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->l(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "firebaseUID"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->m(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "funds"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->n(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "createdAt"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->o(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "remove_ads"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->p(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "level"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->q(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "xp"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->r(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "upXp"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->d(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "usedSeconds"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->e(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "cloudSyncPlan"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->f(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "name"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->g(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v1, "isGoogle"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->i(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->h(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, LR6/a;->q1()V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->a0(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->c(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;->onSuccess()V

    :cond_2
    return-void
.end method
