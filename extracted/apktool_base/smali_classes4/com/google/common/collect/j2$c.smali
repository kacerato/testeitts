.class public Lcom/google/common/collect/j2$c;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering<",
        "Lcom/google/common/collect/j2<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Lcom/google/common/collect/j2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/j2$c;

    invoke-direct {v0}, Lcom/google/common/collect/j2$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/j2$c;->d:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "*>;",
            "Lcom/google/common/collect/j2<",
            "*>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/K;->n()Lcom/google/common/collect/K;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v2, p2, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/K;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/K;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object p2, p2, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/K;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/K;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/K;->m()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/j2;

    check-cast p2, Lcom/google/common/collect/j2;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j2$c;->I(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;)I

    move-result p1

    return p1
.end method
