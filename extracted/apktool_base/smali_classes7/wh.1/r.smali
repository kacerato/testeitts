.class public Lwh/r;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4


# instance fields
.field public b:I

.field public c:Loh/g;


# direct methods
.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, Lwh/r;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-static {p1, v1}, Luh/u;->x(Loh/M;Z)Luh/u;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lwh/r;->c:Loh/g;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in POPOPrivKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v1}, Lwh/q;->w(Loh/M;Z)Lwh/q;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->O()I

    move-result p1

    invoke-static {p1}, Lwh/w;->T(I)Lwh/w;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lwh/q;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lwh/r;->b:I

    iput-object p1, p0, Lwh/r;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Lwh/w;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lwh/r;->b:I

    iput-object p1, p0, Lwh/r;->c:Loh/g;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/r;
    .locals 1

    instance-of v0, p0, Lwh/r;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/r;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/r;

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/r;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lwh/r;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Loh/M;->W(Loh/M;Z)Loh/M;

    move-result-object p0

    invoke-static {p0}, Lwh/r;->u(Ljava/lang/Object;)Lwh/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/K0;

    iget v1, p0, Lwh/r;->b:I

    iget-object v2, p0, Lwh/r;->c:Loh/g;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lwh/r;->b:I

    return v0
.end method

.method public y()Loh/g;
    .locals 1

    iget-object v0, p0, Lwh/r;->c:Loh/g;

    return-object v0
.end method
