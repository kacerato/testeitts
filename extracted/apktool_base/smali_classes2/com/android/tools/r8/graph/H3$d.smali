.class public interface abstract Lcom/android/tools/r8/graph/H3$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/b1;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public a()Z
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract b()Z
.end method
