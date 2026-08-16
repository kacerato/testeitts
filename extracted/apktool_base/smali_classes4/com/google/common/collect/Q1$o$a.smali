.class public Lcom/google/common/collect/Q1$o$a;
.super Lcom/google/common/collect/Q1$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Q1$o;->e()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$s<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Q1$o;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q1$o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q1$o$a;->b:Lcom/google/common/collect/Q1$o;

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

    iget-object v0, p0, Lcom/google/common/collect/Q1$o$a;->b:Lcom/google/common/collect/Q1$o;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$o$a;->b:Lcom/google/common/collect/Q1$o;

    invoke-virtual {v0}, Lcom/google/common/collect/Q1$o;->k()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Q1$o$a;->b:Lcom/google/common/collect/Q1$o;

    iget-object v1, v1, Lcom/google/common/collect/Q1$o;->f:Lw2/t;

    invoke-static {v0, v1}, Lcom/google/common/collect/Q1;->m(Ljava/util/Set;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
