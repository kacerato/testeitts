.class public final synthetic Lcom/android/tools/r8/internal/ux1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/n6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/n6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ux1;->b:Lcom/android/tools/r8/internal/n6;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ux1;->b:Lcom/android/tools/r8/internal/n6;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
