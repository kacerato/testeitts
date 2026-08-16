.class public final Lcom/android/tools/r8/shaking/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/shaking/g1;

.field public static final c:Lcom/android/tools/r8/shaking/g1;

.field public static final d:Lcom/android/tools/r8/shaking/g1;

.field public static final e:Lcom/android/tools/r8/shaking/g1;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/shaking/g1;

    const-string v1, "none"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/g1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    new-instance v0, Lcom/android/tools/r8/shaking/g1;

    const-string v1, "visible"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/g1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    new-instance v0, Lcom/android/tools/r8/shaking/g1;

    const-string v1, "invisible"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/g1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    new-instance v0, Lcom/android/tools/r8/shaking/g1;

    const-string v1, "all"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/g1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/g1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/shaking/g1;->b:Lcom/android/tools/r8/shaking/g1;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/shaking/g1;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
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

    iget-object v0, p0, Lcom/android/tools/r8/shaking/g1;->a:Ljava/lang/String;

    return-object v0
.end method
