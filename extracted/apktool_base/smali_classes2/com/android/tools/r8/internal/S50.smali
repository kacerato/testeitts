.class public final Lcom/android/tools/r8/internal/S50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/Sw;

.field public final d:Lcom/android/tools/r8/internal/bX;

.field public e:Lcom/android/tools/r8/internal/Yi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/S50;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/S50;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/S50;->c:Lcom/android/tools/r8/internal/Sw;

    iput-object p4, p0, Lcom/android/tools/r8/internal/S50;->d:Lcom/android/tools/r8/internal/bX;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/S50;->e:Lcom/android/tools/r8/internal/Yi$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/N50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/S50;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/S50;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lcom/android/tools/r8/internal/S50;->c:Lcom/android/tools/r8/internal/Sw;

    iget-object v4, p0, Lcom/android/tools/r8/internal/S50;->d:Lcom/android/tools/r8/internal/bX;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/N50;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/S50;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CJ;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Yi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yi;->a()Lcom/android/tools/r8/internal/Yi$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/S50;->e:Lcom/android/tools/r8/internal/Yi$a;

    sget-boolean v1, Lcom/android/tools/r8/internal/S50;->f:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/S50;->e:Lcom/android/tools/r8/internal/Yi$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yi$a;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/O50;

    return-object p1
.end method
