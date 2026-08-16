.class public final synthetic Lcom/android/tools/r8/synthesis/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/c;

.field public final synthetic d:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/y0;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/y0;->c:Lcom/android/tools/r8/synthesis/c;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/y0;->d:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/y0;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/y0;->c:Lcom/android/tools/r8/synthesis/c;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/y0;->d:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/J;->b(Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
