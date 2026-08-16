.class public final synthetic Lcom/android/tools/r8/synthesis/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/z;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/android/tools/r8/synthesis/v;

.field public final synthetic e:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/t1;->a:Lcom/android/tools/r8/synthesis/z;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/t1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/t1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/t1;->d:Lcom/android/tools/r8/synthesis/v;

    iput-object p5, p0, Lcom/android/tools/r8/synthesis/t1;->e:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/t1;->a:Lcom/android/tools/r8/synthesis/z;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/t1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/t1;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/t1;->d:Lcom/android/tools/r8/synthesis/v;

    iget-object v4, p0, Lcom/android/tools/r8/synthesis/t1;->e:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/z;->b(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/internal/ns0;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
