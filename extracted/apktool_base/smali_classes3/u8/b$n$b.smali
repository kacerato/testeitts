.class public Lu8/b$n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b$n;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu8/b$n;


# direct methods
.method public constructor <init>(Lu8/b$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$n$b;->b:Lu8/b$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lu8/b$n$b;->b:Lu8/b$n;

    iget-object v0, v0, Lu8/b$n;->a:Lu8/b;

    invoke-static {v0}, Lu8/b;->a(Lu8/b;)LZ6/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object v0, p0, Lu8/b$n$b;->b:Lu8/b$n;

    iget-object v0, v0, Lu8/b$n;->a:Lu8/b;

    invoke-static {v0}, Lu8/b;->n(Lu8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu8/b$n$b;->b:Lu8/b$n;

    iget-object v0, v0, Lu8/b$n;->a:Lu8/b;

    invoke-virtual {v0}, Lu8/b;->Z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ops!"

    invoke-static {v1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
