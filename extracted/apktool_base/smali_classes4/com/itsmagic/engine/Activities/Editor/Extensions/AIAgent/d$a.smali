.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->u(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$outputCallback",
            "val$chat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->d()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->d()V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->d()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->d()V

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialMessage"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->a()V

    :cond_0
    return-void
.end method
