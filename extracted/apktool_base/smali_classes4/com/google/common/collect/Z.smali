.class public Lcom/google/common/collect/Z;
.super Lcom/google/common/collect/h1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lv2/b;
    serializable = true
.end annotation


# static fields
.field public static final l:Lcom/google/common/collect/Z;

.field public static final m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/Z;

    invoke-direct {v0}, Lcom/google/common/collect/Z;-><init>()V

    sput-object v0, Lcom/google/common/collect/Z;->l:Lcom/google/common/collect/Z;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/h1;-><init>(Lcom/google/common/collect/i1;I)V

    return-void
.end method

.method private i0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/Z;->l:Lcom/google/common/collect/Z;

    return-object v0
.end method
