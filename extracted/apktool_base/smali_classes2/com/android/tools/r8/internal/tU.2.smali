.class public Lcom/android/tools/r8/internal/tU;
.super Lcom/android/tools/r8/internal/Hx0;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/tU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/tU;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tU;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/tU;->d:Lcom/android/tools/r8/internal/tU;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Hx0;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "J"

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    const-string v0, "long"

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/tU;->d:Lcom/android/tools/r8/internal/tU;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "LONG"

    return-object v0
.end method
