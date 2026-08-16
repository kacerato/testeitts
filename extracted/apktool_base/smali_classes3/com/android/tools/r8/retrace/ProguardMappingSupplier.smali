.class public abstract Lcom/android/tools/r8/retrace/ProguardMappingSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/MappingSupplier<",
        "Lcom/android/tools/r8/retrace/ProguardMappingSupplier;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/v80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v80;-><init>()V

    return-object v0
.end method
