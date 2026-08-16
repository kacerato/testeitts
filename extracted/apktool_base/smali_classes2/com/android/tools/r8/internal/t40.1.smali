.class public abstract Lcom/android/tools/r8/internal/t40;
.super Lcom/android/tools/r8/internal/f7;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/t40;

.field public static final b:Lcom/android/tools/r8/internal/t40;

.field public static final c:Lcom/android/tools/r8/internal/t40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/q40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    new-instance v0, Lcom/android/tools/r8/internal/r40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    new-instance v0, Lcom/android/tools/r8/internal/s40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/s40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/f7;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/android/tools/r8/internal/t40;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p0
.end method

.method public static h()Lcom/android/tools/r8/internal/t40;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
