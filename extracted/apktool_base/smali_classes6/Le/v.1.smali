.class public final LLe/v;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/v$a;
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
.field public final c:[Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>([Lhn/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/b<",
            "+TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/v;->c:[Lhn/b;

    iput-boolean p2, p0, LLe/v;->d:Z

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

    new-instance v0, LLe/v$a;

    iget-object v1, p0, LLe/v;->c:[Lhn/b;

    iget-boolean v2, p0, LLe/v;->d:Z

    invoke-direct {v0, v1, v2, p1}, LLe/v$a;-><init>([Lhn/b;ZLhn/c;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v0}, LLe/v$a;->a()V

    return-void
.end method
