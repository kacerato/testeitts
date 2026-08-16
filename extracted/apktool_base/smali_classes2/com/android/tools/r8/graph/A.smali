.class public final Lcom/android/tools/r8/graph/A;
.super Lcom/android/tools/r8/graph/B;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/B;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/A;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/A;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    :cond_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Lcom/android/tools/r8/RecordTag;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "Ljava/lang/Record;"

    :cond_0
    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/A;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    :cond_0
    return-object p1
.end method
