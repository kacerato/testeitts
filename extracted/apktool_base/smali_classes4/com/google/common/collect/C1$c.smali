.class public Lcom/google/common/collect/C1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/C1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/t<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/B1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/B1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/B1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/B1<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/C1$c;->b:Lcom/google/common/collect/B1;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/C1$c;->b:Lcom/google/common/collect/B1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/B1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/C1$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/C1$c;

    iget-object v0, p0, Lcom/google/common/collect/C1$c;->b:Lcom/google/common/collect/B1;

    iget-object p1, p1, Lcom/google/common/collect/C1$c;->b:Lcom/google/common/collect/B1;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/C1$c;->b:Lcom/google/common/collect/B1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
