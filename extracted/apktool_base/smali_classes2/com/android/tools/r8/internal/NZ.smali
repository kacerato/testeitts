.class public final Lcom/android/tools/r8/internal/NZ;
.super Lcom/android/tools/r8/internal/I4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/I4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->q0()Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoClassAnnotationCollisions"

    return-object v0
.end method
