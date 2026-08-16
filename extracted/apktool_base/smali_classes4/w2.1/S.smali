.class public final Lw2/S;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/S$f;,
        Lw2/S$e;,
        Lw2/S$h;,
        Lw2/S$g;,
        Lw2/S$a;,
        Lw2/S$c;,
        Lw2/S$b;,
        Lw2/S$d;
    }
.end annotation

.annotation build Lv2/b;
.end annotation

.annotation runtime Lw2/k;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lw2/t;Lw2/Q;)Lw2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/t<",
            "-TF;TT;>;",
            "Lw2/Q<",
            "TF;>;)",
            "Lw2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lw2/S$d;

    invoke-direct {v0, p0, p1}, Lw2/S$d;-><init>(Lw2/t;Lw2/Q;)V

    return-object v0
.end method

.method public static b(Lw2/Q;)Lw2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/Q<",
            "TT;>;)",
            "Lw2/Q<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lw2/S$c;

    if-nez v0, :cond_2

    instance-of v0, p0, Lw2/S$b;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lw2/S$b;

    invoke-direct {v0, p0}, Lw2/S$b;-><init>(Lw2/Q;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lw2/S$c;

    invoke-direct {v0, p0}, Lw2/S$c;-><init>(Lw2/Q;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static c(Lw2/Q;JLjava/util/concurrent/TimeUnit;)Lw2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/Q<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lw2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lw2/S$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lw2/S$a;-><init>(Lw2/Q;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lw2/Q;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lw2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lw2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lw2/S$g;

    invoke-direct {v0, p0}, Lw2/S$g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e()Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lw2/t<",
            "Lw2/Q<",
            "TT;>;TT;>;"
        }
    .end annotation

    sget-object v0, Lw2/S$f;->INSTANCE:Lw2/S$f;

    return-object v0
.end method

.method public static f(Lw2/Q;)Lw2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/Q<",
            "TT;>;)",
            "Lw2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lw2/S$h;

    invoke-direct {v0, p0}, Lw2/S$h;-><init>(Lw2/Q;)V

    return-object v0
.end method
