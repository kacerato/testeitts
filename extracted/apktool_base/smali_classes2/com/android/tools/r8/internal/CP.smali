.class public final Lcom/android/tools/r8/internal/CP;
.super Lcom/android/tools/r8/internal/DP;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/CP;

.field public static final c:Lcom/android/tools/r8/internal/nC;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/kP;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/CP;

    sget-object v1, Lcom/android/tools/r8/internal/kP;->b:Lcom/android/tools/r8/internal/kP;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CP;-><init>(Lcom/android/tools/r8/internal/kP;)V

    sput-object v0, Lcom/android/tools/r8/internal/CP;->b:Lcom/android/tools/r8/internal/CP;

    invoke-static {}, Lcom/android/tools/r8/internal/CP;->c()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/CP;->c:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/kP;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/DP;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CP;->a:Lcom/android/tools/r8/internal/kP;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/kP;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kP;->a()C

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/CP;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/CP;-><init>(Lcom/android/tools/r8/internal/kP;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public static c()Lcom/android/tools/r8/internal/nC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    new-instance v1, Lcom/android/tools/r8/internal/EB0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EB0;-><init>(Lcom/android/tools/r8/internal/kC;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/kP;->a(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/CP;->a:Lcom/android/tools/r8/internal/kP;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/CP;->a:Lcom/android/tools/r8/internal/kP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kP;->a()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
