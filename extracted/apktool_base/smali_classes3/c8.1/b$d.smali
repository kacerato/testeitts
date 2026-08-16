.class public Lc8/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b;->v()V
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
.method public run()V
    .locals 5

    :try_start_0
    sget-object v0, Lc8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lc8/b;->h:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lc8/b;->h:Ljava/lang/String;

    new-instance v1, Lc8/b$d$a;

    invoke-direct {v1, p0}, Lc8/b$d$a;-><init>(Lc8/b$d;)V

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->K(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "_EDITOR"

    const-string v3, "currentScene.scn"

    new-instance v4, Lc8/b$d$b;

    invoke-direct {v4, p0}, Lc8/b$d$b;-><init>(Lc8/b$d;)V

    invoke-static {v0, v3, v1, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->J(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lc8/b;->e()V

    :goto_1
    return-void
.end method
