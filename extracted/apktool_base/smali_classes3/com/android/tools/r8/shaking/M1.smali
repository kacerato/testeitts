.class public final Lcom/android/tools/r8/shaking/M1;
.super Lcom/android/tools/r8/shaking/K1;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/tools/r8/shaking/K1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    sget-boolean v0, Lcom/android/tools/r8/shaking/M1;->b:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Dz$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Dz$a;->i:Lcom/android/tools/r8/internal/Dz$a;

    return-object v0
.end method
