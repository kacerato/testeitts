.class public LY5/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/d$c;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LY5/d$c;


# direct methods
.method public constructor <init>(LY5/d$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LY5/d$c$a;->b:LY5/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LY5/d$c$a;->b:LY5/d$c;

    iget-object v0, v0, LY5/d$c;->b:LY5/d;

    invoke-static {v0}, LY5/d;->p1(LY5/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LY5/d$c$a;->b:LY5/d$c;

    iget-object v0, v0, LY5/d$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LY5/d$c$a;->b:LY5/d$c;

    iget-object v0, v0, LY5/d$c;->b:LY5/d;

    invoke-static {v0}, LY5/d;->r1(LY5/d;)V

    :cond_0
    return-void
.end method
