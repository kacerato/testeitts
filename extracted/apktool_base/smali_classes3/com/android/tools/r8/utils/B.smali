.class public final synthetic Lcom/android/tools/r8/utils/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qv;

.field public final synthetic c:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic d:Lcom/android/tools/r8/internal/Zd;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Zd;Ljava/util/Map;Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/B;->b:Lcom/android/tools/r8/internal/Qv;

    iput-object p2, p0, Lcom/android/tools/r8/utils/B;->c:Lcom/android/tools/r8/internal/nJ;

    iput-object p3, p0, Lcom/android/tools/r8/utils/B;->d:Lcom/android/tools/r8/internal/Zd;

    iput-object p4, p0, Lcom/android/tools/r8/utils/B;->e:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/utils/B;->f:Ljava/util/zip/ZipOutputStream;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/utils/B;->b:Lcom/android/tools/r8/internal/Qv;

    iget-object v1, p0, Lcom/android/tools/r8/utils/B;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/utils/B;->d:Lcom/android/tools/r8/internal/Zd;

    iget-object v3, p0, Lcom/android/tools/r8/utils/B;->e:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/tools/r8/utils/B;->f:Ljava/util/zip/ZipOutputStream;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Zd;Ljava/util/Map;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Ljava/util/zip/ZipOutputStream;

    move-result-object p1

    return-object p1
.end method
