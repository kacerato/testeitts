.class public Lcom/google/common/collect/d0$a;
.super Lcom/google/common/collect/d0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d0;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d0<",
        "TE;>.c<TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/d0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d0$a;->e:Lcom/google/common/collect/d0;

    invoke-direct {p0, p1}, Lcom/google/common/collect/d0$c;-><init>(Lcom/google/common/collect/d0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0$a;->b(I)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/d0$a;->e:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->h(Lcom/google/common/collect/d0;)[Ljava/lang/Enum;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
