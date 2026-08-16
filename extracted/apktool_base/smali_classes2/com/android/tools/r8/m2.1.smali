.class public final synthetic Lcom/android/tools/r8/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;

.field public final synthetic d:Lcom/android/tools/r8/androidapi/a;

.field public final synthetic e:Lcom/android/tools/r8/graph/y;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Lcom/android/tools/r8/graph/a6;

.field public final synthetic h:Lcom/android/tools/r8/internal/a3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/androidapi/a;Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/m2;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/m2;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/m2;->d:Lcom/android/tools/r8/androidapi/a;

    iput-object p4, p0, Lcom/android/tools/r8/m2;->e:Lcom/android/tools/r8/graph/y;

    iput-object p5, p0, Lcom/android/tools/r8/m2;->f:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/tools/r8/m2;->g:Lcom/android/tools/r8/graph/a6;

    iput-object p7, p0, Lcom/android/tools/r8/m2;->h:Lcom/android/tools/r8/internal/a3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/m2;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/m2;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/m2;->d:Lcom/android/tools/r8/androidapi/a;

    iget-object v3, p0, Lcom/android/tools/r8/m2;->e:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/m2;->f:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/m2;->g:Lcom/android/tools/r8/graph/a6;

    iget-object v6, p0, Lcom/android/tools/r8/m2;->h:Lcom/android/tools/r8/internal/a3;

    move-object v7, p1

    check-cast v7, Lcom/android/tools/r8/graph/u2;

    invoke-static/range {v0 .. v7}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->c(Ljava/util/Set;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/androidapi/a;Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;Lcom/android/tools/r8/graph/u2;)V

    return-void
.end method
