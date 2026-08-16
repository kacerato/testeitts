.class public final Lw2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/v$h;,
        Lw2/v$b;,
        Lw2/v$g;,
        Lw2/v$d;,
        Lw2/v$c;,
        Lw2/v$e;,
        Lw2/v$f;,
        Lw2/v$i;
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

.method public static a(Lw2/t;Lw2/t;)Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/t<",
            "TB;TC;>;",
            "Lw2/t<",
            "TA;+TB;>;)",
            "Lw2/t<",
            "TA;TC;>;"
        }
    .end annotation

    new-instance v0, Lw2/v$d;

    invoke-direct {v0, p0, p1}, Lw2/v$d;-><init>(Lw2/t;Lw2/t;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lw2/t;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lw2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lw2/t<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lw2/v$b;

    invoke-direct {v0, p0}, Lw2/v$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/util/Map;)Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lw2/t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lw2/v$e;

    invoke-direct {v0, p0}, Lw2/v$e;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static d(Ljava/util/Map;Ljava/lang/Object;)Lw2/t;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lw2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;TV;)",
            "Lw2/t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lw2/v$c;

    invoke-direct {v0, p0, p1}, Lw2/v$c;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Lw2/I;)Lw2/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/I<",
            "TT;>;)",
            "Lw2/t<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw2/v$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw2/v$g;-><init>(Lw2/I;Lw2/v$a;)V

    return-object v0
.end method

.method public static f(Lw2/Q;)Lw2/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/Q<",
            "TT;>;)",
            "Lw2/t<",
            "TF;TT;>;"
        }
    .end annotation

    new-instance v0, Lw2/v$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw2/v$h;-><init>(Lw2/Q;Lw2/v$a;)V

    return-object v0
.end method

.method public static g()Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lw2/t<",
            "TE;TE;>;"
        }
    .end annotation

    sget-object v0, Lw2/v$f;->INSTANCE:Lw2/v$f;

    return-object v0
.end method

.method public static h()Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/t<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lw2/v$i;->INSTANCE:Lw2/v$i;

    return-object v0
.end method
