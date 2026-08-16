.class public Lhi/Q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/x;

.field public c:Loh/E;


# direct methods
.method public constructor <init>(Lhi/x;Loh/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/Q;->b:Lhi/x;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lhi/Q;->c:Loh/E;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lhi/Q;->u(Ljava/util/Vector;)Loh/h;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lhi/Q;-><init>(Ljava/lang/String;Loh/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Loh/h;)V
    .locals 1

    .line 3
    new-instance v0, Lhi/x;

    invoke-direct {v0, p1}, Lhi/x;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lhi/Q;-><init>(Lhi/x;Loh/h;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/x;->u(Ljava/lang/Object;)Lhi/x;

    move-result-object v0

    iput-object v0, p0, Lhi/Q;->b:Lhi/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lhi/Q;->c:Loh/E;

    return-void

    :cond_0
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

.method public static u(Ljava/util/Vector;)Loh/h;
    .locals 5

    new-instance v0, Loh/h;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    new-instance v2, Loh/s;

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    new-instance v2, Loh/s;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    :goto_1
    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static v(Ljava/lang/Object;)Lhi/Q;
    .locals 1

    instance-of v0, p0, Lhi/Q;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/Q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/Q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/Q;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lhi/Q;->b:Lhi/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/Q;->c:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()[Loh/s;
    .locals 3

    iget-object v0, p0, Lhi/Q;->c:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Loh/s;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lhi/Q;->c:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lhi/Q;->c:Loh/E;

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public y()Lhi/x;
    .locals 1

    iget-object v0, p0, Lhi/Q;->b:Lhi/x;

    return-object v0
.end method
