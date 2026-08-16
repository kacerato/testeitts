.class public Lhi/c;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;


# direct methods
.method public constructor <init>(Lhi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/c;->b:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lhi/c;-><init>(Loh/x;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lhi/b;

    invoke-direct {v0, p1, p2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object v0, p0, Lhi/c;->b:Lhi/b;

    return-void
.end method

.method public static u(Lhi/C;)Lhi/c;
    .locals 1

    sget-object v0, Lhi/B;->L:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/c;->w(Ljava/lang/Object;)Lhi/c;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lhi/c;
    .locals 1

    instance-of v0, p0, Lhi/c;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/c;

    invoke-static {p0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/c;-><init>(Lhi/b;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/c;
    .locals 0

    invoke-static {p0, p1}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object p0

    invoke-static {p0}, Lhi/c;->w(Ljava/lang/Object;)Lhi/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/c;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/c;->b:Lhi/b;

    return-object v0
.end method
