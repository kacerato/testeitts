.class public final LLe/p$a;
.super Lcf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lcf/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final c:LLe/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/p$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LLe/p$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/p$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcf/b;-><init>()V

    iput-object p1, p0, LLe/p$a;->c:LLe/p$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/p$a;->c:LLe/p$b;

    invoke-virtual {v0}, LLe/p$b;->a()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object p1, p0, LLe/p$a;->c:LLe/p$b;

    invoke-virtual {p1}, LLe/p$b;->s()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/p$a;->c:LLe/p$b;

    invoke-virtual {v0, p1}, LLe/p$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
