.class public final synthetic Lcom/android/tools/r8/shaking/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b2;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Lcom/android/tools/r8/shaking/x;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/ca;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/ca;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/ca;->d:Lcom/android/tools/r8/graph/H5;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/ca;->e:Lcom/android/tools/r8/shaking/x;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/ca;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/ca;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/ca;->d:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/ca;->e:Lcom/android/tools/r8/shaking/x;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    return-void
.end method
