.class public Lcom/google/common/collect/h$a;
.super Lcom/google/common/collect/U1$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/U1$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-direct {p0}, Lcom/google/common/collect/U1$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

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

    iget-object v0, p0, Lcom/google/common/collect/h$a;->b:Lcom/google/common/collect/h;

    invoke-virtual {v0}, Lcom/google/common/collect/h;->h()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
