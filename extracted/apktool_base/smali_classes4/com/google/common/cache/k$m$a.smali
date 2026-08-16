.class public Lcom/google/common/cache/k$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/k$m;->i(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/cache/k$m;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k$m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$m$a;->b:Lcom/google/common/cache/k$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$m$a;->b:Lcom/google/common/cache/k$m;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k$m;->j(Ljava/lang/Object;)Z

    return-object p1
.end method
