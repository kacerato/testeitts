.class public final synthetic Lcom/android/tools/r8/synthesis/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/android/tools/r8/internal/Zd;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/internal/Zd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/synthesis/p1;->b:Z

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/p1;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/p1;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/p1;->e:Lcom/android/tools/r8/internal/Zd;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/tools/r8/synthesis/p1;->b:Z

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/p1;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/p1;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/p1;->e:Lcom/android/tools/r8/internal/Zd;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/synthesis/t;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/synthesis/t;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/z;->a(ZLcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/synthesis/t;Lcom/android/tools/r8/synthesis/t;)I

    move-result p1

    return p1
.end method
