.class public final Lcom/android/tools/r8/internal/JY;
.super Lcom/android/tools/r8/internal/Ps0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ps0;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v0, Lcom/android/tools/r8/internal/IY;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/IY;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method
