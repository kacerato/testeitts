.class public final enum Lcom/android/tools/r8/shaking/g3;
.super Lcom/android/tools/r8/shaking/l3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ANNOTATION_INTERFACE"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/shaking/l3;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
