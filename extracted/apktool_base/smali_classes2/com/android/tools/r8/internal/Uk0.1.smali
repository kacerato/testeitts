.class public final Lcom/android/tools/r8/internal/Uk0;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/nJ$g;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Uk0;->b:Lcom/android/tools/r8/internal/nJ$g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^([^$]+)\\$.*"

    const-string v1, "$1"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameFilePolicy"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uk0;->b:Lcom/android/tools/r8/internal/nJ$g;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$g;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
