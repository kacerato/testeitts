.class public final LOe/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/I<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LGe/a;

.field public final c:LOe/j1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/j1$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LWe/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LWe/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:LDe/c;

.field public final synthetic f:LOe/j1;


# direct methods
.method public constructor <init>(LOe/j1;LGe/a;LOe/j1$b;LWe/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a;",
            "LOe/j1$b<",
            "TT;>;",
            "LWe/m<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LOe/j1$a;->f:LOe/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LOe/j1$a;->b:LGe/a;

    iput-object p3, p0, LOe/j1$a;->c:LOe/j1$b;

    iput-object p4, p0, LOe/j1$a;->d:LWe/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LOe/j1$a;->c:LOe/j1$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, LOe/j1$b;->e:Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/j1$a;->e:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/j1$a;->e:LDe/c;

    iget-object v0, p0, LOe/j1$a;->b:LGe/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, LGe/a;->b(ILDe/c;)Z

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object p1, p0, LOe/j1$a;->e:LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    iget-object p1, p0, LOe/j1$a;->c:LOe/j1$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, LOe/j1$b;->e:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/j1$a;->b:LGe/a;

    invoke-virtual {v0}, LGe/a;->dispose()V

    iget-object v0, p0, LOe/j1$a;->d:LWe/m;

    invoke-virtual {v0, p1}, LWe/m;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
