.class public final LDd/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDd/c;->sendVideoDuration(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LDd/c;

.field public final synthetic c:F


# direct methods
.method public constructor <init>(LDd/c;F)V
    .locals 0

    iput-object p1, p0, LDd/c$j;->b:LDd/c;

    iput p2, p0, LDd/c$j;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LDd/c$j;->b:LDd/c;

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

    iget-object v2, p0, LDd/c$j;->b:LDd/c;

    invoke-static {v2}, LDd/c;->a(LDd/c;)LDd/c$b;

    move-result-object v2

    invoke-interface {v2}, LDd/c$b;->getInstance()LDd/b;

    move-result-object v2

    iget v3, p0, LDd/c$j;->c:F

    invoke-interface {v1, v2, v3}, LEd/d;->w(LDd/b;F)V

    goto :goto_0

    :cond_0
    return-void
.end method
