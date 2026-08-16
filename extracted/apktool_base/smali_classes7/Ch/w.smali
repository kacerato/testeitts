.class public LCh/w;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LCh/v;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LCh/w;->c:Z

    return-void
.end method

.method public constructor <init>(LCh/v;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/w;->b:LCh/v;

    const/4 p1, 0x0

    iput-boolean p1, p0, LCh/w;->c:Z

    return-void
.end method

.method public static u(Ljava/lang/Object;)LCh/w;
    .locals 1

    instance-of v0, p0, LCh/w;

    if-eqz v0, :cond_0

    check-cast p0, LCh/w;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/t;

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-static {p0, v0}, Loh/v;->t(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, LCh/w;

    invoke-static {p0}, LCh/v;->u(Ljava/lang/Object;)LCh/v;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/w;-><init>(LCh/v;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, LCh/w;

    invoke-direct {p0}, LCh/w;-><init>()V

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-boolean v0, p0, LCh/w;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Loh/A0;->c:Loh/A0;

    return-object v0

    :cond_0
    iget-object v0, p0, LCh/w;->b:LCh/v;

    invoke-virtual {v0}, LCh/v;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public v()LCh/v;
    .locals 1

    iget-object v0, p0, LCh/w;->b:LCh/v;

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, LCh/w;->c:Z

    return v0
.end method
