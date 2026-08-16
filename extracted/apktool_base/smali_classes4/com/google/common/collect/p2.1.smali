.class public final Lcom/google/common/collect/p2;
.super Lcom/google/common/collect/a1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a1<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final l:Lcom/google/common/collect/p2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient g:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final transient h:[Ljava/lang/Object;
    .annotation build Lv2/d;
    .end annotation
.end field

.field public final transient i:I

.field public final transient j:I

.field public final transient k:Lcom/google/common/collect/p2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p2<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/p2;

    invoke-direct {v0}, Lcom/google/common/collect/p2;-><init>()V

    sput-object v0, Lcom/google/common/collect/p2;->l:Lcom/google/common/collect/p2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/a1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/p2;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/p2;->h:[Ljava/lang/Object;

    .line 4
    iput v0, p0, Lcom/google/common/collect/p2;->i:I

    .line 5
    iput v0, p0, Lcom/google/common/collect/p2;->j:I

    .line 6
    iput-object p0, p0, Lcom/google/common/collect/p2;->k:Lcom/google/common/collect/p2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/p2;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/common/collect/p2<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/common/collect/a1;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/common/collect/p2;->g:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/google/common/collect/p2;->h:[Ljava/lang/Object;

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/google/common/collect/p2;->i:I

    .line 19
    iput p3, p0, Lcom/google/common/collect/p2;->j:I

    .line 20
    iput-object p4, p0, Lcom/google/common/collect/p2;->k:Lcom/google/common/collect/p2;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/a1;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/p2;->h:[Ljava/lang/Object;

    .line 9
    iput p2, p0, Lcom/google/common/collect/p2;->j:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/common/collect/p2;->i:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 11
    invoke-static {p2}, Lcom/google/common/collect/r1;->o(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 12
    :goto_0
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/r2;->Q([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/p2;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/r2;->Q([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/common/collect/p2;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/common/collect/p2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/p2;)V

    iput-object v1, p0, Lcom/google/common/collect/p2;->k:Lcom/google/common/collect/p2;

    return-void
.end method


# virtual methods
.method public bridge synthetic A8()Lcom/google/common/collect/w;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->T()Lcom/google/common/collect/a1;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/google/common/collect/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a1<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p2;->k:Lcom/google/common/collect/p2;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p2;->g:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/p2;->h:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/p2;->j:I

    iget v3, p0, Lcom/google/common/collect/p2;->i:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/r2;->R(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public o()Lcom/google/common/collect/r1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/r2$a;

    iget-object v1, p0, Lcom/google/common/collect/p2;->h:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/p2;->i:I

    iget v3, p0, Lcom/google/common/collect/p2;->j:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/r2$a;-><init>(Lcom/google/common/collect/i1;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public p()Lcom/google/common/collect/r1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/r2$c;

    iget-object v1, p0, Lcom/google/common/collect/p2;->h:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/p2;->i:I

    iget v3, p0, Lcom/google/common/collect/p2;->j:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/r2$c;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/common/collect/r2$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/r2$b;-><init>(Lcom/google/common/collect/i1;Lcom/google/common/collect/g1;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/p2;->j:I

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
