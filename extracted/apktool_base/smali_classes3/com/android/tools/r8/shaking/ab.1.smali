.class public final synthetic Lcom/android/tools/r8/shaking/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/T;

.field public final synthetic c:Lcom/android/tools/r8/shaking/L0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/T;Lcom/android/tools/r8/shaking/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/ab;->b:Lcom/android/tools/r8/shaking/T;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/ab;->c:Lcom/android/tools/r8/shaking/L0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/ab;->b:Lcom/android/tools/r8/shaking/T;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/ab;->c:Lcom/android/tools/r8/shaking/L0;

    check-cast p1, Lcom/android/tools/r8/graph/F5;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/T;->a(Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/graph/F5;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method
