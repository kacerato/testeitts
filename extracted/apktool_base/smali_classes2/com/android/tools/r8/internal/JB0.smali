.class public final synthetic Lcom/android/tools/r8/internal/JB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/CU;

.field public final synthetic b:Lcom/android/tools/r8/internal/kC;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/CU;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JB0;->a:Lcom/android/tools/r8/internal/CU;

    iput-object p2, p0, Lcom/android/tools/r8/internal/JB0;->b:Lcom/android/tools/r8/internal/kC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/JB0;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p4, p0, Lcom/android/tools/r8/internal/JB0;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/tools/r8/internal/JB0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/JB0;->a:Lcom/android/tools/r8/internal/CU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JB0;->b:Lcom/android/tools/r8/internal/kC;

    iget-object v2, p0, Lcom/android/tools/r8/internal/JB0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/JB0;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/internal/JB0;->e:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/internal/ui;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/CU;->a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ui;)V

    return-void
.end method
