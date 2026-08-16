.class public final Lcom/android/tools/r8/internal/v80;
.super Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/v80;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/v80;->c:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/tools/r8/retrace/MappingSupplier;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/w80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/v80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/v80;->b:Z

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/v80;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/w80;-><init>(Lcom/android/tools/r8/retrace/ProguardMapProducer;ZZ)V

    return-object v0
.end method

.method public final self()Lcom/android/tools/r8/retrace/MappingSupplierBuilder;
    .locals 0

    return-object p0
.end method

.method public final setAllowExperimental(Z)Lcom/android/tools/r8/retrace/MappingSupplierBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/v80;->b:Z

    return-object p0
.end method

.method public final setLoadAllDefinitions(Z)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/v80;->c:Z

    return-object p0
.end method

.method public final setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/v80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    return-object p0
.end method
