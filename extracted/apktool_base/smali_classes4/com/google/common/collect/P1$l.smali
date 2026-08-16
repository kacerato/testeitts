.class public final Lcom/google/common/collect/P1$l;
.super Lcom/google/common/collect/P1$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/P1<",
        "TK;TV;TE;TS;>.i<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/P1$i;-><init>(Lcom/google/common/collect/P1;)V

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

    invoke-virtual {p0}, Lcom/google/common/collect/P1$i;->d()Lcom/google/common/collect/P1$J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/P1$J;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
