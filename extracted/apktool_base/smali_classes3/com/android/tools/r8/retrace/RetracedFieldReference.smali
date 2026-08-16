.class public interface abstract Lcom/android/tools/r8/retrace/RetracedFieldReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedClassMemberReference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;
    }
.end annotation


# virtual methods
.method public abstract asKnown()Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;
.end method

.method public abstract getFieldName()Ljava/lang/String;
.end method

.method public abstract isKnown()Z
.end method

.method public abstract isUnknown()Z
.end method
