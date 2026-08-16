.class public final synthetic Lcom/android/tools/r8/shaking/uf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/uf;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/uf;->b:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/tools/r8/shaking/R3;

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/R3;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
