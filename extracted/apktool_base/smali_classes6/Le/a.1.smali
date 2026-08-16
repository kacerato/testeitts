.class public abstract LLe/a;
.super LBe/l;
.source "SourceFile"

# interfaces
.implements LIe/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TR;>;",
        "LIe/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    const-string v0, "source is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/l;

    iput-object p1, p0, LLe/a;->c:LBe/l;

    return-void
.end method


# virtual methods
.method public final source()Lhn/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    return-object v0
.end method
