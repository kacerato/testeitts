.class public Lth/w;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final i:Lth/F;


# instance fields
.field public final b:Lth/F;

.field public final c:Loh/y;

.field public final d:Loh/y;

.field public final e:Loh/y;

.field public final f:Loh/s;

.field public final g:Lhi/b;

.field public final h:Loh/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lth/F;

    const-string v1, "CMP-KEM"

    invoke-direct {v0, v1}, Lth/F;-><init>(Ljava/lang/String;)V

    sput-object v0, Lth/w;->i:Lth/F;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lth/F;->u(Ljava/lang/Object;)Lth/F;

    move-result-object v2

    iput-object v2, p0, Lth/w;->b:Lth/F;

    sget-object v3, Lth/w;->i:Lth/F;

    invoke-virtual {v3, v2}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lth/w;->C(Loh/E;I)Loh/M;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3, v0, v2, v1}, Loh/V;->L(Loh/M;IZI)Loh/B;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Loh/y;

    invoke-static {p1, v4}, Lth/w;->C(Loh/E;I)Loh/M;

    move-result-object v3

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v2

    move-object v0, v5

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v3, v2, v2, v1}, Loh/V;->L(Loh/M;IZI)Loh/B;

    move-result-object v7

    if-eqz v7, :cond_1

    check-cast v7, Loh/y;

    add-int/lit8 v6, v6, 0x1

    invoke-static {p1, v6}, Lth/w;->C(Loh/E;I)Loh/M;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v3, v4, v2, v1}, Loh/V;->L(Loh/M;IZI)Loh/B;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v5, v1

    check-cast v5, Loh/y;

    add-int/lit8 v6, v6, 0x1

    invoke-static {p1, v6}, Lth/w;->C(Loh/E;I)Loh/M;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    iput-object v0, p0, Lth/w;->c:Loh/y;

    iput-object v7, p0, Lth/w;->d:Loh/y;

    iput-object v5, p0, Lth/w;->e:Loh/y;

    invoke-virtual {p1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lth/w;->f:Loh/s;

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lth/w;->g:Lhi/b;

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lth/w;->h:Loh/y;

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    if-ne v6, p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected data at end of sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "staticString field should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence size should be between 4 and 7 inclusive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/y;Loh/y;Loh/y;JLhi/b;Loh/y;)V
    .locals 7

    .line 1
    new-instance v4, Loh/s;

    invoke-direct {v4, p4, p5}, Loh/s;-><init>(J)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lth/w;-><init>(Loh/y;Loh/y;Loh/y;Loh/s;Lhi/b;Loh/y;)V

    return-void
.end method

.method public constructor <init>(Loh/y;Loh/y;Loh/y;Loh/s;Lhi/b;Loh/y;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Lth/w;->i:Lth/F;

    iput-object v0, p0, Lth/w;->b:Lth/F;

    iput-object p1, p0, Lth/w;->c:Loh/y;

    iput-object p2, p0, Lth/w;->d:Loh/y;

    iput-object p3, p0, Lth/w;->e:Loh/y;

    iput-object p4, p0, Lth/w;->f:Loh/s;

    iput-object p5, p0, Lth/w;->g:Lhi/b;

    iput-object p6, p0, Lth/w;->h:Loh/y;

    return-void
.end method

.method public static C(Loh/E;I)Loh/M;
    .locals 0

    invoke-virtual {p0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    instance-of p1, p0, Loh/M;

    if-eqz p1, :cond_0

    check-cast p0, Loh/M;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static u(Loh/h;ILoh/g;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p0, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/w;
    .locals 1

    instance-of v0, p0, Lth/w;

    if-eqz v0, :cond_0

    check-cast p0, Lth/w;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/w;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/w;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/w;->d:Loh/y;

    return-object v0
.end method

.method public B()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/w;->c:Loh/y;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/w;->b:Lth/F;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lth/w;->c:Loh/y;

    invoke-static {v0, v1, v2}, Lth/w;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lth/w;->d:Loh/y;

    invoke-static {v0, v1, v2}, Lth/w;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lth/w;->e:Loh/y;

    invoke-static {v0, v1, v2}, Lth/w;->u(Loh/h;ILoh/g;)V

    iget-object v1, p0, Lth/w;->f:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/w;->g:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/w;->h:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/w;->h:Loh/y;

    return-object v0
.end method

.method public x()Loh/s;
    .locals 1

    iget-object v0, p0, Lth/w;->f:Loh/s;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/w;->g:Lhi/b;

    return-object v0
.end method

.method public z()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/w;->e:Loh/y;

    return-object v0
.end method
