.class public final Lcom/android/tools/r8/internal/O20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/P20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/P20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/O20;->b:Lcom/android/tools/r8/internal/P20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    check-cast p2, Lcom/android/tools/r8/internal/N20;

    iget-object v0, p0, Lcom/android/tools/r8/internal/O20;->b:Lcom/android/tools/r8/internal/P20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/P20;->c:Lcom/android/tools/r8/internal/f30;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
