.class public final LLe/o0$c;
.super LEe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "LEe/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LLe/o0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/o0$d<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;LLe/o0$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "LLe/o0$d<",
            "TT;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LEe/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, LLe/o0$c;->d:LLe/o0$d;

    return-void
.end method

.method public static P8(Ljava/lang/Object;ILLe/o0$b;Z)LLe/o0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "LLe/o0$b<",
            "*TK;TT;>;Z)",
            "LLe/o0$c<",
            "TK;TT;>;"
        }
    .end annotation

    new-instance v0, LLe/o0$d;

    invoke-direct {v0, p1, p2, p0, p3}, LLe/o0$d;-><init>(ILLe/o0$b;Ljava/lang/Object;Z)V

    new-instance p1, LLe/o0$c;

    invoke-direct {p1, p0, v0}, LLe/o0$c;-><init>(Ljava/lang/Object;LLe/o0$d;)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/o0$c;->d:LLe/o0$d;

    invoke-virtual {v0}, LLe/o0$d;->a()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/o0$c;->d:LLe/o0$d;

    invoke-virtual {v0, p1}, LLe/o0$d;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public m6(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/o0$c;->d:LLe/o0$d;

    invoke-virtual {v0, p1}, LLe/o0$d;->l(Lhn/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/o0$c;->d:LLe/o0$d;

    invoke-virtual {v0, p1}, LLe/o0$d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
