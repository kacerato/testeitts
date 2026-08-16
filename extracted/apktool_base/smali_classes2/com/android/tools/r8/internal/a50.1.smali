.class public final Lcom/android/tools/r8/internal/a50;
.super Lcom/android/tools/r8/internal/e50;
.source "SourceFile"


# instance fields
.field public final p:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/e50;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/a50;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(IILcom/android/tools/r8/internal/W40;)V
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/internal/a50;->p:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
