.class public final LOe/k0$b;
.super LVe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "LVe/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LOe/k0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/k0$c<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;LOe/k0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "LOe/k0$c<",
            "TT;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LVe/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, LOe/k0$b;->c:LOe/k0$c;

    return-void
.end method

.method public static k8(Ljava/lang/Object;ILOe/k0$a;Z)LOe/k0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "LOe/k0$a<",
            "*TK;TT;>;Z)",
            "LOe/k0$b<",
            "TK;TT;>;"
        }
    .end annotation

    new-instance v0, LOe/k0$c;

    invoke-direct {v0, p1, p2, p0, p3}, LOe/k0$c;-><init>(ILOe/k0$a;Ljava/lang/Object;Z)V

    new-instance p1, LOe/k0$b;

    invoke-direct {p1, p0, v0}, LOe/k0$b;-><init>(Ljava/lang/Object;LOe/k0$c;)V

    return-object p1
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/k0$b;->c:LOe/k0$c;

    invoke-virtual {v0, p1}, LOe/k0$c;->c(LBe/I;)V

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, LOe/k0$b;->c:LOe/k0$c;

    invoke-virtual {v0}, LOe/k0$c;->e()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/k0$b;->c:LOe/k0$c;

    invoke-virtual {v0, p1}, LOe/k0$c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/k0$b;->c:LOe/k0$c;

    invoke-virtual {v0, p1}, LOe/k0$c;->f(Ljava/lang/Throwable;)V

    return-void
.end method
