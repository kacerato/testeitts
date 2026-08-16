.class public final synthetic Lcom/android/tools/r8/synthesis/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ff0;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/k1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/k1;->a:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/synthesis/t;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method
