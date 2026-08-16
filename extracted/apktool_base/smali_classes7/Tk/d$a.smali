.class public LTk/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTk/d;->a(Lhi/b;)LSk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:LTk/d;


# direct methods
.method public constructor <init>(LTk/d;Lhi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LTk/d$a;->b:LTk/d;

    iput-object p2, p0, LTk/d$a;->a:Lhi/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([C)LQk/A;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LTk/d$a;->a:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object v0

    iget-object v1, p0, LTk/d$a;->a:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    iget-object v2, p0, LTk/d$a;->b:LTk/d;

    invoke-static {v2}, LTk/d;->b(LTk/d;)LRk/l;

    move-result-object v2

    iget-object v3, p0, LTk/d$a;->a:Lhi/b;

    invoke-interface {v2, v3}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, LTk/g;->b(Loh/x;LBi/D;LXh/s;[C)LQk/A;

    move-result-object p1

    return-object p1
.end method

.method public b()Lhi/b;
    .locals 3

    new-instance v0, Lhi/b;

    iget-object v1, p0, LTk/d$a;->a:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method
