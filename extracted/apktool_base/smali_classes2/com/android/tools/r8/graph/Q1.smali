.class public final Lcom/android/tools/r8/graph/Q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->J2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "CLASS"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/Q1;->a:Lcom/android/tools/r8/graph/l1;

    return-void
.end method
