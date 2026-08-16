.class public final enum Lcom/android/tools/r8/shaking/i3;
.super Lcom/android/tools/r8/shaking/l3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "ENUM"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/shaking/l3;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result p1

    return p1
.end method
