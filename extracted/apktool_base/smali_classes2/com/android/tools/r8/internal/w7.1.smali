.class public final Lcom/android/tools/r8/internal/w7;
.super Lcom/android/tools/r8/internal/O50;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/w7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/w7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/w7;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/w7;->b:Lcom/android/tools/r8/internal/w7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/O50;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Vf;Z)Lcom/android/tools/r8/internal/O50;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/rg;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/tools/r8/internal/R50;->c:Lcom/android/tools/r8/internal/R50;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/tools/r8/internal/R50;->b:Lcom/android/tools/r8/internal/R50;

    :goto_0
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/rg;-><init>(Ljava/util/Map;)V

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

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
