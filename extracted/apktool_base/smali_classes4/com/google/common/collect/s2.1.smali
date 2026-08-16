.class public Lcom/google/common/collect/s2;
.super Lcom/google/common/collect/n1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/s2$c;,
        Lcom/google/common/collect/s2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/n1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final h:Lcom/google/common/collect/s2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient e:Lcom/google/common/collect/d2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d2<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final transient f:I

.field public transient g:Lcom/google/common/collect/r1;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/s2;

    invoke-static {}, Lcom/google/common/collect/d2;->c()Lcom/google/common/collect/d2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/s2;-><init>(Lcom/google/common/collect/d2;)V

    sput-object v0, Lcom/google/common/collect/s2;->h:Lcom/google/common/collect/s2;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/d2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d2<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/n1;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/d2;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/d2;->D()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/common/collect/d2;->l(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/s2;->f:I

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s2;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/s2$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/s2$c;-><init>(Lcom/google/common/collect/V1;)V

    return-object v0
.end method

.method public s()Lcom/google/common/collect/r1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/r1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/s2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/s2$b;-><init>(Lcom/google/common/collect/s2;Lcom/google/common/collect/s2$a;)V

    iput-object v0, p0, Lcom/google/common/collect/s2;->g:Lcom/google/common/collect/r1;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/s2;->f:I

    return v0
.end method

.method public v(I)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->h(I)Lcom/google/common/collect/V1$a;

    move-result-object p1

    return-object p1
.end method
