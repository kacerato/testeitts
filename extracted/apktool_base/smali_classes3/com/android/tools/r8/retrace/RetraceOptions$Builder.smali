.class public Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/RetraceOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lcom/android/tools/r8/DiagnosticsHandler;

.field private d:Lcom/android/tools/r8/retrace/MappingSupplier;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceOptions;->defaultRegularExpression()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/retrace/RetraceOptions;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->d:Lcom/android/tools/r8/retrace/MappingSupplier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/retrace/RetraceOptions;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-object v4, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->d:Lcom/android/tools/r8/retrace/MappingSupplier;

    iget-boolean v5, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->a:Z

    iget-boolean v6, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->b:Z

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/retrace/RetraceOptions;-><init>(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingSupplier;ZZLcom/android/tools/r8/retrace/J;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Regular expression not specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ProguardMapSupplier not specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DiagnosticsHandler not specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMappingSupplier(Lcom/android/tools/r8/retrace/MappingSupplier;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/MappingSupplier<",
            "*>;)",
            "Lcom/android/tools/r8/retrace/RetraceOptions$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->d:Lcom/android/tools/r8/retrace/MappingSupplier;

    return-object p0
.end method

.method public setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier;->builder()Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;->setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/MappingSupplierBuilder;->build()Lcom/android/tools/r8/retrace/MappingSupplier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->setMappingSupplier(Lcom/android/tools/r8/retrace/MappingSupplier;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRegularExpression(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setVerbose(Z)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->a:Z

    return-object p0
.end method

.method public setVerifyMappingFileHash(Z)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;->b:Z

    return-object p0
.end method
