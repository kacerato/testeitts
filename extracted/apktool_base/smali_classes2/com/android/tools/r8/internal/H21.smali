.class public final synthetic Lcom/android/tools/r8/internal/H21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ht0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Xv;

.field public final synthetic b:Lcom/android/tools/r8/internal/UD;

.field public final synthetic c:Lcom/android/tools/r8/internal/QJ;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/H21;->a:Lcom/android/tools/r8/internal/Xv;

    iput-object p2, p0, Lcom/android/tools/r8/internal/H21;->b:Lcom/android/tools/r8/internal/UD;

    iput-object p3, p0, Lcom/android/tools/r8/internal/H21;->c:Lcom/android/tools/r8/internal/QJ;

    iput-object p4, p0, Lcom/android/tools/r8/internal/H21;->d:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/H21;->a:Lcom/android/tools/r8/internal/Xv;

    iget-object v1, p0, Lcom/android/tools/r8/internal/H21;->b:Lcom/android/tools/r8/internal/UD;

    iget-object v2, p0, Lcom/android/tools/r8/internal/H21;->c:Lcom/android/tools/r8/internal/QJ;

    iget-object v3, p0, Lcom/android/tools/r8/internal/H21;->d:Lcom/android/tools/r8/graph/H5;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/F5;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/F1;

    move-object v6, p3

    check-cast v6, Ljava/util/Map$Entry;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/F1;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
