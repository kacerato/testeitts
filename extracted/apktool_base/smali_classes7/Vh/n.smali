.class public LVh/n;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lfi/d;

.field public final c:Lhi/j;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    iput-object v0, p0, LVh/n;->b:Lfi/d;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/j;->y(Ljava/lang/Object;)Lhi/j;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LVh/n;->c:Lhi/j;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static u(Ljava/lang/Object;)LVh/n;
    .locals 1

    instance-of v0, p0, LVh/n;

    if-eqz v0, :cond_0

    check-cast p0, LVh/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/n;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LVh/n;->b:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/n;->c:Lhi/j;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lfi/d;
    .locals 1

    iget-object v0, p0, LVh/n;->b:Lfi/d;

    return-object v0
.end method

.method public x()Lhi/j;
    .locals 1

    iget-object v0, p0, LVh/n;->c:Lhi/j;

    return-object v0
.end method
