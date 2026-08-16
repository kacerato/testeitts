.class public final Lcom/android/tools/r8/internal/xv0;
.super Lcom/android/tools/r8/internal/O50;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/xv0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/xv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xv0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/xv0;->b:Lcom/android/tools/r8/internal/xv0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/O50;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Vf;Z)Lcom/android/tools/r8/internal/O50;
    .locals 0

    return-object p0
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
