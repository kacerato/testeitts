.class public Lcom/android/tools/r8/internal/Nr;
.super Lcom/android/tools/r8/internal/Ro;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ro;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ro;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final A()[I
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Np;->d:[I

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/bo;->a(Lcom/android/tools/r8/internal/Ro;Lcom/android/tools/r8/internal/Np;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aB;->a()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 1

    const v0, -0x397938fc

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "ReturnVoid"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "return-void"

    return-object v0
.end method
