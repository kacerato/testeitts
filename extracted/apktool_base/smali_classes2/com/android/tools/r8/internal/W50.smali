.class public final Lcom/android/tools/r8/internal/W50;
.super Lcom/android/tools/r8/internal/X50;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/X50;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/shaking/N;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/J2;

    .line 3
    iget-object p2, p2, Lcom/android/tools/r8/shaking/N;->x:Ljava/util/Set;

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
