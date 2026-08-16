.class public final Lcom/android/tools/r8/graph/I3;
.super Lcom/android/tools/r8/graph/H3$i;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/H3$i;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/I3;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/graph/I3;->a:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/graph/I3;
    .locals 0

    return-object p0
.end method

.method public final f()Lcom/android/tools/r8/graph/H3$a;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/graph/I3;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/I3;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/H3$a;

    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/H3$a;-><init>(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method
