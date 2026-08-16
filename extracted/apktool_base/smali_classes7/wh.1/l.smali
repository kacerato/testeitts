.class public Lwh/l;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Luh/u;

.field public c:Lwh/m;


# direct methods
.method public constructor <init>(Luh/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/l;->b:Luh/u;

    return-void
.end method

.method public constructor <init>(Lwh/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/l;->c:Lwh/m;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/l;
    .locals 2

    instance-of v0, p0, Lwh/l;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/l;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lwh/l;

    check-cast p0, Loh/M;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Luh/u;->x(Loh/M;Z)Luh/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/l;-><init>(Luh/u;)V

    return-object v0

    :cond_1
    new-instance v0, Lwh/l;

    invoke-static {p0}, Lwh/m;->y(Ljava/lang/Object;)Lwh/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/l;-><init>(Lwh/m;)V

    return-object v0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    iget-object v0, p0, Lwh/l;->c:Lwh/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwh/m;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Loh/K0;

    iget-object v1, p0, Lwh/l;->b:Luh/u;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, Lwh/l;->c:Lwh/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lwh/l;->b:Luh/u;

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lwh/l;->c:Lwh/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
