.class public final LNe/b;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/i;

.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/i;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            "Lhn/b<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LNe/b;->c:LBe/i;

    iput-object p2, p0, LNe/b;->d:Lhn/b;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LNe/b;->c:LBe/i;

    new-instance v1, LNe/b$a;

    iget-object v2, p0, LNe/b;->d:Lhn/b;

    invoke-direct {v1, p1, v2}, LNe/b$a;-><init>(Lhn/c;Lhn/b;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
