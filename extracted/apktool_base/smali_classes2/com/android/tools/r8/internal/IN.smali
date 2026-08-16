.class public Lcom/android/tools/r8/internal/IN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/IN;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/IN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IN;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/IN;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Invalid attempt to get descriptor string from none context"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
