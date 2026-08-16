.class public Lcom/google/common/collect/Y2$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Y2;->k()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic e:Ljava/util/Iterator;

.field public final synthetic f:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Y2;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/Y2$a;->e:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Y2$a;->f:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Y2$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/Y2$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Y2$a;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Y2$a;->f:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/Y2$a;->d:Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Y2$a;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
