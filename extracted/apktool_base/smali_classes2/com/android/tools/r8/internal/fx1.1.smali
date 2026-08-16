.class public final synthetic Lcom/android/tools/r8/internal/fx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/vn0;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/vn0;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fx1;->b:Lcom/android/tools/r8/internal/vn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fx1;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fx1;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/fx1;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/fx1;->b:Lcom/android/tools/r8/internal/vn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fx1;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fx1;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/fx1;->e:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/internal/un0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/vn0;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/un0;)Z

    move-result p1

    return p1
.end method
