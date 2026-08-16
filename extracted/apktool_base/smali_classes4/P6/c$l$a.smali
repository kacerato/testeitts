.class public LP6/c$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP6/c$l;


# direct methods
.method public constructor <init>(LP6/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LP6/c$l$a;->b:LP6/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_0
    iget-object v0, p0, LP6/c$l$a;->b:LP6/c$l;

    iget-object v0, v0, LP6/c$l;->c:LP6/c;

    invoke-static {v0}, LP6/c;->q1(LP6/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object v0

    invoke-virtual {v0}, Lub/g;->E0()V

    new-instance v0, LP6/c$l$a$a;

    invoke-direct {v0, p0}, LP6/c$l$a$a;-><init>(LP6/c$l$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
