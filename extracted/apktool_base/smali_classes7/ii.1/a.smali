.class public Lii/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lii/h;

.field public c:Lhi/b;

.field public d:Loh/y;

.field public e:Loh/q;


# direct methods
.method public constructor <init>(Lii/h;Lhi/b;Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lii/a;->b:Lii/h;

    iput-object p2, p0, Lii/a;->c:Lhi/b;

    iput-object p3, p0, Lii/a;->d:Loh/y;

    const/4 p1, 0x0

    iput-object p1, p0, Lii/a;->e:Loh/q;

    return-void
.end method

.method public constructor <init>(Lii/h;Lhi/b;Loh/y;Loh/q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lii/a;->b:Lii/h;

    iput-object p2, p0, Lii/a;->c:Lhi/b;

    iput-object p3, p0, Lii/a;->d:Loh/y;

    iput-object p4, p0, Lii/a;->e:Loh/q;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lii/h;->v(Ljava/lang/Object;)Lii/h;

    move-result-object v0

    iput-object v0, p0, Lii/a;->b:Lii/h;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lii/a;->c:Lhi/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lii/a;->d:Loh/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object p1

    iput-object p1, p0, Lii/a;->e:Loh/q;

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)Lii/a;
    .locals 1

    instance-of v0, p0, Lii/a;

    if-eqz v0, :cond_0

    check-cast p0, Lii/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lii/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lii/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lii/a;->b:Lii/h;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lii/a;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lii/a;->d:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lii/a;->e:Loh/q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Lii/a;->d:Loh/y;

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lii/a;->c:Lhi/b;

    return-object v0
.end method

.method public x()Loh/z0;
    .locals 3

    iget-object v0, p0, Lii/a;->e:Loh/q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/z0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/z0;

    iget-object v1, p0, Lii/a;->e:Loh/q;

    invoke-virtual {v1}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loh/z0;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/z0;

    :goto_1
    return-object v0
.end method

.method public y()Loh/q;
    .locals 1

    iget-object v0, p0, Lii/a;->e:Loh/q;

    return-object v0
.end method

.method public z()Lii/h;
    .locals 1

    iget-object v0, p0, Lii/a;->b:Lii/h;

    return-object v0
.end method
