.class public abstract Lcom/android/tools/r8/internal/SS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# static fields
.field public static final c:[Lcom/android/tools/r8/internal/SS;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/internal/SS;

    sput-object v0, Lcom/android/tools/r8/internal/SS;->c:[Lcom/android/tools/r8/internal/SS;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/SS;->b:I

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public abstract a()I
.end method

.method public final a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/SS;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/SS;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/SS;->a()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/SS;->a(Lcom/android/tools/r8/internal/SS;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/SS;Lcom/android/tools/r8/internal/pf;)I
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/B60;
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/SS;->a()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 6
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/SS;->b(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public abstract b(Lcom/android/tools/r8/internal/rA;)V
.end method

.method public abstract b()Z
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
