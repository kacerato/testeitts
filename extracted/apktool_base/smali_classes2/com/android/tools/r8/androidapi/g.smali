.class public final Lcom/android/tools/r8/androidapi/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/androidapi/f;


# static fields
.field public static final b:Lcom/android/tools/r8/androidapi/g;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/androidapi/g;

    invoke-direct {v0}, Lcom/android/tools/r8/androidapi/g;-><init>()V

    sput-object v0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    sget-boolean p1, Lcom/android/tools/r8/androidapi/g;->c:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot compute relationship for not set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    sget-boolean p1, Lcom/android/tools/r8/androidapi/g;->c:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot compute relationship for not set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final e(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    sget-boolean p1, Lcom/android/tools/r8/androidapi/g;->c:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot compute relationship for not set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
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

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
