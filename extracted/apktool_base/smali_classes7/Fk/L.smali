.class public LFk/L;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFk/L$a;
    }
.end annotation


# instance fields
.field public final b:Loh/y;

.field public final c:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, LFk/L;->b:Loh/y;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, LFk/L;->c:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    array-length p1, p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "y must be 32 bytes long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x must be 32 bytes long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/y;Loh/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_0

    iput-object p1, p0, LFk/L;->b:Loh/y;

    iput-object p2, p0, LFk/L;->c:Loh/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y must be 32 bytes long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be 32 bytes long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LFk/L$a;
    .locals 1

    new-instance v0, LFk/L$a;

    invoke-direct {v0}, LFk/L$a;-><init>()V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)LFk/L;
    .locals 1

    instance-of v0, p0, LFk/L;

    if-eqz v0, :cond_0

    check-cast p0, LFk/L;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/L;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/L;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/G0;

    iget-object v1, p0, LFk/L;->b:Loh/y;

    iget-object v2, p0, LFk/L;->c:Loh/y;

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, LFk/L;->b:Loh/y;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, LFk/L;->c:Loh/y;

    return-object v0
.end method
