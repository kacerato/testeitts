.class public Lcom/android/tools/r8/CompatProguardCommandBuilder;
.super Lcom/android/tools/r8/R8Command$Builder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/CompatProguardCommandBuilder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/g0;

    invoke-direct {v0}, Lcom/android/tools/r8/g0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->setProguardCompatibility(Z)Lcom/android/tools/r8/R8Command$Builder;

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/android/tools/r8/R8Command$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/R8Command$Builder;->setProguardCompatibility(Z)Lcom/android/tools/r8/R8Command$Builder;

    return-void
.end method
