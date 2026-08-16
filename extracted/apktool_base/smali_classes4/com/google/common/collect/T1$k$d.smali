.class public Lcom/google/common/collect/T1$k$d;
.super Lcom/google/common/collect/T1$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T1$k;->h(I)Lcom/google/common/collect/T1$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/T1$l<",
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

    iput-object p1, p0, Lcom/google/common/collect/T1$k$d;->c:Lcom/google/common/collect/T1$k;

    iput p2, p0, Lcom/google/common/collect/T1$k$d;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/T1$l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/S1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T1$k$d;->j()Lcom/google/common/collect/C2;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/collect/C2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T1$k$d;->c:Lcom/google/common/collect/T1$k;

    invoke-virtual {v0}, Lcom/google/common/collect/T1$k;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/T1$h;

    iget v2, p0, Lcom/google/common/collect/T1$k$d;->b:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/T1$h;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/U1;->w(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/C2;

    move-result-object v0

    return-object v0
.end method
