.class public LA3/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA3/a;->I(Ljava/lang/String;)LA3/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:[Z

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$code",
            "val$result",
            "val$success",
            "val$latch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LA3/a$b;->b:Ljava/lang/String;

    iput-object p2, p0, LA3/a$b;->c:[Ljava/lang/String;

    iput-object p3, p0, LA3/a$b;->d:[Z

    iput-object p4, p0, LA3/a$b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lb9/c;->g()Lorg/luaj/vm2/Globals;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, LA3/a;->E(Lorg/luaj/vm2/Globals;Ljava/lang/StringBuilder;)V

    invoke-static {v1}, LA3/a;->F(Lorg/luaj/vm2/Globals;)V

    iget-object v3, p0, LA3/a$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/luaj/vm2/Globals;->load(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->invoke()Lorg/luaj/vm2/Varargs;

    move-result-object v1

    iget-object v3, p0, LA3/a$b;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, LA3/a;->G(Lorg/luaj/vm2/Varargs;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v1, p0, LA3/a$b;->d:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, LA3/a$b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, LA3/a$b;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, LA3/a$b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
