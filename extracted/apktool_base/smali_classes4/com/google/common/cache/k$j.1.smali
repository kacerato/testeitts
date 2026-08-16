.class public final Lcom/google/common/cache/k$j;
.super Lcom/google/common/cache/k$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/k<",
        "TK;TV;>.i<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$i;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/k$i;->d()Lcom/google/common/cache/k$L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/k$L;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
