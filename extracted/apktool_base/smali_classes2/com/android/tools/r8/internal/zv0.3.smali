.class public final Lcom/android/tools/r8/internal/zv0;
.super Lcom/android/tools/r8/internal/Q00;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/zv0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zv0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Q00;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 2
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
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

.method public final o()Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "\u22a4"

    return-object v0
.end method
