.class public final synthetic Lcom/android/tools/r8/synthesis/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/H2;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/L;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/android/tools/r8/synthesis/c;

.field public final synthetic f:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/L;Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/H0;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/H0;->c:Lcom/android/tools/r8/synthesis/L;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/H0;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/H0;->e:Lcom/android/tools/r8/synthesis/c;

    iput-object p5, p0, Lcom/android/tools/r8/synthesis/H0;->f:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/H0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/H0;->c:Lcom/android/tools/r8/synthesis/L;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/H0;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/H0;->e:Lcom/android/tools/r8/synthesis/c;

    iget-object v4, p0, Lcom/android/tools/r8/synthesis/H0;->f:Lcom/android/tools/r8/graph/y;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/L;Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p1

    return-object p1
.end method
