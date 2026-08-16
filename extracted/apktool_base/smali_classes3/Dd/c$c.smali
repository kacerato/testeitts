.class public final LDd/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDd/c;->sendApiChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LDd/c;


# direct methods
.method public constructor <init>(LDd/c;)V
    .locals 0

    iput-object p1, p0, LDd/c$c;->b:LDd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LDd/c$c;->b:LDd/c;

    invoke-static {v0}, LDd/c;->a(LDd/c;)LDd/c$b;

    move-result-object v0

    invoke-interface {v0}, LDd/c$b;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEd/d;

    iget-object v2, p0, LDd/c$c;->b:LDd/c;

    invoke-static {v2}, LDd/c;->a(LDd/c;)LDd/c$b;

    move-result-object v2

    invoke-interface {v2}, LDd/c$b;->getInstance()LDd/b;

    move-result-object v2

    invoke-interface {v1, v2}, LEd/d;->s(LDd/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method
