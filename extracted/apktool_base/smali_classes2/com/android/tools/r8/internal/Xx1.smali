.class public final synthetic Lcom/android/tools/r8/internal/Xx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/EB;

.field public final synthetic b:Lcom/android/tools/r8/internal/W5;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xx1;->a:Lcom/android/tools/r8/internal/EB;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xx1;->b:Lcom/android/tools/r8/internal/W5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Xx1;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Xx1;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xx1;->a:Lcom/android/tools/r8/internal/EB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xx1;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xx1;->c:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Xx1;->d:Ljava/util/Set;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/Yx0;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/wn0;->a(Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Yx0;)V

    return-void
.end method
