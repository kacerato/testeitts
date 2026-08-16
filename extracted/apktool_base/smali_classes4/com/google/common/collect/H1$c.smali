.class public final Lcom/google/common/collect/H1$c;
.super Lcom/google/common/collect/D2$k;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/H1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/H1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/D2$k<",
        "TV;>;",
        "Lcom/google/common/collect/H1$d<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/d;
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public c:[Lcom/google/common/collect/H1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/H1$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Lcom/google/common/collect/H1$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public g:Lcom/google/common/collect/H1$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lcom/google/common/collect/H1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/H1;Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Lcom/google/common/collect/H1;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/H1$c;->h:Lcom/google/common/collect/H1;

    invoke-direct {p0}, Lcom/google/common/collect/D2$k;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/H1$c;->d:I

    iput p1, p0, Lcom/google/common/collect/H1$c;->e:I

    iput-object p2, p0, Lcom/google/common/collect/H1$c;->b:Ljava/lang/Object;

    iput-object p0, p0, Lcom/google/common/collect/H1$c;->f:Lcom/google/common/collect/H1$d;

    iput-object p0, p0, Lcom/google/common/collect/H1$c;->g:Lcom/google/common/collect/H1$d;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p1, p2}, Lcom/google/common/collect/Y0;->a(ID)I

    move-result p1

    new-array p1, p1, [Lcom/google/common/collect/H1$b;

    iput-object p1, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    return-void
.end method

.method public static synthetic a(Lcom/google/common/collect/H1$c;)Lcom/google/common/collect/H1$d;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/H1$c;->f:Lcom/google/common/collect/H1$d;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/common/collect/H1$c;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/H1$c;->e:I

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/H1$c;->h()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, v0}, Lcom/google/common/collect/H1$b;->h(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v3, v3, Lcom/google/common/collect/H1$b;->f:Lcom/google/common/collect/H1$b;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/common/collect/H1$b;

    iget-object v4, p0, Lcom/google/common/collect/H1$c;->b:Ljava/lang/Object;

    invoke-direct {v3, v4, p1, v0, v2}, Lcom/google/common/collect/H1$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/H1$b;)V

    iget-object p1, p0, Lcom/google/common/collect/H1$c;->g:Lcom/google/common/collect/H1$d;

    invoke-static {p1, v3}, Lcom/google/common/collect/H1;->M(Lcom/google/common/collect/H1$d;Lcom/google/common/collect/H1$d;)V

    invoke-static {v3, p0}, Lcom/google/common/collect/H1;->M(Lcom/google/common/collect/H1$d;Lcom/google/common/collect/H1$d;)V

    iget-object p1, p0, Lcom/google/common/collect/H1$c;->h:Lcom/google/common/collect/H1;

    invoke-static {p1}, Lcom/google/common/collect/H1;->O(Lcom/google/common/collect/H1;)Lcom/google/common/collect/H1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/H1$b;->e()Lcom/google/common/collect/H1$b;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/common/collect/H1;->P(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V

    iget-object p1, p0, Lcom/google/common/collect/H1$c;->h:Lcom/google/common/collect/H1;

    invoke-static {p1}, Lcom/google/common/collect/H1;->O(Lcom/google/common/collect/H1;)Lcom/google/common/collect/H1$b;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/common/collect/H1;->P(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V

    iget-object p1, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    aput-object v3, p1, v1

    iget p1, p0, Lcom/google/common/collect/H1$c;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/H1$c;->d:I

    iget p1, p0, Lcom/google/common/collect/H1$c;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/H1$c;->e:I

    invoke-virtual {p0}, Lcom/google/common/collect/H1$c;->i()V

    return v0
.end method

.method public b()Lcom/google/common/collect/H1$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/H1$c;->g:Lcom/google/common/collect/H1$d;

    return-object v0
.end method

.method public c(Lcom/google/common/collect/H1$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/H1$c;->f:Lcom/google/common/collect/H1$d;

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/H1$c;->d:I

    iget-object v0, p0, Lcom/google/common/collect/H1$c;->f:Lcom/google/common/collect/H1$d;

    :goto_0
    if-eq v0, p0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/H1$b;

    invoke-static {v1}, Lcom/google/common/collect/H1;->R(Lcom/google/common/collect/H1$b;)V

    invoke-interface {v0}, Lcom/google/common/collect/H1$d;->g()Lcom/google/common/collect/H1$d;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p0}, Lcom/google/common/collect/H1;->M(Lcom/google/common/collect/H1$d;Lcom/google/common/collect/H1$d;)V

    iget v0, p0, Lcom/google/common/collect/H1$c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/H1$c;->e:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    invoke-virtual {p0}, Lcom/google/common/collect/H1$c;->h()I

    move-result v2

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/H1$b;->h(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v1, v1, Lcom/google/common/collect/H1$b;->f:Lcom/google/common/collect/H1$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/google/common/collect/H1$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/H1$c;->g:Lcom/google/common/collect/H1$d;

    return-void
.end method

.method public g()Lcom/google/common/collect/H1$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/H1$c;->f:Lcom/google/common/collect/H1$d;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final i()V
    .locals 6

    iget v0, p0, Lcom/google/common/collect/H1$c;->d:I

    iget-object v1, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/Y0;->b(IID)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/google/common/collect/H1$b;

    iput-object v1, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/google/common/collect/H1$c;->f:Lcom/google/common/collect/H1$d;

    :goto_0
    if-eq v2, p0, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/google/common/collect/H1$b;

    iget v4, v3, Lcom/google/common/collect/H1$b;->e:I

    and-int/2addr v4, v0

    aget-object v5, v1, v4

    iput-object v5, v3, Lcom/google/common/collect/H1$b;->f:Lcom/google/common/collect/H1$b;

    aput-object v3, v1, v4

    invoke-interface {v2}, Lcom/google/common/collect/H1$d;->g()Lcom/google/common/collect/H1$d;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/H1$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/H1$c$a;-><init>(Lcom/google/common/collect/H1$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/H1$c;->h()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, v0}, Lcom/google/common/collect/H1$b;->h(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/H1$c;->c:[Lcom/google/common/collect/H1$b;

    iget-object v0, v2, Lcom/google/common/collect/H1$b;->f:Lcom/google/common/collect/H1$b;

    aput-object v0, p1, v1

    goto :goto_1

    :cond_0
    iget-object p1, v2, Lcom/google/common/collect/H1$b;->f:Lcom/google/common/collect/H1$b;

    iput-object p1, v3, Lcom/google/common/collect/H1$b;->f:Lcom/google/common/collect/H1$b;

    :goto_1
    invoke-static {v2}, Lcom/google/common/collect/H1;->Q(Lcom/google/common/collect/H1$d;)V

    invoke-static {v2}, Lcom/google/common/collect/H1;->R(Lcom/google/common/collect/H1$b;)V

    iget p1, p0, Lcom/google/common/collect/H1$c;->d:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/H1$c;->d:I

    iget p1, p0, Lcom/google/common/collect/H1$c;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/H1$c;->e:I

    return v0

    :cond_1
    iget-object v3, v2, Lcom/google/common/collect/H1$b;->f:Lcom/google/common/collect/H1$b;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/H1$c;->d:I

    return v0
.end method
