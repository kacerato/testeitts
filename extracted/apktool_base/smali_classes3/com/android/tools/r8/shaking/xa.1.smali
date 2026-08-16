.class public final synthetic Lcom/android/tools/r8/shaking/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/L3;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/xa;->b:Lcom/android/tools/r8/shaking/L3;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/xa;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/xa;->b:Lcom/android/tools/r8/shaking/L3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/xa;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/shaking/L3;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;Lcom/android/tools/r8/shaking/L3;)Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    move-result-object p1

    return-object p1
.end method
