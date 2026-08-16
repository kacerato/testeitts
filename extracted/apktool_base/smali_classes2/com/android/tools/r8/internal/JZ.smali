.class public final Lcom/android/tools/r8/internal/JZ;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoAnnotationClassesPolicy"

    return-object v0
.end method
