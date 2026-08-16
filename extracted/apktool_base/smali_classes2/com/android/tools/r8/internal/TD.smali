.class public final Lcom/android/tools/r8/internal/TD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/tools/r8/internal/lK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lK0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)Lcom/android/tools/r8/internal/TD;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/TD;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/SD;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method
