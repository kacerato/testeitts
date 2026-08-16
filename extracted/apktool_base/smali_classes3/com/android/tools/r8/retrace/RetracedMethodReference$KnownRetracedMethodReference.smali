.class public interface abstract Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedMethodReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/RetracedMethodReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KnownRetracedMethodReference"
.end annotation


# virtual methods
.method public abstract getFormalTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/references/TypeReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodReference()Lcom/android/tools/r8/references/MethodReference;
.end method

.method public abstract getReturnType()Lcom/android/tools/r8/references/TypeReference;
.end method

.method public abstract isVoid()Z
.end method
