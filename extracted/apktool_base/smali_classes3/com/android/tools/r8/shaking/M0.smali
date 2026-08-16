.class public final Lcom/android/tools/r8/shaking/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/M0;->a:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/N0;
    .locals 0

    new-instance p0, Lcom/android/tools/r8/shaking/N0;

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/N0;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/N0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/M0;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/W6;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/W6;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/N0;

    return-object p1
.end method
