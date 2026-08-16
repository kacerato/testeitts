.class public LCh/q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;

.field public c:Loh/E;

.field public d:LCh/p;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_6

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    invoke-static {v0}, LCh/p;->u(Ljava/lang/Object;)LCh/p;

    move-result-object v0

    iput-object v0, p0, LCh/q;->d:LCh/p;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LVh/a;->v(Ljava/lang/Object;)LVh/a;

    goto :goto_1

    :cond_2
    iput-object v0, p0, LCh/q;->c:Loh/E;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    goto :goto_2

    :cond_4
    iput-object v0, p0, LCh/q;->b:Loh/E;

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Lhi/r;[LVh/a;LCh/p;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, LCh/q;->b:Loh/E;

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, LCh/q;->c:Loh/E;

    :cond_1
    iput-object p3, p0, LCh/q;->d:LCh/p;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LCh/q;
    .locals 1

    instance-of v0, p0, LCh/q;

    if-eqz v0, :cond_0

    check-cast p0, LCh/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LCh/q;->b:Loh/E;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LCh/q;->c:Loh/E;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LCh/q;->d:LCh/p;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-virtual {v1}, LCh/p;->r()Loh/B;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[Lhi/r;
    .locals 4

    iget-object v0, p0, LCh/q;->b:Loh/E;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lhi/r;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v2, v0, [Lhi/r;

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, LCh/q;->b:Loh/E;

    invoke-virtual {v3, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public x()[LVh/a;
    .locals 4

    iget-object v0, p0, LCh/q;->c:Loh/E;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [LVh/a;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v2, v0, [LVh/a;

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, LCh/q;->c:Loh/E;

    invoke-virtual {v3, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LVh/a;->v(Ljava/lang/Object;)LVh/a;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public y()LCh/p;
    .locals 1

    iget-object v0, p0, LCh/q;->d:LCh/p;

    return-object v0
.end method
