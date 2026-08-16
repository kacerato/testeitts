.class public LXh/m;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LXh/m;->b:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lhi/b;

    invoke-direct {v0, p1, p2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object v0, p0, LXh/m;->b:Lhi/b;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/m;
    .locals 1

    instance-of v0, p0, LXh/m;

    if-eqz v0, :cond_0

    check-cast p0, LXh/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/m;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/m;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LXh/m;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, LXh/m;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LXh/m;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    return-object v0
.end method
