.class public final synthetic Lcom/android/tools/r8/shaking/G9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/G9;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/G9;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/G9;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/G9;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/D4;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/D4;)V

    return-void
.end method
