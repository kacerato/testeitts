.class public final LOe/X0$b;
.super LOe/X0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/X0;
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
        "LOe/X0$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:J = -0x2a0bdab9530de829L


# direct methods
.method public constructor <init>(LBe/I;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LBe/G<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, LOe/X0$c;-><init>(LBe/I;LBe/G;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, LOe/X0$c;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, LOe/X0$c;->f()V

    return-void
.end method
