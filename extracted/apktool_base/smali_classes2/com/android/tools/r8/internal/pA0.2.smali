.class public final synthetic Lcom/android/tools/r8/internal/pA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/H5;

.field public final synthetic b:Lcom/android/tools/r8/internal/nI;

.field public final synthetic c:Lcom/android/tools/r8/graph/proto/c$a;

.field public final synthetic d:Lcom/android/tools/r8/internal/SG;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/graph/proto/c$a;Lcom/android/tools/r8/internal/SG;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pA0;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pA0;->b:Lcom/android/tools/r8/internal/nI;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pA0;->c:Lcom/android/tools/r8/graph/proto/c$a;

    iput-object p4, p0, Lcom/android/tools/r8/internal/pA0;->d:Lcom/android/tools/r8/internal/SG;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/pA0;->a:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pA0;->b:Lcom/android/tools/r8/internal/nI;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pA0;->c:Lcom/android/tools/r8/graph/proto/c$a;

    iget-object v3, p0, Lcom/android/tools/r8/internal/pA0;->d:Lcom/android/tools/r8/internal/SG;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/graph/proto/c$a;Lcom/android/tools/r8/internal/SG;ILcom/android/tools/r8/graph/M2;)V

    return-void
.end method
