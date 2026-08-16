.class public final LLe/h1$a;
.super LLe/d1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/d1$c<",
        "TT;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final p:J = -0x2531bbef65964705L


# direct methods
.method public constructor <init>(Lhn/c;LZe/c;Lhn/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LZe/c<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lhn/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, LLe/d1$c;-><init>(Lhn/c;LZe/c;Lhn/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/d1$c;->m:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/d1$c;->k:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, LLe/d1$c;->m(Ljava/lang/Object;)V

    return-void
.end method
