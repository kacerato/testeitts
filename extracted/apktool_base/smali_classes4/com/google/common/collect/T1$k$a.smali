.class public Lcom/google/common/collect/T1$k$a;
.super Lcom/google/common/collect/T1$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T1$k;->b(I)Lcom/google/common/collect/T1$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/T1$j<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/collect/T1$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/T1$k;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/T1$k$a;->c:Lcom/google/common/collect/T1$k;

    iput p2, p0, Lcom/google/common/collect/T1$k$a;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/T1$j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/S1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T1$k$a;->j()Lcom/google/common/collect/L1;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/L1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T1$k$a;->c:Lcom/google/common/collect/T1$k;

    invoke-virtual {v0}, Lcom/google/common/collect/T1$k;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/T1$e;

    iget v2, p0, Lcom/google/common/collect/T1$k$a;->b:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/T1$e;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/U1;->u(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/L1;

    move-result-object v0

    return-object v0
.end method
