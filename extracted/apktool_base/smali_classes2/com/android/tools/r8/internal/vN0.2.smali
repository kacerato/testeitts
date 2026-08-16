.class public final synthetic Lcom/android/tools/r8/internal/vN0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bI;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/internal/TH;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Lcom/android/tools/r8/internal/TH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vN0;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vN0;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/vN0;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/vN0;->d:Lcom/android/tools/r8/internal/TH;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/vN0;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vN0;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vN0;->c:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/vN0;->d:Lcom/android/tools/r8/internal/TH;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/N8;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Lcom/android/tools/r8/internal/TH;ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
