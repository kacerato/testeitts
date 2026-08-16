.class public Lcom/google/common/collect/T1$k$b;
.super Lcom/google/common/collect/T1$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T1$k;->i()Lcom/google/common/collect/T1$j;
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
.field public final synthetic b:Lcom/google/common/collect/T1$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/T1$k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/T1$k$b;->b:Lcom/google/common/collect/T1$k;

    invoke-direct {p0}, Lcom/google/common/collect/T1$j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/S1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T1$k$b;->j()Lcom/google/common/collect/L1;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/L1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T1$k$b;->b:Lcom/google/common/collect/T1$k;

    invoke-virtual {v0}, Lcom/google/common/collect/T1$k;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/T1$i;->c()Lw2/Q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/U1;->u(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/L1;

    move-result-object v0

    return-object v0
.end method
