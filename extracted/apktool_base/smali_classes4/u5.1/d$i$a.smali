.class public Lu5/d$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu5/d$i;


# direct methods
.method public constructor <init>(Lu5/d$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$i$a;->b:Lu5/d$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lu5/d$i$a;->b:Lu5/d$i;

    iget-object v0, v0, Lu5/d$i;->b:Lu5/d;

    invoke-static {v0}, Lu5/d;->s1(Lu5/d;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->v()V

    iget-object v0, p0, Lu5/d$i$a;->b:Lu5/d$i;

    iget-object v0, v0, Lu5/d$i;->b:Lu5/d;

    invoke-static {v0}, Lu5/d;->F1(Lu5/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lu5/d$i$a;->b:Lu5/d$i;

    iget-object v1, v1, Lu5/d$i;->b:Lu5/d;

    invoke-static {v1}, Lu5/d;->G1(Lu5/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu5/d$i$a;->b:Lu5/d$i;

    iget-object v0, v0, Lu5/d$i;->b:Lu5/d;

    invoke-static {v0}, Lu5/d;->H1(Lu5/d;)V

    iget-object v0, p0, Lu5/d$i$a;->b:Lu5/d$i;

    iget-object v0, v0, Lu5/d$i;->b:Lu5/d;

    invoke-static {v0}, Lu5/d;->F1(Lu5/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
