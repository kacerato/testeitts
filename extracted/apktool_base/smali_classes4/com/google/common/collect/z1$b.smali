.class public final Lcom/google/common/collect/z1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final g:J


# instance fields
.field public final b:[Ljava/lang/Object;

.field public final c:[Ljava/lang/Object;

.field public final d:[Ljava/lang/Object;

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/z1$b;->b:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/z1$b;->c:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/z1$b;->d:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/common/collect/z1$b;->e:[I

    iput-object p5, p0, Lcom/google/common/collect/z1$b;->f:[I

    return-void
.end method

.method public static a(Lcom/google/common/collect/z1;[I[I)Lcom/google/common/collect/z1$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z1<",
            "***>;[I[I)",
            "Lcom/google/common/collect/z1$b;"
        }
    .end annotation

    new-instance v6, Lcom/google/common/collect/z1$b;

    invoke-virtual {p0}, Lcom/google/common/collect/z1;->y()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/z1;->l()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/z1;->C()Lcom/google/common/collect/c1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/c1;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/z1$b;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V

    return-object v6
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/common/collect/z1$b;->d:[Ljava/lang/Object;

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/z1;->s()Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/z1$b;->b:[Ljava/lang/Object;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/google/common/collect/z1$b;->c:[Ljava/lang/Object;

    aget-object v2, v2, v3

    aget-object v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/z1;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/google/common/collect/g1$a;

    array-length v0, v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/g1$a;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/z1$b;->d:[Ljava/lang/Object;

    array-length v2, v0

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/z1$b;->b:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/z1$b;->e:[I

    aget v4, v4, v3

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/google/common/collect/z1$b;->c:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/z1$b;->f:[I

    aget v5, v5, v3

    aget-object v4, v4, v5

    aget-object v0, v0, v3

    invoke-static {v2, v4, v0}, Lcom/google/common/collect/z1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/S2$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/z1$b;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/collect/r1;->v([Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/z1$b;->c:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/r1;->v([Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/x2;->J(Lcom/google/common/collect/g1;Lcom/google/common/collect/r1;Lcom/google/common/collect/r1;)Lcom/google/common/collect/x2;

    move-result-object v0

    return-object v0
.end method
