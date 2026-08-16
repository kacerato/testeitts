.class public final synthetic Lcom/android/tools/r8/shaking/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/H4;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/shaking/R3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/H4;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/R3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/i6;->b:Lcom/android/tools/r8/shaking/H4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/i6;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/i6;->d:Lcom/android/tools/r8/shaking/R3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/i6;->b:Lcom/android/tools/r8/shaking/H4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/i6;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/i6;->d:Lcom/android/tools/r8/shaking/R3;

    check-cast p1, Lcom/android/tools/r8/shaking/I4;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/H4;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/shaking/I4;)V

    return-void
.end method
