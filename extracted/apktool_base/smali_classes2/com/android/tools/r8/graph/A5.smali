.class public Lcom/android/tools/r8/graph/A5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/A5;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/A5;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A5;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/A5;->b:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/m6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/m6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/A5;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/l6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/l6;-><init>()V

    return-object v0
.end method
