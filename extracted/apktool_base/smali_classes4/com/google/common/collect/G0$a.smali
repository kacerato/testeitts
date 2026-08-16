.class public Lcom/google/common/collect/G0$a;
.super Lcom/google/common/collect/Q1$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/G0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$q<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/G0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/G0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/G0$a;->e:Lcom/google/common/collect/G0;

    invoke-direct {p0}, Lcom/google/common/collect/Q1$q;-><init>()V

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

    new-instance v0, Lcom/google/common/collect/G0$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/G0$a$a;-><init>(Lcom/google/common/collect/G0$a;)V

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

    iget-object v0, p0, Lcom/google/common/collect/G0$a;->e:Lcom/google/common/collect/G0;

    return-object v0
.end method
