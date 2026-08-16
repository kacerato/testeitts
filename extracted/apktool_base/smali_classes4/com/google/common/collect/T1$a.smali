.class public Lcom/google/common/collect/T1$a;
.super Lcom/google/common/collect/T1$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/T1;->e(I)Lcom/google/common/collect/T1$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/T1$k<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/T1$a;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/T1$k;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/T1$a;->b:I

    invoke-static {v0}, Lcom/google/common/collect/h2;->d(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
