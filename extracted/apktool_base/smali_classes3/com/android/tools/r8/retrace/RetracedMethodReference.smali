.class public interface abstract Lcom/android/tools/r8/retrace/RetracedMethodReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedClassMemberReference;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetracedClassMemberReference;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/retrace/RetracedMethodReference;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract asKnown()Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;
.end method

.method public abstract getMethodName()Ljava/lang/String;
.end method

.method public abstract getOriginalPositionOrDefault(I)I
.end method

.method public abstract hasPosition()Z
.end method

.method public abstract isKnown()Z
.end method

.method public abstract isUnknown()Z
.end method
