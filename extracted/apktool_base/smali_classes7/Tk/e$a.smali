.class public LTk/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTk/e;->b([C)LQk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[C

.field public final synthetic b:LTk/e;


# direct methods
.method public constructor <init>(LTk/e;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LTk/e$a;->b:LTk/e;

    iput-object p2, p0, LTk/e$a;->a:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LQk/t;
    .locals 6

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, LTk/g;->c(Loh/x;)LWi/e;

    move-result-object v0

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object v1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    iget-object v3, p0, LTk/e$a;->b:LTk/e;

    invoke-static {v3}, LTk/e;->a(LTk/e;)LBi/D;

    move-result-object v3

    invoke-virtual {v0}, LBi/u;->b()I

    move-result v4

    iget-object v5, p0, LTk/e$a;->a:[C

    invoke-static {v2, v3, v4, v1, v5}, LTk/g;->a(Loh/x;LBi/D;ILXh/s;[C)LBi/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, LWi/e;->f(ZLBi/k;)V

    new-instance v1, LTk/e$a$a;

    invoke-direct {v1, p0, p1, v0}, LTk/e$a$a;-><init>(LTk/e$a;Lhi/b;LWi/e;)V

    return-object v1
.end method
