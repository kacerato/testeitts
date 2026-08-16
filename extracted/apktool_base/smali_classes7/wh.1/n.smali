.class public Lwh/n;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/o0;

.field public c:Lhi/o0;


# direct methods
.method public constructor <init>(Lhi/o0;Lhi/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "at least one of notBefore/notAfter must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lwh/n;->b:Lhi/o0;

    iput-object p2, p0, Lwh/n;->c:Lhi/o0;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lhi/o0;->w(Loh/M;Z)Lhi/o0;

    move-result-object v0

    if-nez v1, :cond_0

    iput-object v0, p0, Lwh/n;->b:Lhi/o0;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lwh/n;->c:Lhi/o0;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/n;
    .locals 1

    instance-of v0, p0, Lwh/n;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/n;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/n;->b:Lhi/o0;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lwh/n;->c:Lhi/o0;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lwh/n;->c:Lhi/o0;

    return-object v0
.end method

.method public x()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lwh/n;->b:Lhi/o0;

    return-object v0
.end method
