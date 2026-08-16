.class public LCh/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    iput-object p1, p0, LCh/f;->b:Loh/E;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LCh/h;->w(Ljava/lang/Object;)LCh/h;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([LCh/h;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, LCh/f;->b:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LCh/f;
    .locals 1

    instance-of v0, p0, LCh/f;

    if-eqz v0, :cond_0

    check-cast p0, LCh/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCh/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCh/f;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, LCh/f;->b:Loh/E;

    invoke-direct {v0, v1}, Loh/G0;-><init>(Loh/g;)V

    return-object v0
.end method

.method public u()[LCh/h;
    .locals 4

    iget-object v0, p0, LCh/f;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [LCh/h;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, LCh/f;->b:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LCh/h;->w(Ljava/lang/Object;)LCh/h;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
