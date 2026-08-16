.class public Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a$a;->b:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lbd/a;

    const-string v1, "You have been logged out of your account"

    const-string v2, "Voc\u00ea foi desconectado da sua conta"

    invoke-direct {v0, v1, v2}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ops!"

    invoke-static {v1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
