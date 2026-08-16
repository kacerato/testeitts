.class public Lhi/I;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1


# instance fields
.field public b:Lhi/K;

.field public c:Lhi/F;

.field public d:Lhi/S;

.field public e:I


# direct methods
.method public constructor <init>(Lhi/F;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lhi/I;-><init>(Lhi/F;I)V

    return-void
.end method

.method public constructor <init>(Lhi/F;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/I;->c:Lhi/F;

    iput p2, p0, Lhi/I;->e:I

    return-void
.end method

.method public constructor <init>(Lhi/K;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lhi/I;-><init>(Lhi/K;I)V

    return-void
.end method

.method public constructor <init>(Lhi/K;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/I;->b:Lhi/K;

    iput p2, p0, Lhi/I;->e:I

    return-void
.end method

.method public constructor <init>(Lhi/S;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lhi/I;->e:I

    iput-object p1, p0, Lhi/I;->d:Lhi/S;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 6

    .line 6
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lhi/I;->e:I

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v3

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v3, v1}, Lhi/S;->x(Loh/M;Z)Lhi/S;

    move-result-object v3

    iput-object v3, p0, Lhi/I;->d:Lhi/S;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3, v1}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v3

    iput-object v3, p0, Lhi/I;->c:Lhi/F;

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Lhi/K;->v(Loh/M;Z)Lhi/K;

    move-result-object v3

    iput-object v3, p0, Lhi/I;->b:Lhi/K;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Lhi/I;->e:I

    return-void

    :cond_4
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

.method public constructor <init>(Loh/M;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lhi/I;->e:I

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    invoke-static {p1, v0}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object p1

    iput-object p1, p0, Lhi/I;->c:Lhi/F;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v0}, Lhi/K;->v(Loh/M;Z)Lhi/K;

    move-result-object p1

    iput-object p1, p0, Lhi/I;->b:Lhi/K;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lhi/I;->e:I

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lhi/I;
    .locals 1

    instance-of v0, p0, Lhi/I;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/I;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lhi/I;

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/I;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lhi/I;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/I;-><init>(Loh/E;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    iget v0, p0, Lhi/I;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Loh/h;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Loh/h;-><init>(I)V

    iget-object v3, p0, Lhi/I;->b:Lhi/K;

    if-eqz v3, :cond_0

    new-instance v4, Loh/K0;

    invoke-direct {v4, v1, v1, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v3, p0, Lhi/I;->c:Lhi/F;

    if-eqz v3, :cond_1

    new-instance v4, Loh/K0;

    invoke-direct {v4, v1, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v2, p0, Lhi/I;->d:Lhi/S;

    if-eqz v2, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lhi/I;->c:Lhi/F;

    if-eqz v0, :cond_4

    new-instance v1, Loh/K0;

    invoke-direct {v1, v2, v2, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v1

    :cond_4
    new-instance v0, Loh/K0;

    iget-object v3, p0, Lhi/I;->b:Lhi/K;

    invoke-direct {v0, v2, v1, v3}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public u()Lhi/K;
    .locals 1

    iget-object v0, p0, Lhi/I;->b:Lhi/K;

    return-object v0
.end method

.method public v()Lhi/F;
    .locals 1

    iget-object v0, p0, Lhi/I;->c:Lhi/F;

    return-object v0
.end method

.method public x()Lhi/S;
    .locals 1

    iget-object v0, p0, Lhi/I;->d:Lhi/S;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lhi/I;->e:I

    return v0
.end method
