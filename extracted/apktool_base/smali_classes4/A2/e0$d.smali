.class public LA2/e0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/e0;->e(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/r1;

.field public final synthetic c:LA2/e0;


# direct methods
.method public constructor <init>(LA2/e0;Lcom/google/common/collect/r1;)V
    .locals 0

    iput-object p1, p0, LA2/e0$d;->c:LA2/e0;

    iput-object p2, p0, LA2/e0$d;->b:Lcom/google/common/collect/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/e0$d;->c:LA2/e0;

    invoke-virtual {v0}, LA2/e0;->i()LA2/e0$g;

    move-result-object v0

    iget-object v1, p0, LA2/e0$d;->b:Lcom/google/common/collect/r1;

    invoke-virtual {v1}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    invoke-virtual {v0, v1}, LA2/e0$g;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
