.class public Lu8/a$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/a$b$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu8/a$b$a;


# direct methods
.method public constructor <init>(Lu8/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lu8/a$b$a$b;->b:Lu8/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lu8/a$b$a$b;->b:Lu8/a$b$a;

    iget-object v0, v0, Lu8/a$b$a;->a:Lu8/a$b;

    iget-object v1, v0, Lu8/a$b;->e:Lu8/d;

    iget-object v0, v0, Lu8/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lu8/a$b$a$b;->b:Lu8/a$b$a;

    iget-object v2, v2, Lu8/a$b$a;->a:Lu8/a$b;

    iget v2, v2, Lu8/a$b;->b:I

    invoke-interface {v1, v0, v2}, Lu8/d;->onProgressChange(II)V

    return-void
.end method
