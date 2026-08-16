.class public abstract Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
.super Lcom/android/tools/r8/retrace/MappingSupplierBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/ProguardMappingSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/retrace/MappingSupplierBuilder<",
        "Lcom/android/tools/r8/retrace/ProguardMappingSupplier;",
        "Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/retrace/MappingSupplierBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setLoadAllDefinitions(Z)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
.end method

.method public abstract setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
.end method
