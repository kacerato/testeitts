.class public LCh/r;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/Q;

.field public c:Lhi/x;


# direct methods
.method public constructor <init>(Lhi/Q;Lhi/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LCh/r;->b:Lhi/Q;

    iput-object p2, p0, LCh/r;->c:Lhi/x;

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

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/g;

    instance-of v1, v0, Lhi/x;

    if-nez v1, :cond_3

    instance-of v1, v0, Loh/J;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, v0, Lhi/Q;

    if-nez v1, :cond_2

    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element in \'SPUserNotice\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {v0}, Lhi/Q;->v(Ljava/lang/Object;)Lhi/Q;

    move-result-object v0

    iput-object v0, p0, LCh/r;->b:Lhi/Q;

    goto :goto_0

    :cond_3
    :goto_2
    invoke-static {v0}, Lhi/x;->u(Ljava/lang/Object;)Lhi/x;

    move-result-object v0

    iput-object v0, p0, LCh/r;->c:Lhi/x;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static v(Ljava/lang/Object;)LCh/r;
    .locals 1

    instance-of v0, p0, LCh/r;

    if-eqz v0, :cond_0

    check-cast p0, LCh/r;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/r;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/r;-><init>(Loh/E;)V

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

    iget-object v1, p0, LCh/r;->b:Lhi/Q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LCh/r;->c:Lhi/x;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/x;
    .locals 1

    iget-object v0, p0, LCh/r;->c:Lhi/x;

    return-object v0
.end method

.method public x()Lhi/Q;
    .locals 1

    iget-object v0, p0, LCh/r;->b:Lhi/Q;

    return-object v0
.end method
