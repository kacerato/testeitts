.class public final synthetic Lcom/android/tools/r8/internal/Ky0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ky0;->b:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ky0;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ky0;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ky0;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/function/Predicate;Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method
