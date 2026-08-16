.class public final LLe/j1$b;
.super LLe/j1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/j1$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:J = -0x63165c33f8fff493L


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, LLe/j1$c;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, LLe/j1$c;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, LLe/j1$c;->d()V

    return-void
.end method
