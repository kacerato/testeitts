.class public abstract Lcom/android/tools/r8/retrace/MappingSupplierBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/android/tools/r8/retrace/MappingSupplier<",
        "TP;>;T:",
        "Lcom/android/tools/r8/retrace/MappingSupplierBuilder<",
        "TP;TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/tools/r8/retrace/MappingSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract self()Lcom/android/tools/r8/retrace/MappingSupplierBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract setAllowExperimental(Z)Lcom/android/tools/r8/retrace/MappingSupplierBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method
