.class public final Lcom/android/tools/r8/internal/v40;
.super Lcom/android/tools/r8/internal/x40;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/v40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/v40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/x40;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    const-string v0, "<absent>"

    return-object v0
.end method
