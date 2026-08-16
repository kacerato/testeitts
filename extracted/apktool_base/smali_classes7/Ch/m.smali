.class public LCh/m;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/y;

.field public c:LCh/n;


# direct methods
.method public constructor <init>(LCh/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/m;->c:LCh/n;

    return-void
.end method

.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/m;->b:Loh/y;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LCh/m;->b:Loh/y;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LCh/m;
    .locals 1

    instance-of v0, p0, LCh/m;

    if-eqz v0, :cond_0

    check-cast p0, LCh/m;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/y;

    if-eqz v0, :cond_1

    new-instance v0, LCh/m;

    check-cast p0, Loh/y;

    invoke-direct {v0, p0}, LCh/m;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    new-instance v0, LCh/m;

    invoke-static {p0}, LCh/n;->w(Ljava/lang/Object;)LCh/n;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/m;-><init>(LCh/n;)V

    return-object v0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LCh/m;->c:LCh/n;

    if-nez v0, :cond_0

    iget-object v0, p0, LCh/m;->b:Loh/y;

    return-object v0

    :cond_0
    invoke-virtual {v0}, LCh/n;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Lhi/b;
    .locals 2

    iget-object v0, p0, LCh/m;->c:LCh/n;

    if-nez v0, :cond_0

    new-instance v0, Lhi/b;

    sget-object v1, LWh/b;->i:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, LCh/n;->u()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, LCh/m;->c:LCh/n;

    if-nez v0, :cond_0

    iget-object v0, p0, LCh/m;->b:Loh/y;

    :goto_0
    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, LCh/n;->v()Loh/y;

    move-result-object v0

    goto :goto_0
.end method
