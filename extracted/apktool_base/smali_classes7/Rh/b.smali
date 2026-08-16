.class public LRh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:LRh/a;

.field public final c:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LRh/b;->c:Loh/E;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LRh/a;->w(Ljava/lang/Object;)LRh/a;

    move-result-object p1

    iput-object p1, p0, LRh/b;->b:LRh/a;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LRh/b;
    .locals 1

    instance-of v0, p0, LRh/b;

    if-eqz v0, :cond_0

    check-cast p0, LRh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LRh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LRh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LRh/b;->c:Loh/E;

    return-object v0
.end method

.method public v()LRh/a;
    .locals 1

    iget-object v0, p0, LRh/b;->b:LRh/a;

    return-object v0
.end method

.method public x()Loh/c;
    .locals 2

    iget-object v0, p0, LRh/b;->c:Loh/E;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v0

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 2

    iget-object v0, p0, LRh/b;->c:Loh/E;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    return-object v0
.end method
