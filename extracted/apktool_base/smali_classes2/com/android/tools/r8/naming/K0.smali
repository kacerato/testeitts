.class public final Lcom/android/tools/r8/naming/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Kb;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/lA;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/pA;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/oA;->a:Lcom/android/tools/r8/internal/hW;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hW;->a()Lcom/android/tools/r8/internal/lA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/naming/K0;->a:Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/MapIdProvider;)Lcom/android/tools/r8/MapIdProvider;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Lcom/android/tools/r8/naming/e2;

    invoke-direct {p0}, Lcom/android/tools/r8/naming/e2;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/MapIdEnvironment;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/MapIdEnvironment;->getMapHash()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/naming/K0;->a:Lcom/android/tools/r8/internal/lA;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    check-cast v0, Lcom/android/tools/r8/internal/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    return-object p0
.end method
