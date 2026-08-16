.class public LP7/b$e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP7/b$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/LinkedList;

.field public final synthetic c:LIc/a;

.field public final synthetic d:LP7/b$e;


# direct methods
.method public constructor <init>(LP7/b$e;Ljava/util/LinkedList;LIc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$pendingFiles",
            "val$phaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP7/b$e$d;->d:LP7/b$e;

    iput-object p2, p0, LP7/b$e$d;->b:Ljava/util/LinkedList;

    iput-object p3, p0, LP7/b$e$d;->c:LIc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LP7/b$e$d;->d:LP7/b$e;

    iget-object v0, v0, LP7/b$e;->d:LP7/b;

    invoke-static {v0}, LP7/b;->v(LP7/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LP7/b$e$d;->d:LP7/b$e;

    iget-object v1, v1, LP7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, LP7/b$e$d;->c:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LP7/b$e$d;->b:Ljava/util/LinkedList;

    new-instance v1, LP7/b$e$d$a;

    invoke-direct {v1, p0}, LP7/b$e$d$a;-><init>(LP7/b$e$d;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, LP7/b$e$d;->c:LIc/a;

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LP7/b$e$d;->c:LIc/a;

    invoke-virtual {v1}, LIc/a;->e()V

    throw v0
.end method
