.class public final Lcom/android/tools/r8/internal/v7;
.super Lcom/android/tools/r8/internal/v50;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/v7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/v7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v7;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/v7;->b:Lcom/android/tools/r8/internal/v7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/v50;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/internal/u50;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/u7;->a:Lcom/android/tools/r8/internal/u7;

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/v50;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/QF;

    const/16 v1, 0x10

    .line 3
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QF;-><init>(I)V

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/QF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/v7;->b:Lcom/android/tools/r8/internal/v7;

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/O00;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/O00;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/v50;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/v7;->b:Lcom/android/tools/r8/internal/v7;

    if-ne p1, v0, :cond_0

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
