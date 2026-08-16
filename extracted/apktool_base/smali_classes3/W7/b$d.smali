.class public LW7/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW7/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 1

    invoke-static {}, LW7/b;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSuccess()V
    .locals 3

    sget-object v0, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lob/b;

    new-instance v1, LW7/b$d$a;

    invoke-direct {v1, p0}, LW7/b$d$a;-><init>(LW7/b$d;)V

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lob/b;-><init>(Lob/b$a;I)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    sget-object v0, LW7/b;->k:LW7/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW7/e;->onFinish()V

    const/4 v0, 0x0

    sput-object v0, LW7/b;->k:LW7/e;

    :cond_0
    return-void
.end method
