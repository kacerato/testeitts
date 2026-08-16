.class public final synthetic Lcom/android/tools/r8/naming/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/L2;

.field public final synthetic d:Lcom/android/tools/r8/graph/L2;

.field public final synthetic e:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/w2;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/naming/w2;->c:Lcom/android/tools/r8/graph/L2;

    iput-object p3, p0, Lcom/android/tools/r8/naming/w2;->d:Lcom/android/tools/r8/graph/L2;

    iput-object p4, p0, Lcom/android/tools/r8/naming/w2;->e:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/w2;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/naming/w2;->c:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p0, Lcom/android/tools/r8/naming/w2;->d:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p0, Lcom/android/tools/r8/naming/w2;->e:Lcom/android/tools/r8/graph/u1;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/naming/V0;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
