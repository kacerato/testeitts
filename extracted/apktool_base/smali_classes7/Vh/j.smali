.class public LVh/j;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/g;


# direct methods
.method public constructor <init>(Lfi/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/j;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/j;->b:Loh/g;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LVh/j;
    .locals 2

    instance-of v0, p0, LVh/j;

    if-eqz v0, :cond_0

    check-cast p0, LVh/j;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/C0;

    if-eqz v0, :cond_1

    new-instance v0, LVh/j;

    check-cast p0, Loh/C0;

    invoke-direct {v0, p0}, LVh/j;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_3

    check-cast p0, Loh/M;

    invoke-virtual {p0}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, LVh/j;

    invoke-static {p0, v1}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/j;-><init>(Lfi/d;)V

    return-object v0

    :cond_2
    new-instance v0, LVh/j;

    invoke-static {p0, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/j;-><init>(Loh/y;)V

    return-object v0

    :cond_3
    new-instance v0, LVh/j;

    invoke-static {p0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/j;-><init>(Lfi/d;)V

    return-object v0
.end method

.method public static v(Loh/M;Z)LVh/j;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, LVh/j;->u(Ljava/lang/Object;)LVh/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, LVh/j;->b:Loh/g;

    instance-of v1, v0, Loh/y;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v1

    :cond_0
    new-instance v1, Loh/K0;

    invoke-direct {v1, v2, v2, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v1
.end method

.method public x()[B
    .locals 2

    iget-object v0, p0, LVh/j;->b:Loh/g;

    instance-of v1, v0, Loh/y;

    if-eqz v1, :cond_0

    check-cast v0, Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Lfi/d;
    .locals 2

    iget-object v0, p0, LVh/j;->b:Loh/g;

    instance-of v1, v0, Loh/y;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    return-object v0
.end method
