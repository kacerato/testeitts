.class public final Lcom/android/tools/r8/internal/J40;
.super Lcom/android/tools/r8/internal/K40;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/J40;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/K40;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/J40;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    return-object p1
.end method
