.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->r(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;

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
            "result"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "values"

    invoke-static {p1, v0}, Lhd/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "token"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userid"

    invoke-static {p1, v1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userName"

    invoke-static {p1, v2}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v3, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->g0(Ljava/lang/String;)V

    iget-object v3, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->i0(Ljava/lang/String;)V

    iget-object p1, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->h0(Ljava/lang/String;)V

    iget-object p1, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->d0(Z)V

    iget-object p1, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->f0(Z)V

    iget-object p1, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;->a:Landroid/content/Context;

    invoke-virtual {p1, v3, v5, v4}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->e0(ZLandroid/content/Context;Z)V

    iget-object p1, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->k0(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;)V

    return-void
.end method
