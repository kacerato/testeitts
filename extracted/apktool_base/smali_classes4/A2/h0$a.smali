.class public LA2/h0$a;
.super LA2/O;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/h0;->l(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LA2/O<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:LA2/h0;


# direct methods
.method public constructor <init>(LA2/h0;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LA2/h0$a;->e:LA2/h0;

    iput-object p4, p0, LA2/h0$a;->d:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, LA2/O;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 2

    iget-object v0, p0, LA2/h0$a;->e:LA2/h0;

    invoke-static {v0}, LA2/h0;->m(LA2/h0;)Lcom/google/common/collect/V1;

    move-result-object v0

    iget-object v1, p0, LA2/h0$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
