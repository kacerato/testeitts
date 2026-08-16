.class public final synthetic Lcom/android/tools/r8/graph/proto/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic d:Lcom/android/tools/r8/graph/proto/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/proto/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/l;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/proto/l;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/graph/proto/l;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/graph/proto/l;->d:Lcom/android/tools/r8/graph/proto/c$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/l;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/l;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/l;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/graph/proto/l;->d:Lcom/android/tools/r8/graph/proto/c$a;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/graph/proto/b;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/proto/c$a;ILcom/android/tools/r8/graph/proto/b;)V

    return-void
.end method
