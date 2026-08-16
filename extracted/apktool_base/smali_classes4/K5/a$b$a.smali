.class public LK5/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmc/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LK5/a$b;


# direct methods
.method public constructor <init>(LK5/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LK5/a$b$a;->a:LK5/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, LK5/a$b$a;->a:LK5/a$b;

    iget-object v0, v0, LK5/a$b;->b:LK5/a;

    invoke-static {v0, p1}, LK5/a;->n(LK5/a;I)I

    iget-object v0, p0, LK5/a$b$a;->a:LK5/a$b;

    iget-object v0, v0, LK5/a$b;->b:LK5/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LK5/a$b$a;->a:LK5/a$b;

    iget-object v2, v2, LK5/a$b;->b:LK5/a;

    invoke-static {v2}, LK5/a;->o(LK5/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LJ5/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LK5/a$b$a;->a:LK5/a$b;

    iget-object v0, v0, LK5/a$b;->b:LK5/a;

    invoke-static {v0}, LK5/a;->o(LK5/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, LK5/a$b$a;->a:LK5/a$b;

    iget-object v0, v0, LK5/a$b;->b:LK5/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LK5/a$b$a;->a:LK5/a$b;

    iget-object v2, v2, LK5/a$b;->b:LK5/a;

    invoke-static {v2}, LK5/a;->o(LK5/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LK5/a$b$a;->a:LK5/a$b;

    iget-object v2, v2, LK5/a$b;->b:LK5/a;

    invoke-static {v2}, LK5/a;->m(LK5/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LJ5/b;->k(Ljava/lang/String;)V

    return-void
.end method
