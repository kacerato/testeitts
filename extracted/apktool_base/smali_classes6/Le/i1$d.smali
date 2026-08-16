.class public final LLe/i1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LLe/i1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/i1$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LLe/i1$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/i1$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/i1$d;->b:LLe/i1$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/i1$d;->b:LLe/i1$c;

    invoke-virtual {v0}, LLe/i1$c;->b()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, LLe/i1$d;->b:LLe/i1$c;

    invoke-virtual {p1}, LLe/i1$c;->f()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/i1$d;->b:LLe/i1$c;

    invoke-virtual {v0, p1}, LLe/i1$c;->g(Lhn/d;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/i1$d;->b:LLe/i1$c;

    invoke-virtual {v0, p1}, LLe/i1$c;->e(Ljava/lang/Throwable;)V

    return-void
.end method
