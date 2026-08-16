.class public Lcom/android/tools/r8/internal/n8;
.super Lcom/android/tools/r8/internal/Km0;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/n8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/n8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/n8;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/n8;->d:Lcom/android/tools/r8/internal/n8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Km0;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "B"

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    const-string v0, "byte"

    return-object v0
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

    sget-object v0, Lcom/android/tools/r8/internal/n8;->d:Lcom/android/tools/r8/internal/n8;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BYTE"

    return-object v0
.end method
