.class public LA2/c0$a;
.super LA2/L;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/c0;->n(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LA2/L<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:LA2/B;


# direct methods
.method public constructor <init>(LA2/c0;LA2/k;Ljava/lang/Object;LA2/B;)V
    .locals 0

    iput-object p4, p0, LA2/c0$a;->d:LA2/B;

    invoke-direct {p0, p2, p3}, LA2/L;-><init>(LA2/k;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/c0$a;->d:LA2/B;

    iget-object v1, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LA2/B;->g(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
