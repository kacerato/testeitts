.class public final Ln0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-short p1, p1

    invoke-static {p1}, Lnf/L0;->i(S)S

    move-result p1

    invoke-static {p1}, Ln0/i;->r(S)S

    move-result p1

    return p1
.end method

.method public final b()S
    .locals 1

    invoke-static {}, Ln0/i;->a()S

    move-result v0

    return v0
.end method

.method public final c()S
    .locals 1

    invoke-static {}, Ln0/i;->b()S

    move-result v0

    return v0
.end method

.method public final d()S
    .locals 1

    invoke-static {}, Ln0/i;->c()S

    move-result v0

    return v0
.end method

.method public final e()S
    .locals 1

    invoke-static {}, Ln0/i;->d()S

    move-result v0

    return v0
.end method

.method public final f()S
    .locals 1

    invoke-static {}, Ln0/i;->e()S

    move-result v0

    return v0
.end method

.method public final g()S
    .locals 1

    invoke-static {}, Ln0/i;->g()S

    move-result v0

    return v0
.end method

.method public final h()S
    .locals 1

    invoke-static {}, Ln0/i;->h()S

    move-result v0

    return v0
.end method

.method public final i()S
    .locals 1

    invoke-static {}, Ln0/i;->i()S

    move-result v0

    return v0
.end method

.method public final j()S
    .locals 1

    invoke-static {}, Ln0/i;->j()S

    move-result v0

    return v0
.end method

.method public final k()S
    .locals 1

    invoke-static {}, Ln0/i;->k()S

    move-result v0

    return v0
.end method
