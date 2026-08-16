.class public final synthetic Lcom/android/tools/r8/shaking/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/U0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/jb;->a:Lcom/android/tools/r8/shaking/U0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/jb;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/jb;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/jb;->d:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/jb;->a:Lcom/android/tools/r8/shaking/U0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/jb;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/jb;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/jb;->d:Lcom/android/tools/r8/internal/ns0;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/fv;

    move-object v5, p2

    check-cast v5, Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/fv;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method
