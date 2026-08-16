.class public LY5/d$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/d$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/RuntimeException;

.field public final synthetic c:LY5/d$d;


# direct methods
.method public constructor <init>(LY5/d$d;Ljava/lang/RuntimeException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/d$d$b;->c:LY5/d$d;

    iput-object p2, p0, LY5/d$d$b;->b:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LY5/d$d$b;->c:LY5/d$d;

    iget-object v0, v0, LY5/d$d;->c:LY5/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LY5/d;->q1(LY5/d;Z)Z

    iget-object v0, p0, LY5/d$d$b;->c:LY5/d$d;

    iget-object v0, v0, LY5/d$d;->c:LY5/d;

    invoke-static {v0, v1}, LY5/d;->F1(LY5/d;Z)Z

    iget-object v0, p0, LY5/d$d$b;->b:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ops!"

    invoke-static {v1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
