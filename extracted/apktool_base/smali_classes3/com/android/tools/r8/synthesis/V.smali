.class public final Lcom/android/tools/r8/synthesis/V;
.super Lcom/android/tools/r8/synthesis/S$b;
.source "SourceFile"


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/synthesis/S$b;-><init>(ILjava/lang/String;)V

    iput-boolean p3, p0, Lcom/android/tools/r8/synthesis/V;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/synthesis/V;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/lA;)V
    .locals 2

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    check-cast p1, Lcom/android/tools/r8/internal/F;

    .line 3
    const-string v1, "method"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
