.class public LA2/M$a$a;
.super Lcom/google/common/collect/e3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/M$a;->a()Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Iterator;

.field public final synthetic c:LA2/M$a;


# direct methods
.method public constructor <init>(LA2/M$a;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, LA2/M$a$a;->c:LA2/M$a;

    iput-object p2, p0, LA2/M$a$a;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/e3;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LA2/M$a$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, LA2/M$a$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, LA2/M$a$a;->c:LA2/M$a;

    iget-object v1, v1, LA2/M$a;->b:LA2/M;

    invoke-static {v1, v0}, LA2/M;->b(LA2/M;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
