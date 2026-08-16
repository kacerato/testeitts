.class public LW7/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW7/b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$finalWantedWorldFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LW7/b$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LW7/b$e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LW7/b$e;->b:Ljava/lang/String;

    new-instance v1, LW7/b$e$a;

    invoke-direct {v1, p0}, LW7/b$e$a;-><init>(LW7/b$e;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->K(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V

    goto :goto_0

    :cond_0
    sget-object v0, LW7/b;->k:LW7/e;

    if-eqz v0, :cond_1

    const-string v1, "No world to load!"

    invoke-interface {v0, v1}, LW7/e;->onError(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, LW7/b;->k:LW7/e;

    :cond_1
    sget-object v0, LW7/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method
