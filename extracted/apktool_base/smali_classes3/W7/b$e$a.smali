.class public LW7/b$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW7/b$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW7/b$e;


# direct methods
.method public constructor <init>(LW7/b$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LW7/b$e$a;->a:LW7/b$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 3

    sget-object v0, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, LW7/b;->k:LW7/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "No world to load!"

    invoke-interface {v0, v2}, LW7/e;->onError(Ljava/lang/String;)V

    sput-object v1, LW7/b;->k:LW7/e;

    :cond_0
    return-object v1
.end method

.method public onSuccess()V
    .locals 2

    sget-object v0, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, LW7/b;->k:LW7/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW7/e;->onFinish()V

    const/4 v0, 0x0

    sput-object v0, LW7/b;->k:LW7/e;

    :cond_0
    return-void
.end method
