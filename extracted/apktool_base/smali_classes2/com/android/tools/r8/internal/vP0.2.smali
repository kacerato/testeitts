.class public final synthetic Lcom/android/tools/r8/internal/vP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/OA;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/OA;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vP0;->a:Lcom/android/tools/r8/internal/OA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vP0;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/vP0;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/vP0;->d:Z

    iput-object p5, p0, Lcom/android/tools/r8/internal/vP0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/vP0;->a:Lcom/android/tools/r8/internal/OA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vP0;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vP0;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/vP0;->d:Z

    iget-object v4, p0, Lcom/android/tools/r8/internal/vP0;->e:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/internal/V2;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/internal/IA;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/OA;->a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;Lcom/android/tools/r8/internal/V2;Lcom/android/tools/r8/internal/IA;)V

    return-void
.end method
