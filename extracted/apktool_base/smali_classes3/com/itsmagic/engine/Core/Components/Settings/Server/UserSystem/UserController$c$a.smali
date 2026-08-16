.class public Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$L;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a$a;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->c:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->V()V

    return-void
.end method

.method public isActive()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Led/f;->a(Ljava/lang/String;Landroid/content/Context;LZ6/d;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;->a:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;->a()V

    :cond_0
    return-void
.end method
