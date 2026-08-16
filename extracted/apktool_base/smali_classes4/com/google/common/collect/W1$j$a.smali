.class public Lcom/google/common/collect/W1$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/W1$j;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "Lcom/google/common/collect/V1$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/W1$j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/W1$j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/W1$j$a;->b:Lcom/google/common/collect/W1$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/V1$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/W1$j$a;->b:Lcom/google/common/collect/W1$j;

    iget-object v0, v0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    invoke-interface {p1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/common/collect/V1$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/W1$j$a;->a(Lcom/google/common/collect/V1$a;)Z

    move-result p1

    return p1
.end method
