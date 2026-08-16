.class public final Lcom/android/tools/r8/internal/BM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/BN;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/AbstractCollection;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/BN;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BM;->a:Lcom/android/tools/r8/internal/BN;

    iput-object p2, p0, Lcom/android/tools/r8/internal/BM;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/BM;->c:Ljava/util/ArrayList;

    check-cast p4, Ljava/util/AbstractCollection;

    iput-object p4, p0, Lcom/android/tools/r8/internal/BM;->d:Ljava/util/AbstractCollection;

    return-void
.end method
