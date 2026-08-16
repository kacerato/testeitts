.class public final Lcom/android/tools/r8/internal/Zk0;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zk0;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Zk0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameNestHost"

    return-object v0
.end method
