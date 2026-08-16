.class public final LQe/H;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/H$e;,
        LQe/H$c;,
        LQe/H$d;,
        LQe/H$b;,
        LQe/H$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/NoSuchElementException;",
            ">;"
        }
    .end annotation

    sget-object v0, LQe/H$a;->INSTANCE:LQe/H$a;

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/Q<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LQe/H$c;

    invoke-direct {v0, p0}, LQe/H$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c()LFe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LFe/o<",
            "LBe/Q<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;>;"
        }
    .end annotation

    sget-object v0, LQe/H$b;->INSTANCE:LQe/H$b;

    return-object v0
.end method

.method public static d()LFe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LFe/o<",
            "LBe/Q<",
            "+TT;>;",
            "LBe/B<",
            "+TT;>;>;"
        }
    .end annotation

    sget-object v0, LQe/H$e;->INSTANCE:LQe/H$e;

    return-object v0
.end method
