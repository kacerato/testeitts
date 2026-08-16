.class public Lcom/android/tools/r8/synthesis/T;
.super Lcom/android/tools/r8/synthesis/S$b;
.source "SourceFile"


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/synthesis/S$b;-><init>(ILjava/lang/String;)V

    iput-boolean p3, p0, Lcom/android/tools/r8/synthesis/T;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/lA;)V
    .locals 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    check-cast p1, Lcom/android/tools/r8/internal/F;

    const-string v1, "class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    iget-boolean v0, p0, Lcom/android/tools/r8/synthesis/T;->d:Z

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/lA;->a(B)Lcom/android/tools/r8/internal/lA;

    return-void
.end method

.method public c()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/synthesis/U;

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/synthesis/T;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
