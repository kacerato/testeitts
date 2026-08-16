.class public final Lcom/android/tools/r8/graph/t2;
.super Lcom/android/tools/r8/graph/C1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/graph/C1;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    const-string v2, "TYPE"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/t2;->a:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/l1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/t2;->a:Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method
