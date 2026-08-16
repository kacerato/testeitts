.class public final Lcom/android/tools/r8/internal/SO;
.super Lcom/android/tools/r8/internal/UO;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/SO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/SO;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/SO;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/SO;->a:Lcom/android/tools/r8/internal/SO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/UO;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Attempt to build message of any type encoded as absent."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "(...)"

    return-object v0
.end method
