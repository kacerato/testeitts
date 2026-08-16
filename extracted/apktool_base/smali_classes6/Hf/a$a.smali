.class public final LHf/a$a;
.super LHf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 2
    sget-object v4, LHf/a$b;->PRESENT:LHf/a$b;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LHf/a;-><init>(ZZILHf/a$b;Lkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LHf/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final M()LHf/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LHf/a;->a()LHf/a;

    move-result-object v0

    return-object v0
.end method

.method public final N()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LHf/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final O()LHf/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LHf/a;->c()LHf/a;

    move-result-object v0

    return-object v0
.end method

.method public final P()LHf/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LHf/a;->d()LHf/a;

    move-result-object v0

    return-object v0
.end method
