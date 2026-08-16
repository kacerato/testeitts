.class public Lcom/google/common/collect/T1$k$f;
.super Lcom/google/common/collect/T1$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T1$k;->d(Ljava/lang/Class;)Lcom/google/common/collect/T1$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/T1$l<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lcom/google/common/collect/T1$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/T1$k;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/T1$k$f;->c:Lcom/google/common/collect/T1$k;

    iput-object p2, p0, Lcom/google/common/collect/T1$k$f;->b:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/collect/T1$l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/S1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T1$k$f;->j()Lcom/google/common/collect/C2;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/C2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T1$f;

    iget-object v1, p0, Lcom/google/common/collect/T1$k$f;->b:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/common/collect/T1$f;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/common/collect/T1$k$f;->c:Lcom/google/common/collect/T1$k;

    invoke-virtual {v1}, Lcom/google/common/collect/T1$k;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/U1;->w(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/C2;

    move-result-object v0

    return-object v0
.end method
