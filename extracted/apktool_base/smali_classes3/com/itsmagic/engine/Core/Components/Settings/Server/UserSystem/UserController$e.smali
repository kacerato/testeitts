.class public Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;->b:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lv1/k;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;->c(Lv1/k;)V

    return-void
.end method

.method public static synthetic b(Ly0/b;Lv1/k;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;->d(Ly0/b;Lv1/k;)V

    return-void
.end method

.method public static synthetic c(Lv1/k;)V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "RevokeAccess success"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ly0/b;Lv1/k;)V
    .locals 2

    invoke-virtual {p1}, Lv1/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly0/b;->h0()Lv1/k;

    move-result-object p0

    new-instance p1, LI8/b;

    invoke-direct {p1}, LI8/b;-><init>()V

    invoke-virtual {p0, p1}, Lv1/k;->f(Lv1/e;)Lv1/k;

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Log out success"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log out failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv1/k;->q()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, LN7/c;->z()Ly0/b;

    move-result-object v0

    invoke-virtual {v0}, Ly0/b;->C()Lv1/k;

    move-result-object v1

    new-instance v2, LI8/c;

    invoke-direct {v2, v0}, LI8/c;-><init>(Ly0/b;)V

    invoke-virtual {v1, v2}, Lv1/k;->f(Lv1/e;)Lv1/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
