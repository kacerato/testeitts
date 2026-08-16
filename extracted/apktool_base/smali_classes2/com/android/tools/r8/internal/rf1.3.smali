.class public final synthetic Lcom/android/tools/r8/internal/rf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/AA;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/android/tools/r8/internal/x1;

.field public final synthetic f:Lcom/android/tools/r8/internal/wA;

.field public final synthetic g:Lcom/android/tools/r8/internal/m80;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rf1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rf1;->c:Lcom/android/tools/r8/internal/AA;

    iput-object p3, p0, Lcom/android/tools/r8/internal/rf1;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/rf1;->e:Lcom/android/tools/r8/internal/x1;

    iput-object p5, p0, Lcom/android/tools/r8/internal/rf1;->f:Lcom/android/tools/r8/internal/wA;

    iput-object p6, p0, Lcom/android/tools/r8/internal/rf1;->g:Lcom/android/tools/r8/internal/m80;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/rf1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rf1;->c:Lcom/android/tools/r8/internal/AA;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf1;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/rf1;->e:Lcom/android/tools/r8/internal/x1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/rf1;->f:Lcom/android/tools/r8/internal/wA;

    iget-object v5, p0, Lcom/android/tools/r8/internal/rf1;->g:Lcom/android/tools/r8/internal/m80;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/jE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
