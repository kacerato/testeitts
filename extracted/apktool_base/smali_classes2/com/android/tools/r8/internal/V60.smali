.class public interface abstract Lcom/android/tools/r8/internal/V60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public abstract apply(Ljava/lang/Object;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/V60;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
