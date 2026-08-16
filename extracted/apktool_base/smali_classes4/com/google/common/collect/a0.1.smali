.class public Lcom/google/common/collect/a0;
.super Lcom/google/common/collect/s1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/s1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lv2/b;
    serializable = true
.end annotation


# static fields
.field public static final n:Lcom/google/common/collect/a0;

.field public static final o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/a0;

    invoke-direct {v0}, Lcom/google/common/collect/a0;-><init>()V

    sput-object v0, Lcom/google/common/collect/a0;->n:Lcom/google/common/collect/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/collect/s1;-><init>(Lcom/google/common/collect/i1;ILjava/util/Comparator;)V

    return-void
.end method

.method private n0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/a0;->n:Lcom/google/common/collect/a0;

    return-object v0
.end method
