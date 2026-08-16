.class public final synthetic Lcom/android/tools/r8/naming/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/D0;

.field public final synthetic b:Lcom/android/tools/r8/graph/M2;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/D0;Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/l1;->a:Lcom/android/tools/r8/naming/D0;

    iput-object p2, p0, Lcom/android/tools/r8/naming/l1;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/naming/l1;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/l1;->a:Lcom/android/tools/r8/naming/D0;

    iget-object v1, p0, Lcom/android/tools/r8/naming/l1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/naming/l1;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/naming/V;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;Lcom/android/tools/r8/naming/V;)V

    return-void
.end method
