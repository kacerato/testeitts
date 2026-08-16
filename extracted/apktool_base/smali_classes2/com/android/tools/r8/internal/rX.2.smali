.class public final Lcom/android/tools/r8/internal/rX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/rX;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/rX;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/rX;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/tools/r8/internal/rX;->b:Lcom/android/tools/r8/internal/rX;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rX;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/TW;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/rX;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/TW;

    return-object p1
.end method
