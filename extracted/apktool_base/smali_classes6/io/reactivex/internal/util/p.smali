.class public final enum Lio/reactivex/internal/util/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/p$a;,
        Lio/reactivex/internal/util/p$c;,
        Lio/reactivex/internal/util/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/p;

.field public static final enum COMPLETE:Lio/reactivex/internal/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/internal/util/p;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    filled-new-array {v0}, [Lio/reactivex/internal/util/p;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/util/p;->$VALUES:[Lio/reactivex/internal/util/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/Object;LBe/I;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "LBe/I<",
            "-TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, LBe/I;->a()V

    return v1

    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/p$b;

    if-eqz v0, :cond_1

    check-cast p0, Lio/reactivex/internal/util/p$b;

    iget-object p0, p0, Lio/reactivex/internal/util/p$b;->b:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    invoke-interface {p1, p0}, LBe/I;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/Object;Lhn/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lhn/c<",
            "-TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lhn/c;->a()V

    return v1

    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/p$b;

    if-eqz v0, :cond_1

    check-cast p0, Lio/reactivex/internal/util/p$b;

    iget-object p0, p0, Lio/reactivex/internal/util/p$b;->b:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    invoke-interface {p1, p0}, Lhn/c;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Object;LBe/I;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "LBe/I<",
            "-TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, LBe/I;->a()V

    return v1

    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/p$b;

    if-eqz v0, :cond_1

    check-cast p0, Lio/reactivex/internal/util/p$b;

    iget-object p0, p0, Lio/reactivex/internal/util/p$b;->b:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    instance-of v0, p0, Lio/reactivex/internal/util/p$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lio/reactivex/internal/util/p$a;

    iget-object p0, p0, Lio/reactivex/internal/util/p$a;->b:LDe/c;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    return v1

    :cond_2
    invoke-interface {p1, p0}, LBe/I;->h(Ljava/lang/Object;)V

    return v1
.end method

.method public static d(Ljava/lang/Object;Lhn/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lhn/c<",
            "-TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lhn/c;->a()V

    return v1

    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/p$b;

    if-eqz v0, :cond_1

    check-cast p0, Lio/reactivex/internal/util/p$b;

    iget-object p0, p0, Lio/reactivex/internal/util/p$b;->b:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    instance-of v0, p0, Lio/reactivex/internal/util/p$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lio/reactivex/internal/util/p$c;

    iget-object p0, p0, Lio/reactivex/internal/util/p$c;->b:Lhn/d;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    return v1

    :cond_2
    invoke-interface {p1, p0}, Lhn/c;->h(Ljava/lang/Object;)V

    return v1
.end method

.method public static e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    return-object v0
.end method

.method public static g(LDe/c;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/p$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/p$a;-><init>(LDe/c;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/p$b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/p$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)LDe/c;
    .locals 0

    check-cast p0, Lio/reactivex/internal/util/p$a;

    iget-object p0, p0, Lio/reactivex/internal/util/p$a;->b:LDe/c;

    return-object p0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    check-cast p0, Lio/reactivex/internal/util/p$b;

    iget-object p0, p0, Lio/reactivex/internal/util/p$b;->b:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static k(Ljava/lang/Object;)Lhn/d;
    .locals 0

    check-cast p0, Lio/reactivex/internal/util/p$c;

    iget-object p0, p0, Lio/reactivex/internal/util/p$c;->b:Lhn/d;

    return-object p0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static o(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lio/reactivex/internal/util/p$a;

    return p0
.end method

.method public static r(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lio/reactivex/internal/util/p$b;

    return p0
.end method

.method public static s(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lio/reactivex/internal/util/p$c;

    return p0
.end method

.method public static u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static v(Lhn/d;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/p$c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/p$c;-><init>(Lhn/d;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/p;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/util/p;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/p;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/p;->$VALUES:[Lio/reactivex/internal/util/p;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/p;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NotificationLite.Complete"

    return-object v0
.end method
