.class public LA2/D$b$a;
.super LA2/L;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/D$b;->n(Ljava/lang/Object;)Ljava/util/Set;
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
.field public final synthetic d:LA2/D$b;


# direct methods
.method public constructor <init>(LA2/D$b;LA2/k;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LA2/D$b$a;->d:LA2/D$b;

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

    iget-object v0, p0, LA2/D$b$a;->d:LA2/D$b;

    invoke-virtual {v0}, LA2/D$b;->S()LA2/z;

    move-result-object v0

    iget-object v1, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LA2/z;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/D$b$a$a;

    invoke-direct {v1, p0}, LA2/D$b$a$a;-><init>(LA2/D$b$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
