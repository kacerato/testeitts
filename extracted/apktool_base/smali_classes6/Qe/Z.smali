.class public final LQe/Z;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/Z$a;,
        LQe/Z$c;,
        LQe/Z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LBe/Q;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LBe/Q<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/Z;->b:[LBe/Q;

    iput-object p2, p0, LQe/Z;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/Z;->b:[LBe/Q;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, LQe/K$a;

    new-instance v2, LQe/Z$a;

    invoke-direct {v2, p0}, LQe/Z$a;-><init>(LQe/Z;)V

    invoke-direct {v1, p1, v2}, LQe/K$a;-><init>(LBe/N;LFe/o;)V

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    return-void

    :cond_0
    new-instance v2, LQe/Z$b;

    iget-object v4, p0, LQe/Z;->c:LFe/o;

    invoke-direct {v2, p1, v1, v4}, LQe/Z$b;-><init>(LBe/N;ILFe/o;)V

    invoke-interface {p1, v2}, LBe/N;->e(LDe/c;)V

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2}, LQe/Z$b;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    aget-object p1, v0, v3

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, LQe/Z$b;->b(Ljava/lang/Throwable;I)V

    return-void

    :cond_2
    iget-object v4, v2, LQe/Z$b;->d:[LQe/Z$c;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, LBe/Q;->a(LBe/N;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
