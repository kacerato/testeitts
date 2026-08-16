.class public Ljn/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Ljn/Q;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "status",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljn/Q;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn/O;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljn/O;->b:Ljn/Q;

    iput-object p3, p0, Ljn/O;->c:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljn/O;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    const/4 v1, 0x0

    sget-object v2, Ljn/Q;->FAILURE:Ljn/Q;

    invoke-direct {v0, v1, v2, v1}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ljn/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    sget-object v1, Ljn/Q;->FAILURE:Ljn/Q;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljn/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    const/4 v1, 0x0

    sget-object v2, Ljn/Q;->FAILURE:Ljn/Q;

    invoke-direct {v0, v1, v2, p0}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Ljn/O;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    const/4 v1, 0x0

    sget-object v2, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    invoke-direct {v0, v1, v2, v1}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljn/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    const/4 v1, 0x0

    sget-object v2, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    invoke-direct {v0, v1, v2, p0}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Ljn/Q;Ljava/lang/Object;)Ljn/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljn/Q;",
            "TT;)",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Ljn/Q;Ljava/lang/String;)Ljn/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljn/Q;",
            "Ljava/lang/String;",
            ")",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)Ljn/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Ljn/O;

    const/4 v0, 0x0

    sget-object v1, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    invoke-direct {p0, v0, v1, v0}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object p0
.end method

.method public static k(Ljava/lang/Object;)Ljn/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljn/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljn/O;

    sget-object v1, Ljn/Q;->SUCCSESS:Ljn/Q;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljn/O;-><init>(Ljava/lang/Object;Ljn/Q;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Ljn/O;->b:Ljn/Q;

    invoke-virtual {v0}, Ljn/Q;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Ljn/O;->b:Ljn/Q;

    invoke-virtual {v0}, Ljn/Q;->e()Z

    move-result v0

    return v0
.end method
