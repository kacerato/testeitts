.class public final synthetic Lcom/android/tools/r8/shaking/uc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/h;

.field public final synthetic c:Lcom/android/tools/r8/shaking/l1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/h;Lcom/android/tools/r8/shaking/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/uc;->b:Lcom/android/tools/r8/shaking/h;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/uc;->c:Lcom/android/tools/r8/shaking/l1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/uc;->b:Lcom/android/tools/r8/shaking/h;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/uc;->c:Lcom/android/tools/r8/shaking/l1;

    check-cast p1, Lcom/android/tools/r8/graph/i3;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/shaking/l1;Lcom/android/tools/r8/graph/i3;)Z

    move-result p1

    return p1
.end method
