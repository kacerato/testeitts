.class public final synthetic Lcom/android/tools/r8/internal/XY0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/VU;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/tools/r8/internal/IH;

.field public final synthetic d:Lcom/android/tools/r8/internal/F60;

.field public final synthetic e:Lcom/android/tools/r8/internal/YE;

.field public final synthetic f:Ljava/util/function/Function;

.field public final synthetic g:Lcom/android/tools/r8/naming/V$b;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/VU;ZLcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/F60;Lcom/android/tools/r8/internal/YE;Ljava/util/function/Function;Lcom/android/tools/r8/naming/V$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XY0;->a:Lcom/android/tools/r8/internal/VU;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/XY0;->b:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/XY0;->c:Lcom/android/tools/r8/internal/IH;

    iput-object p4, p0, Lcom/android/tools/r8/internal/XY0;->d:Lcom/android/tools/r8/internal/F60;

    iput-object p5, p0, Lcom/android/tools/r8/internal/XY0;->e:Lcom/android/tools/r8/internal/YE;

    iput-object p6, p0, Lcom/android/tools/r8/internal/XY0;->f:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/android/tools/r8/internal/XY0;->g:Lcom/android/tools/r8/naming/V$b;

    iput-boolean p8, p0, Lcom/android/tools/r8/internal/XY0;->h:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/internal/XY0;->a:Lcom/android/tools/r8/internal/VU;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/XY0;->b:Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/XY0;->c:Lcom/android/tools/r8/internal/IH;

    iget-object v3, p0, Lcom/android/tools/r8/internal/XY0;->d:Lcom/android/tools/r8/internal/F60;

    iget-object v4, p0, Lcom/android/tools/r8/internal/XY0;->e:Lcom/android/tools/r8/internal/YE;

    iget-object v5, p0, Lcom/android/tools/r8/internal/XY0;->f:Ljava/util/function/Function;

    iget-object v6, p0, Lcom/android/tools/r8/internal/XY0;->g:Lcom/android/tools/r8/naming/V$b;

    iget-boolean v7, p0, Lcom/android/tools/r8/internal/XY0;->h:Z

    move-object v8, p1

    check-cast v8, Ljava/lang/Integer;

    move-object v9, p2

    check-cast v9, Lcom/android/tools/r8/internal/B60;

    invoke-virtual/range {v0 .. v9}, Lcom/android/tools/r8/internal/VU;->a(ZLcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/F60;Lcom/android/tools/r8/internal/YE;Ljava/util/function/Function;Lcom/android/tools/r8/naming/V$b;ZLjava/lang/Integer;Lcom/android/tools/r8/internal/B60;)V

    return-void
.end method
