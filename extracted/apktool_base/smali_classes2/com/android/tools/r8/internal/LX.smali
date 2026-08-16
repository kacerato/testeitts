.class public abstract Lcom/android/tools/r8/internal/LX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/IX;

.field public static final b:Lcom/android/tools/r8/internal/JX;

.field public static final c:Lcom/android/tools/r8/internal/KX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/IX;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IX;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/LX;->a:Lcom/android/tools/r8/internal/IX;

    new-instance v0, Lcom/android/tools/r8/internal/JX;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/JX;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    new-instance v0, Lcom/android/tools/r8/internal/KX;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/KX;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    instance-of v0, p0, Lcom/android/tools/r8/internal/JX;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->setValue(Z)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/KX;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;->setValue(Z)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
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
