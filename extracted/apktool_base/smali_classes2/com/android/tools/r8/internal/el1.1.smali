.class public final synthetic Lcom/android/tools/r8/internal/el1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-static {p1}, Lcom/android/tools/r8/internal/md;->b(Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    return p1
.end method
