.class public final synthetic Lcom/android/tools/r8/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/utils/i;

.field public final synthetic b:Lcom/android/tools/r8/StringConsumer;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/tools/r8/internal/ll0;

.field public final synthetic e:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/P1;->a:Lcom/android/tools/r8/utils/i;

    iput-object p2, p0, Lcom/android/tools/r8/P1;->b:Lcom/android/tools/r8/StringConsumer;

    iput-boolean p3, p0, Lcom/android/tools/r8/P1;->c:Z

    iput-object p4, p0, Lcom/android/tools/r8/P1;->d:Lcom/android/tools/r8/internal/ll0;

    iput-object p5, p0, Lcom/android/tools/r8/P1;->e:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/P1;->a:Lcom/android/tools/r8/utils/i;

    iget-object v1, p0, Lcom/android/tools/r8/P1;->b:Lcom/android/tools/r8/StringConsumer;

    iget-boolean v2, p0, Lcom/android/tools/r8/P1;->c:Z

    iget-object v3, p0, Lcom/android/tools/r8/P1;->d:Lcom/android/tools/r8/internal/ll0;

    iget-object v4, p0, Lcom/android/tools/r8/P1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/ExtractR8Rules;->c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/internal/ll0;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method
