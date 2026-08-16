.class public Lcom/google/common/collect/n2$a;
.super Lcom/google/common/collect/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n2;->i()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/google/common/collect/n2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n2;Ljava/lang/Comparable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/n2$a;->d:Lcom/google/common/collect/n2;

    invoke-direct {p0, p2}, Lcom/google/common/collect/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/common/collect/n2;->Z0()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n2$a;->c:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2$a;->b(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n2$a;->c:Ljava/lang/Comparable;

    invoke-static {p1, v0}, Lcom/google/common/collect/n2;->V0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/n2$a;->d:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/W;->g(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
