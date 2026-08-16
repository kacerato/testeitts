.class public final Lcom/android/tools/r8/internal/Wt;
.super Lcom/android/tools/r8/internal/Q30;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Wt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Wt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Q30;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Q30;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final e()Z
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

    const-string v0, "EmptyObjectState"

    return-object v0
.end method
