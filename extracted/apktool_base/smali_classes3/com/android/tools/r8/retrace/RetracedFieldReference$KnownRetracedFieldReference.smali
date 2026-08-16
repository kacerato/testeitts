.class public interface abstract Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedFieldReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/RetracedFieldReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KnownRetracedFieldReference"
.end annotation


# virtual methods
.method public abstract getFieldReference()Lcom/android/tools/r8/references/FieldReference;
.end method

.method public abstract getFieldType()Lcom/android/tools/r8/references/TypeReference;
.end method

.method public abstract synthetic isKnown()Z
.end method

.method public abstract synthetic isUnknown()Z
.end method
