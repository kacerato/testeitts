.class public final synthetic Lcom/android/tools/r8/shaking/Z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/rr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;

.field public final synthetic b:Lcom/android/tools/r8/internal/iR;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/iR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z6;->a:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Z6;->b:Lcom/android/tools/r8/internal/iR;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z6;->a:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Z6;->b:Lcom/android/tools/r8/internal/iR;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
