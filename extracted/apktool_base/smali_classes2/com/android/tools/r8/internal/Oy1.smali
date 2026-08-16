.class public final synthetic Lcom/android/tools/r8/internal/Oy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oy1;->b:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oy1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy1;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oy1;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Predicate;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
