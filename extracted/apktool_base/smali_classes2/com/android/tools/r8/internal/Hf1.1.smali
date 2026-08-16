.class public final synthetic Lcom/android/tools/r8/internal/Hf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/android/tools/r8/internal/IA$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/android/tools/r8/internal/IA$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hf1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hf1;->b:Lcom/android/tools/r8/internal/IA$a;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Hf1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Hf1;->d:Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hf1;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Hf1;->b:Lcom/android/tools/r8/internal/IA$a;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hf1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Hf1;->d:Lcom/android/tools/r8/internal/IA$a;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/jY;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
