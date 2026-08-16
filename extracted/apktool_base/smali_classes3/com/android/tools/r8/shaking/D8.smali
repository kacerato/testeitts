.class public final synthetic Lcom/android/tools/r8/shaking/D8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/internal/m80;

.field public final synthetic d:Lcom/android/tools/r8/shaking/b1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/shaking/b1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/D8;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/D8;->c:Lcom/android/tools/r8/internal/m80;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/D8;->d:Lcom/android/tools/r8/shaking/b1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/D8;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/D8;->c:Lcom/android/tools/r8/internal/m80;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/D8;->d:Lcom/android/tools/r8/shaking/b1;

    check-cast p1, Lcom/android/tools/r8/graph/Z4;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method
