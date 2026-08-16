.class public final synthetic Lcom/android/tools/r8/internal/jA0;
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/jA0;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jA0;->b:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/B3;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    return p1
.end method
