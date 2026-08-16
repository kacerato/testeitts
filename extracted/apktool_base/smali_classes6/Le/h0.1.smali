.class public final LLe/h0;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/h0$a;,
        LLe/h0$b;,
        LLe/h0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/h0;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, LIe/a;

    if-eqz v0, :cond_0

    new-instance v0, LLe/h0$a;

    move-object v1, p1

    check-cast v1, LIe/a;

    iget-object v2, p0, LLe/h0;->c:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, LLe/h0$a;-><init>(LIe/a;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, LLe/h0$b;

    iget-object v1, p0, LLe/h0;->c:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, LLe/h0$b;-><init>(Lhn/c;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    :goto_0
    return-void
.end method
