.class public final Lcom/google/common/collect/j$b;
.super Lcom/google/common/collect/Q1$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j$b;->e:Lcom/google/common/collect/j;

    invoke-direct {p0}, Lcom/google/common/collect/Q1$q;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/j;Lcom/google/common/collect/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/j$b;-><init>(Lcom/google/common/collect/j;)V

    return-void
.end method


# virtual methods
.method public C0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j$b;->e:Lcom/google/common/collect/j;

    invoke-virtual {v0}, Lcom/google/common/collect/j;->i()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public D0()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/j$b;->e:Lcom/google/common/collect/j;

    return-object v0
.end method
