.class public Lcom/google/common/collect/Q1$A$a;
.super Lcom/google/common/collect/Q1$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Q1$A;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$s<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Q1$A;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q1$A;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q1$A$a;->b:Lcom/google/common/collect/Q1$A;

    invoke-direct {p0}, Lcom/google/common/collect/Q1$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$A$a;->b:Lcom/google/common/collect/Q1$A;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$A$a;->b:Lcom/google/common/collect/Q1$A;

    invoke-virtual {v0}, Lcom/google/common/collect/Q1$A;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
