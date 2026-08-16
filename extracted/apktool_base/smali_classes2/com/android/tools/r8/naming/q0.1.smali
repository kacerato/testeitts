.class public abstract Lcom/android/tools/r8/naming/q0;
.super Lcom/android/tools/r8/naming/r0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/r0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/q0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->y0()I

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/naming/q0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/L2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/naming/q0;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method
