.class public final enum LGe/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LIe/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LGe/e;",
        ">;",
        "LIe/j<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LGe/e;

.field public static final enum INSTANCE:LGe/e;

.field public static final enum NEVER:LGe/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LGe/e;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LGe/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGe/e;->INSTANCE:LGe/e;

    new-instance v1, LGe/e;

    const-string v2, "NEVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LGe/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, LGe/e;->NEVER:LGe/e;

    filled-new-array {v0, v1}, [LGe/e;

    move-result-object v0

    sput-object v0, LGe/e;->$VALUES:[LGe/e;

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

.method public static a(LBe/f;)V
    .locals 1

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {p0, v0}, LBe/f;->e(LDe/c;)V

    invoke-interface {p0}, LBe/f;->a()V

    return-void
.end method

.method public static b(LBe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {p0, v0}, LBe/v;->e(LDe/c;)V

    invoke-interface {p0}, LBe/v;->a()V

    return-void
.end method

.method public static c(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {p0, v0}, LBe/I;->e(LDe/c;)V

    invoke-interface {p0}, LBe/I;->a()V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;LBe/f;)V
    .locals 1

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    invoke-interface {p1, p0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g(Ljava/lang/Throwable;LBe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LBe/v<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    invoke-interface {p1, p0}, LBe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static h(Ljava/lang/Throwable;LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LBe/I<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    invoke-interface {p1, p0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/Throwable;LBe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LBe/N<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    invoke-interface {p1, p0}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LGe/e;
    .locals 1

    const-class v0, LGe/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LGe/e;

    return-object p0
.end method

.method public static values()[LGe/e;
    .locals 1

    sget-object v0, LGe/e;->$VALUES:[LGe/e;

    invoke-virtual {v0}, [LGe/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGe/e;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    sget-object v0, LGe/e;->INSTANCE:LGe/e;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
