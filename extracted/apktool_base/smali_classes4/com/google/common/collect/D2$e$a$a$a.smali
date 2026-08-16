.class public Lcom/google/common/collect/D2$e$a$a$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/D2$e$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public d:I

.field public final synthetic e:Lcom/google/common/collect/D2$e$a$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/D2$e$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/D2$e$a$a$a;->e:Lcom/google/common/collect/D2$e$a$a;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/D2$e$a$a$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/D2$e$a$a$a;->e:Lcom/google/common/collect/D2$e$a$a;

    iget-object v0, v0, Lcom/google/common/collect/D2$e$a$a;->b:Ljava/util/BitSet;

    iget v1, p0, Lcom/google/common/collect/D2$e$a$a$a;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/D2$e$a$a$a;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/D2$e$a$a$a;->e:Lcom/google/common/collect/D2$e$a$a;

    iget-object v0, v0, Lcom/google/common/collect/D2$e$a$a;->c:Lcom/google/common/collect/D2$e$a;

    iget-object v0, v0, Lcom/google/common/collect/D2$e$a;->e:Lcom/google/common/collect/D2$e;

    iget-object v0, v0, Lcom/google/common/collect/D2$e;->c:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/D2$e$a$a$a;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
