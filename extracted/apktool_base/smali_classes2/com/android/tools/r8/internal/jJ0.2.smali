.class public final synthetic Lcom/android/tools/r8/internal/jJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/J70;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Lcom/android/tools/r8/internal/Yx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/J70;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jJ0;->b:Lcom/android/tools/r8/internal/J70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jJ0;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/jJ0;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/jJ0;->e:Lcom/android/tools/r8/internal/Yx0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/jJ0;->b:Lcom/android/tools/r8/internal/J70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jJ0;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/jJ0;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/jJ0;->e:Lcom/android/tools/r8/internal/Yx0;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/J70;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
