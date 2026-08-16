.class public final Lcom/android/tools/r8/graph/Z2;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/graph/Z2;

.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Z2;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Z2;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    return-void
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->s:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 1

    .line 2
    sget-object p2, Lcom/android/tools/r8/graph/V2;->s:Lcom/android/tools/r8/graph/V2;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    sget-boolean p2, Lcom/android/tools/r8/graph/Z2;->e:Z

    if-nez p2, :cond_1

    sget-object v0, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    sget-object p2, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    sget-boolean p1, Lcom/android/tools/r8/graph/Z2;->e:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of p1, p1, Lcom/android/tools/r8/graph/Z2;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Null"

    return-object v0
.end method
