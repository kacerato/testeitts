.class public final enum Lio/reactivex/internal/util/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LBe/I;
.implements LBe/v;
.implements LBe/N;
.implements LBe/f;
.implements Lhn/d;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/h;",
        ">;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;",
        "LBe/I<",
        "Ljava/lang/Object;",
        ">;",
        "LBe/v<",
        "Ljava/lang/Object;",
        ">;",
        "LBe/N<",
        "Ljava/lang/Object;",
        ">;",
        "LBe/f;",
        "Lhn/d;",
        "LDe/c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/h;

.field public static final enum INSTANCE:Lio/reactivex/internal/util/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/internal/util/h;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/h;->INSTANCE:Lio/reactivex/internal/util/h;

    filled-new-array {v0}, [Lio/reactivex/internal/util/h;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/util/h;->$VALUES:[Lio/reactivex/internal/util/h;

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

.method public static c()LBe/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/I<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/h;->INSTANCE:Lio/reactivex/internal/util/h;

    return-object v0
.end method

.method public static g()Lhn/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lhn/c<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/util/h;->INSTANCE:Lio/reactivex/internal/util/h;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/h;
    .locals 1

    const-class v0, Lio/reactivex/internal/util/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/util/h;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/h;
    .locals 1

    sget-object v0, Lio/reactivex/internal/util/h;->$VALUES:[Lio/reactivex/internal/util/h;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-interface {p1}, LDe/c;->dispose()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public i(J)V
    .locals 0

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 0

    invoke-interface {p1}, Lhn/d;->cancel()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method
