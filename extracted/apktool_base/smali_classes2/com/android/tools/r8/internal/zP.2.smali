.class public final Lcom/android/tools/r8/internal/zP;
.super Lcom/android/tools/r8/internal/DP;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/zP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zP;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zP;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/zP;->a:Lcom/android/tools/r8/internal/zP;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/DP;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    const-string v0, "<any>"

    return-object v0
.end method
