.class public final synthetic Lcom/android/tools/r8/shaking/g9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/android/tools/r8/shaking/X1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/X1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/g9;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/g9;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/g9;->d:Lcom/android/tools/r8/graph/H5;

    iput-boolean p4, p0, Lcom/android/tools/r8/shaking/g9;->e:Z

    iput-object p5, p0, Lcom/android/tools/r8/shaking/g9;->f:Lcom/android/tools/r8/shaking/X1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/g9;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/g9;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/g9;->d:Lcom/android/tools/r8/graph/H5;

    iget-boolean v3, p0, Lcom/android/tools/r8/shaking/g9;->e:Z

    iget-object v4, p0, Lcom/android/tools/r8/shaking/g9;->f:Lcom/android/tools/r8/shaking/X1;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/Z4;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method
