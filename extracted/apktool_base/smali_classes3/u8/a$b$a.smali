.class public Lu8/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmc/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/a$b;


# direct methods
.method public constructor <init>(Lu8/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lu8/a$b$a;->a:Lu8/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Lu8/a$b$a;->a:Lu8/a$b;

    iget v1, v0, Lu8/a$b;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lu8/a$b;->b:I

    new-instance p1, Lu8/a$b$a$a;

    invoke-direct {p1, p0}, Lu8/a$b$a$a;-><init>(Lu8/a$b$a;)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lu8/a$b$a;->a:Lu8/a$b;

    iget-object v0, v0, Lu8/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Lu8/a$b$a$b;

    invoke-direct {v0, p0}, Lu8/a$b$a$b;-><init>(Lu8/a$b$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
