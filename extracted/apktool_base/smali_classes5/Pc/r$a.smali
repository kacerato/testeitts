.class public LPc/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LPc/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPc/r;->b(Ljava/util/List;LPc/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LPc/p<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LPc/q;

.field public final synthetic b:LPc/r;


# direct methods
.method public constructor <init>(LPc/r;LPc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LPc/r$a;->b:LPc/r;

    iput-object p2, p0, LPc/r$a;->a:LPc/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, LPc/r$a;->a:LPc/q;

    invoke-interface {v0, p1}, LPc/q;->a(Ljava/lang/Object;)V

    iget-object p1, p0, LPc/r$a;->b:LPc/r;

    invoke-static {p1}, LPc/r;->a(LPc/r;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1
.end method
