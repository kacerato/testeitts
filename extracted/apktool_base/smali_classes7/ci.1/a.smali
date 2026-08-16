.class public Lci/a;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x3e7

.field public static final g:I = 0x1

.field public static final h:I = 0x3e7


# instance fields
.field public b:Loh/s;

.field public c:Loh/s;

.field public d:Loh/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lci/a;->b:Loh/s;

    iput-object v0, p0, Lci/a;->c:Loh/s;

    iput-object v0, p0, Lci/a;->d:Loh/s;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/s;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/s;

    iput-object v2, p0, Lci/a;->b:Loh/s;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/M;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/M;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-ne v3, v5, :cond_2

    invoke-static {v2, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v2

    iput-object v2, p0, Lci/a;->d:Loh/s;

    invoke-virtual {v2}, Loh/s;->O()I

    move-result v2

    if-lt v2, v5, :cond_1

    if-gt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid micros field : not in (1..999)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid tag number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v2, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v2

    iput-object v2, p0, Lci/a;->c:Loh/s;

    invoke-virtual {v2}, Loh/s;->O()I

    move-result v2

    if-lt v2, v5, :cond_4

    if-gt v2, v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid millis field : not in (1..999)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public constructor <init>(Loh/s;Loh/s;Loh/s;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/16 v0, 0x3e7

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Loh/s;->O()I

    move-result v2

    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid millis field : not in (1..999)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Loh/s;->O()I

    move-result v2

    if-lt v2, v1, :cond_2

    if-gt v2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid micros field : not in (1..999)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lci/a;->b:Loh/s;

    iput-object p2, p0, Lci/a;->c:Loh/s;

    iput-object p3, p0, Lci/a;->d:Loh/s;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lci/a;
    .locals 1

    instance-of v0, p0, Lci/a;

    if-eqz v0, :cond_0

    check-cast p0, Lci/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/a;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lci/a;->b:Loh/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lci/a;->c:Loh/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lci/a;->d:Loh/s;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/a;->d:Loh/s;

    return-object v0
.end method

.method public x()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/a;->c:Loh/s;

    return-object v0
.end method

.method public y()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/a;->b:Loh/s;

    return-object v0
.end method
