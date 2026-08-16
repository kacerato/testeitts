.class public LNm/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVm/d$c;
.implements LZm/g$c;
.implements Lan/d$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()LMm/a;
    .locals 1

    new-instance v0, LNm/f;

    invoke-direct {v0}, LNm/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lan/d$b;)V
    .locals 1

    new-instance v0, LNm/f$b;

    invoke-direct {v0, p0}, LNm/f$b;-><init>(LNm/f;)V

    invoke-virtual {p1, v0}, Lan/d$b;->e(Lan/c;)Lan/d$b;

    return-void
.end method

.method public b(LZm/g$b;)V
    .locals 1

    new-instance v0, LNm/f$a;

    invoke-direct {v0, p0}, LNm/f$a;-><init>(LNm/f;)V

    invoke-virtual {p1, v0}, LZm/g$b;->j(LZm/f;)LZm/g$b;

    return-void
.end method

.method public c(LVm/d$b;)V
    .locals 1

    new-instance v0, LOm/a$b;

    invoke-direct {v0}, LOm/a$b;-><init>()V

    invoke-virtual {p1, v0}, LVm/d$b;->g(LWm/e;)LVm/d$b;

    return-void
.end method
