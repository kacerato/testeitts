.class public final Lcom/android/tools/r8/synthesis/U;
.super Lcom/android/tools/r8/synthesis/T;
.source "SourceFile"


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/synthesis/T;-><init>(ILjava/lang/String;Z)V

    iput-boolean p3, p0, Lcom/android/tools/r8/synthesis/U;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lA;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "global"

    goto :goto_0

    :cond_0
    const-string v0, "fixed"

    :goto_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    check-cast p1, Lcom/android/tools/r8/internal/F;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    iget-boolean v0, p0, Lcom/android/tools/r8/synthesis/U;->e:Z

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/lA;->a(B)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/synthesis/U;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
