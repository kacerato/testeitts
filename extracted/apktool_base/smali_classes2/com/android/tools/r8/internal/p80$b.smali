.class public Lcom/android/tools/r8/internal/p80$b;
.super Lcom/android/tools/r8/internal/p80$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/p80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public f:Lcom/android/tools/r8/internal/ZU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/p80$a;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-static {}, Lcom/android/tools/r8/internal/ZU;->a()Lcom/android/tools/r8/internal/ZU;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/p80$b;->f:Lcom/android/tools/r8/internal/ZU;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/ZU;)Lcom/android/tools/r8/internal/p80$b;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/p80$b;->f:Lcom/android/tools/r8/internal/ZU;

    return-object p0
.end method

.method public final build()Lcom/android/tools/r8/internal/p80;
    .locals 8

    .line 2
    new-instance v7, Lcom/android/tools/r8/internal/p80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/p80$a;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/p80$a;->b:Ljava/util/function/Consumer;

    iget-object v3, p0, Lcom/android/tools/r8/internal/p80$a;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/p80$a;->d:Z

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/p80$a;->e:Z

    iget-object v6, p0, Lcom/android/tools/r8/internal/p80$b;->f:Lcom/android/tools/r8/internal/ZU;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/p80;-><init>(Lcom/android/tools/r8/retrace/ProguardMapProducer;Ljava/util/function/Consumer;Lcom/android/tools/r8/DiagnosticsHandler;ZZLcom/android/tools/r8/internal/ZU;)V

    return-object v7
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/retrace/ProguardMapPartitioner;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/p80$b;->build()Lcom/android/tools/r8/internal/p80;

    move-result-object v0

    return-object v0
.end method
