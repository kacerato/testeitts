.class public final synthetic Lcom/android/tools/r8/internal/xU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xU0;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xU0;->b:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Qu;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/H5;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method
